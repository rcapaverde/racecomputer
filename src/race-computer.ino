#include <openGLCD.h>

#include "race-computer.h"


#define LED     13
#define FALSE   0
#define TRUE    1

GpsSample gLastSample = {0};

float gLapRun = 0;

Lap gThisLap = {0};
Lap gPrevLap = {0};
Lap gBestLap = {0};

LapSteps lapSteps1 = {0};
LapSteps lapSteps2 = {0};

unsigned long gRaceStart = 0;
float gDeltaSpeed;
float gDeltaTime;


// VP1000
//Segment gStartLine = {{-29.821489, -51.323410}, {-29.821503, -51.323604}};

// Interlagos
Segment gStartLine = {{-29.883354, -50.243475}, {-29.883296, -50.243426}};

// raio médio da Terra
double R = 6378137;

float geodistance2(Coordinate *from, Coordinate *to)
{
    double lat1 = deg2rad(from->latitude);
    double lng1 = deg2rad(from->longitude);
    double lat2 = deg2rad(to->latitude);
    double lng2 = deg2rad(to->longitude);

    double x = (lng2 - lng1) * cos((lat1 + lat2) / 2);
    double y = lat2 - lat1;
    return sqrt(x * x + y * y) * R;
}

double deg2rad(double deg)
{
    return deg / (180 / PI);
}

// Given three colinear points p, q, r, the function checks if
// point q lies on line segment 'pr'
char onSegment(Coordinate p, Coordinate q, Coordinate r)
{
    if (q.longitude <= max(p.longitude, r.longitude) && q.longitude >= min(p.longitude, r.longitude) &&
            q.latitude <= max(p.latitude, r.latitude) && q.latitude >= min(p.latitude, r.latitude))
        return true;

    return false;
}

// To find orientation of ordered triplet (p, q, r).
// The function returns following values
// 0 --> p, q and r are colinear
// 1 --> Clockwise
// -1 --> Counterclockwise
int orientation(Coordinate p, Coordinate q, Coordinate r)
{
    // See https://www.geeksforgeeks.org/orientation-3-ordered-points/
    // for details of below formula.
    int val = (q.latitude - p.latitude) * (r.longitude - q.longitude) -
              (q.longitude - p.longitude) * (r.latitude - q.latitude);
    return val == 0 ? 0 : val < 0 ? -1 : 1;
}

// The main function that returns true if line segment 'p1q1'
// and 'p2q2' intersect.
bool doIntersect(Segment s1, Segment s2)
{
    // Find the four orientations needed for general and
    // special cases
    int o1 = orientation(s1.p, s1.q, s2.p);
    int o2 = orientation(s1.p, s1.q, s2.q);
    int o3 = orientation(s2.p, s2.q, s1.p);
    int o4 = orientation(s2.p, s2.q, s1.q);

    // General case
    if (o1 != o2 && o3 != o4)
        return true;

    // Special Cases
    // p1, q1 and p2 are colinear and p2 lies on segment p1q1
    if (o1 == 0 && onSegment(s1.p, s2.p, s1.q))
        return true;

    // p1, q1 and q2 are colinear and q2 lies on segment p1q1
    if (o2 == 0 && onSegment(s1.p, s2.q, s1.q))
        return true;

    // p2, q2 and p1 are colinear and p1 lies on segment p2q2
    if (o3 == 0 && onSegment(s2.p, s1.p, s2.q))
        return true;

    // p2, q2 and q1 are colinear and q1 lies on segment p2q2
    if (o4 == 0 && onSegment(s2.p, s1.q, s2.q))
        return true;

    return false; // Doesn't fall in any of the above cases
}

void coordinateFromHeading(Coordinate *start, float distance, float bearing, Coordinate *destination)
{
    destination->latitude = asin(sin(start->latitude) * cos(distance / R) + cos(start->latitude) * sin(distance / R) * cos(bearing));
    destination->longitude = start->longitude + atan2(cos(distance / R) - sin(start->latitude) * sin(destination->latitude), sin(bearing) * sin(distance / R) * cos(start->latitude));
}


