
typedef struct
{
    double latitude;
    double longitude;
} Coordinate;

typedef struct
{
    Coordinate p;
    Coordinate q;
} Segment;

typedef struct
{
    char status;
    double latitude;
    double longitude;
    float speed;
    float heading;
} GpsSample;


// distância mínima entre um step e outro
// novos samples do GPS com distância inferior serão ignorados
#define MIN_DISTANCE_STEPS 5

// número máximo de steps a serem gravados por volta (tamanho máximo da pista: 1000 x 5 = 5 Km)
#define MAX_STEPS_PER_LAP 1000

// largura do portal, em metros
#define GATE_WIDTH 12

// limitações:
// tempo máximo de volta: 34 minutos
// velocidade máxima registrada: 204 Km/h
typedef struct 
{
    float latitude;
    float longitude;
    unsigned int time: 21;
    unsigned int speed: 11;
} LapStep;

typedef struct
{
    unsigned int count;
    LapStep items[MAX_STEPS_PER_LAP];
} LapSteps;

typedef struct
{
    int number;
    unsigned long start;
    unsigned long end;
    unsigned long deltaBest;
    unsigned int lastStepRefered;
    LapSteps *steps;
} Lap;