char sendBinaryMessage(char id, const char *body, char len)
{
    char buffer[128];
    int iBuffer = 0;
  
    buffer[iBuffer++] = 0xA0;
    buffer[iBuffer++] = 0xA1;
    buffer[iBuffer++] = 0;
    buffer[iBuffer++] = len + 1;
    buffer[iBuffer++] = id;

    if (len)
    {
        memcpy(&buffer[iBuffer], body, len);
        iBuffer += len;
    }

    buffer[iBuffer] = 0;
    for (int iChecksum = 4; iChecksum < iBuffer; iChecksum++)
        buffer[iBuffer] ^= buffer[iChecksum];

    iBuffer++;

    buffer[iBuffer++] = 0x0D;
    buffer[iBuffer++] = 0x0A;
  
    Serial1.write(buffer, iBuffer);

    unsigned int start = millis();
    while (TRUE)
    {
        char *buffer = recvGpsSentence();
        if (buffer != NULL)
        {
            if (buffer[0] == 0xA0 && buffer[4] == 0x83 && buffer[5] == id)
                return TRUE;
            else if (buffer[0] == 0xA0 && buffer[4] == 0x84 && buffer[5] == id)
                return FALSE;
        }

        if (millis() - start > 1500)
            return FALSE;
    }
}


void setup()
{
    Serial.begin(115200);

    // wait on USB serial port to get ready but timeout out after 10 seconds
    while (!Serial && millis() < 10000);

    // start the GLCD code
    GLCD.Init();
    GLCD.On();
    GLCD.ClearScreen();

    GLCD.FillRect(0, 40, 128, 2);

    const char *str = "RACE-COMPUTER v1.0";
    GLCD.SelectFont(Callibri10);
    int width = GLCD.StringWidth(str);
    GLCD.DrawString(str, 125 - width, 48);

    pinMode(LED, OUTPUT);
    digitalWrite(LED, HIGH);

    gThisLap.steps = &lapSteps1;
    gBestLap.steps = &lapSteps2;

    // configura o gps para operar em 115200 bps
    Serial1.begin(9600);
    sendBinaryMessage(0x05, "\x00\x05\x00", 3);
    Serial1.end();

    // reabre a serial, agora comunicando a 115200 bps
    Serial1.begin(115200);
    // habilita apenas as sentenças RMC
    sendBinaryMessage(0x08, "\x00\x00\x00\x00\x01\x00\x00\x00", 8);
    // configura a saida para NMEA
    sendBinaryMessage(0x09, "\x01", 1);
    // navigation mode is car
    sendBinaryMessage(0x3C, "\x00\x00", 2);
    // disable pinning mode
    sendBinaryMessage(0x39, "\x00", 1);
    // aumenta a taxa para 20 hz
    sendBinaryMessage(0x0E, "\x05\x00", 2);
}

int split(char *str, char chr)
{
    int count = 0;
    while (*str)
    {
        if (*str == chr)
        {
            *str = '\0';
            count++;
        }
        str++;
    }

    return count;
}

char parseRMCSentence(char *msg, GpsSample *rmc)
{
    int count = split(msg, ',');
    if (count < 7)
        return FALSE;

    char *decimal;
    char *element = msg;

    memset(rmc, 0, sizeof(GpsSample));

    for (int iElement = 0; iElement < count; iElement++)
    {
        switch (iElement)
        {
        case 2:
            // Status 'V' = Navigation receiver warning 'A' = Data Valid
            rmc->status = *element;
            break;

        case 3:
            // Latitude in dddmm.mmmm format
            decimal = strchr(element, '.');
            if (decimal && decimal - element >= 3 && decimal - element <= 5)
            {
                char temp[4];
                memset(temp, 0, sizeof(temp));
                strncpy(temp, element, decimal - element - 2);
                rmc->latitude = atoi(temp) + atof(element + 2) / 60;
            }
            break;

        case 4:
            // Latitude hemisphere indicator 'N' = North 'S' = South
            if (*element == 'S')
                rmc->latitude *= -1;
            break;

        case 5:
            // Longitude in dddmm.mmmm format
            decimal = strchr(element, '.');
            if (decimal && decimal - element >= 3 && decimal - element <= 5)
            {
                char temp[4];
                memset(temp, 0, sizeof(temp));
                strncpy(temp, element, decimal - element - 2);
                rmc->longitude = atoi(temp) + atof(element + 2) / 60;
            }
            break;

        case 6:
            // Longitude hemisphere indicator 'E' = East 'W' = West
            if (*element == 'W')
                rmc->longitude *= -1;
            break;

        case 7:
            // Speed over ground in knots
            rmc->speed = atof(element);
            break;

        case 8:
            // Track made good in degrees True
            rmc->heading = atof(element);
            break;
        }

        element += strlen(element) + 1;
    }

    return TRUE;
}

void processGpsMessage(GpsSample *sample)
{
    if (sample->status == 'A')
    {
        unsigned long now = millis();
        Coordinate thisCoordinate = {sample->latitude, sample->longitude};
    
        if (gLastSample.status ==  'A')
        {
            Segment thisSegment = {thisCoordinate, {gLastSample.latitude, gLastSample.longitude}};

            // fazendo debouncing, para evitar que a proximidade com a linha de partida provoque
            // vários inícios falsos de voltas em sequência
            // lógica aqui consiste em exigir um número mínimo de steps na volta atual
            if (doIntersect(thisSegment, gStartLine) && (gThisLap.number == 0 || gThisLap.steps->count > 20))
            {
//Serial.print("A:");
//Serial.print(gThisLap.number, DEC);
//Serial.print(" ");
//Serial.println(gThisLap.steps->count, DEC);

                if (gThisLap.number > 0)
                {
                    // captura o tempo de fechamento da volta
                    gThisLap.end = now;
                    // atualiza os dados volta anterior (que será este que encerrou)
                    memcpy(&gPrevLap, &gThisLap, sizeof(gPrevLap));
                    gPrevLap.steps = NULL;
                    gPrevLap.deltaBest = (gPrevLap.end - gPrevLap.start) - (gBestLap.end - gBestLap.start);

                    // a partir da segunda volta, começa a controlar a melhor volta
                    if (gThisLap.number > 1)
                    {
                        // se a volta que encerrou tiver um tempo melhor que a melhor anterior, ou então
                        // esta for a segunda volta, copia os dados para a melhor
                        // a segunda volta SEMPRE será a melhor volta por dois motivos
                        // 1. os karts já estão em velocidade ao cruzar a linha de largada
                        // 2. é possível que a primeira volta tenha um trajeto alterado (por supressão de redutores de velocidade)
                        // fazendo com que seu tempo seja desconsiderado para efeitos de análise
                        if ((gThisLap.end - gThisLap.start < gBestLap.end - gBestLap.start) || gThisLap.number == 2)
                        {
                            LapSteps *temp = gBestLap.steps;
                            memcpy(&gBestLap, &gThisLap, sizeof(gBestLap));
                            gThisLap.steps = temp;
                        }
                    }
                }
                else
                {
                    gRaceStart = now;
                }

                gThisLap.number++;
                gThisLap.start = now;
                gThisLap.end = 0;
                gThisLap.steps->count = 0;
                gThisLap.lastStepRefered = 0;
            }
        }

        if (gThisLap.number > 0 && gThisLap.steps->count < MAX_STEPS_PER_LAP)
        {
            LapStep *lastStep = &gThisLap.steps->items[gThisLap.steps->count - 1];
            Coordinate lastCoordinate = {lastStep->latitude, lastStep->longitude};

            // grava este step se este for o primeiro na volta ou o kart tenha andado
            // mais de 5 metros desde o último step
            if (gThisLap.steps->count == 0 || geodistance2(&thisCoordinate, &lastCoordinate) > MIN_DISTANCE_STEPS)
            {
//Serial.print("B:");
//Serial.print(geodistance2(&thisCoordinate, &lastCoordinate), DEC);
//Serial.print(" ");
//Serial.println(gThisLap.steps->count, DEC);
//
//if (geodistance2(&thisCoordinate, &lastCoordinate) > 100)
//{
//    Serial.println(test);
//    Serial.print(thisCoordinate.latitude, 6);
//    Serial.print(",");
//    Serial.print(thisCoordinate.longitude, 6);
//    Serial.print(" => ");
//    Serial.print(lastCoordinate.latitude, 6);
//    Serial.print(",");
//    Serial.println(lastCoordinate.longitude, 6);
//}

                gThisLap.steps->items[gThisLap.steps->count].latitude = sample->latitude;
                gThisLap.steps->items[gThisLap.steps->count].longitude = sample->longitude;
                gThisLap.steps->items[gThisLap.steps->count].time = now;
                gThisLap.steps->items[gThisLap.steps->count].speed = sample->speed;
                gThisLap.steps->count++;
            }

            if (gThisLap.number >= 3 && gBestLap.steps->count >= 2)
            {
                // procura por este ponto na melhor volta e compara o tempo e a velocidade
                Coordinate toLeft;
                Coordinate toRight;

                coordinateFromHeading(&thisCoordinate, GATE_WIDTH / 2, deg2rad(sample->heading - 90), &toLeft);
                coordinateFromHeading(&thisCoordinate, GATE_WIDTH / 2, deg2rad(sample->heading + 90), &toRight);
                Segment gate = {toLeft, toRight};

                unsigned int startSearch = gThisLap.lastStepRefered;
                while (TRUE)
                {
                    unsigned int nextBestPoint = startSearch + 1;
                    if (nextBestPoint >= gBestLap.steps->count)
                        nextBestPoint = 0;

                    Coordinate prevPoint = {gBestLap.steps->items[startSearch].latitude, gBestLap.steps->items[startSearch].longitude};
                    Coordinate nextPoint = {gBestLap.steps->items[nextBestPoint].latitude, gBestLap.steps->items[nextBestPoint].longitude};

                    Segment best = {prevPoint, nextPoint};

                    if (doIntersect(gate, best))
                    {
                        // encontrado um ponto de referência da volta anterior
                        float distancePrev = geodistance2(&thisCoordinate, &prevPoint);
                        float distanceNext = geodistance2(&thisCoordinate, &nextPoint);

                        if (distanceNext + distancePrev != 0)
                        {
                            float position = distanceNext / (distancePrev + distancePrev);
                            gDeltaSpeed = sample->speed - (gBestLap.steps->items[nextBestPoint].speed * position + gBestLap.steps->items[startSearch].speed * (1 - position)) / 10;
                            gDeltaTime = (now - gThisLap.start - (gBestLap.steps->items[nextBestPoint].time * position + gBestLap.steps->items[startSearch].time * (1 - position))) / 1000;
                        }

                        gThisLap.lastStepRefered = startSearch;

                        break;
                    }

                    startSearch++;
                    if (startSearch >= gBestLap.steps->count)
                        startSearch = 0;

                    if (startSearch == gThisLap.lastStepRefered)
                        break;
                }

            }
        }

        memcpy(&gLastSample, sample, sizeof(GpsSample));
    }
}

char *recvGpsSentence()
{
    static char gpsBuffer[128];
    static unsigned int gpsPointer = 0;

    while (Serial1.available() > 0)
    {
        int incomingByte = Serial1.read();

        if ((gpsPointer == 0 && (incomingByte == '$' || incomingByte == 0xA0)) || gpsPointer > 0)
        {
            if (gpsPointer < sizeof(gpsBuffer))
            {
                gpsBuffer[gpsPointer++] = incomingByte;
                if (gpsPointer >= 6)
                {
                    char endOfSentence;
                    if (gpsBuffer[0] == '$')
                        endOfSentence = incomingByte == '\xA' && gpsBuffer[gpsPointer - 2] == '\xD';
                    else
                        endOfSentence = gpsPointer >= (unsigned int)gpsBuffer[3] + 7;

                    if (endOfSentence)
                    {
                        gpsBuffer[gpsPointer - 2] = '\0';
                        gpsPointer = 0;
                        return gpsBuffer;
                    }
                }
            }
            else
            {
                gpsPointer = 0;
            }
        }
    }

    return NULL;
}


void displaySpeed(int speed)
{
    char temp[4];
    static char prev[sizeof(temp)];

    if (speed < 0 || speed > 99)
        strcpy(temp, "00");
    else
        sprintf(temp, "%d", speed);

    if (strcmp(temp, prev) != 0)
    {
        GLCD.FillRect(0, 0, 64, 40, PIXEL_OFF);
        GLCD.SelectFont(fixednums15x31);
        int width = GLCD.StringWidth(temp);
        GLCD.DrawString(temp, 50 - width, 6);
        strcpy(prev, temp);
    }
}

void displayLapNumber(int lapNumber, int bestLap)
{
    char temp[16] = "";
    static char prev[sizeof(temp)];

    if (lapNumber > 0 && lapNumber <= 99)
    {
        if (bestLap > 0 && bestLap <= 99)
            sprintf(temp, "B%d ", bestLap);
        sprintf(&temp[strlen(temp)], "L%d", lapNumber);
    }

    if (strcmp(temp, prev) != 0)
    {
        GLCD.FillRect(64, 5, 27, 15, PIXEL_OFF);
        GLCD.SelectFont(Arial_bold_14);
        int width = GLCD.StringWidth(temp);
        GLCD.DrawString(temp, 123 - width, 5);
        strcpy(prev, temp);
    }
}

void displayLapTime(int lapTime)
{
    char temp[32];
    static char prev[sizeof(temp)];

    if (lapTime < 0)
    {
        strcpy(temp, "");
    }
    else
    {
        int ms = lapTime % 1000;
        lapTime /= 1000;
        int s = lapTime % 60;
        lapTime /= 60;
        sprintf(temp, "%d:%2.2d.%1.1d", lapTime, s, ms / 100);
    }

    if (strcmp(temp, prev) != 0)
    {
        GLCD.FillRect(0, 42, 128, 23, PIXEL_OFF);
        GLCD.SelectFont(fixednums8x16);
        int width = GLCD.StringWidth(temp);
        GLCD.DrawString(temp, 64 - (width >> 1), 46);
        strcpy(prev, temp);
    }
}

void displayDeltaBestLap(int delta = 0x7FFFFFFF)
{
    char temp[16];
    static char prev[sizeof(temp)];

    if (delta == 0x7FFFFFFF)
    {
        strcpy(temp, "");
    }
    else
    {
        char signal = delta < 0 ? '-' : '+';
        delta = delta < 0 ? -delta : delta;
        // existe até 9,999 s de diferença
        if (delta > 9999)
            delta = 9999;
        int ms = delta % 1000;
        delta /= 1000;
        sprintf(temp, "%c%d.%3.3d", signal, delta, ms);
    }

    if (strcmp(temp, prev) != 0)
    {
        GLCD.FillRect(64, 23, 64, 16, PIXEL_OFF);
        GLCD.SelectFont(Arial_bold_14);
        int width = GLCD.StringWidth(temp);
        GLCD.DrawString(temp, 123 - width, 23);
        strcpy(prev, temp);
    }
}

void displayRaceTime(int time = -1)
{
    char temp[16];
    static char prev[sizeof(temp)];

    if (time < 0)
    {
        strcpy(temp, "");
    }
    else
    {
        time /= 1000;
        int s = time % 60;
        time /= 60;
        int m = time % 60;
        time /= 60;

        sprintf(temp, "%d:%2.2d:%2.2d", time, m, s);
    }

    if (strcmp(temp, prev) != 0)
    {
        GLCD.FillRect(64, 23, 64, 16, PIXEL_OFF);
        GLCD.SelectFont(Arial_bold_14);
        int width = GLCD.StringWidth(temp);
        GLCD.DrawString(temp, 123 - width, 23);
        strcpy(prev, temp);
    }
}

void loop()
{
    char *sentence = recvGpsSentence();
    if (sentence)
    {
        digitalWrite(LED, LOW);
Serial.println(sentence);
        if (strncmp(sentence, "$GPRMC", 6) == 0)
        {
            GpsSample rmc;
            if (parseRMCSentence(sentence, &rmc))
                processGpsMessage(&rmc);
        }

        digitalWrite(LED, HIGH);
    }

    unsigned long now = millis();

    displayLapNumber(gThisLap.number, gBestLap.number);

    displaySpeed(gLastSample.status == 'A' ? (int)(gLastSample.speed * 1.852) : -1);

    if (gThisLap.number <= 0)
    {
        displayLapTime(-1);
    }
    else
    {
        int lapTime = now - gThisLap.start;
        if (lapTime < 8000 && gThisLap.number > 1)
        {
            if (gThisLap.number <= 3)
            {
                displayLapTime(gPrevLap.end - gPrevLap.start);
                displayRaceTime();
                displayDeltaBestLap();
            }
            else
            {
                displayLapTime(gPrevLap.end - gPrevLap.start);
                displayRaceTime();
                displayDeltaBestLap(gPrevLap.deltaBest);
            }
        }
        else
        {
            displayLapTime(lapTime);
            displayDeltaBestLap();
            displayRaceTime(now - gRaceStart);
        }
    }
}

