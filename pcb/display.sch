<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-samtec" urn="urn:adsk.eagle:library:184">
<description>&lt;b&gt;Samtec Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TSW-120-02-S-S" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-25.529" y1="1.155" x2="25.529" y2="1.155" width="0.2032" layer="21"/>
<wire x1="25.529" y1="1.155" x2="25.529" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="25.529" y1="-1.155" x2="-25.529" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-25.529" y1="-1.155" x2="-25.529" y2="1.155" width="0.2032" layer="21"/>
<pad name="1" x="24.13" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="21.59" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="19.05" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="16.51" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="13.97" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="11.43" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="9" x="3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="10" x="1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="11" x="-1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="12" x="-3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="13" x="-6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="14" x="-8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="15" x="-11.43" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="16" x="-13.97" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="17" x="-16.51" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="18" x="-19.05" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="19" x="-21.59" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="20" x="-24.13" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="23.872" y="-2.498" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<text x="-26.035" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="27.305" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-24.48" y1="-0.35" x2="-23.78" y2="0.35" layer="51"/>
<rectangle x1="-21.94" y1="-0.35" x2="-21.24" y2="0.35" layer="51"/>
<rectangle x1="-19.4" y1="-0.35" x2="-18.7" y2="0.35" layer="51"/>
<rectangle x1="-16.86" y1="-0.35" x2="-16.16" y2="0.35" layer="51"/>
<rectangle x1="-14.32" y1="-0.35" x2="-13.62" y2="0.35" layer="51"/>
<rectangle x1="-11.78" y1="-0.35" x2="-11.08" y2="0.35" layer="51"/>
<rectangle x1="-9.24" y1="-0.35" x2="-8.54" y2="0.35" layer="51"/>
<rectangle x1="-6.7" y1="-0.35" x2="-6" y2="0.35" layer="51"/>
<rectangle x1="-4.16" y1="-0.35" x2="-3.46" y2="0.35" layer="51"/>
<rectangle x1="-1.62" y1="-0.35" x2="-0.92" y2="0.35" layer="51"/>
<rectangle x1="0.92" y1="-0.35" x2="1.62" y2="0.35" layer="51"/>
<rectangle x1="3.46" y1="-0.35" x2="4.16" y2="0.35" layer="51"/>
<rectangle x1="6" y1="-0.35" x2="6.7" y2="0.35" layer="51"/>
<rectangle x1="8.54" y1="-0.35" x2="9.24" y2="0.35" layer="51"/>
<rectangle x1="11.08" y1="-0.35" x2="11.78" y2="0.35" layer="51"/>
<rectangle x1="13.62" y1="-0.35" x2="14.32" y2="0.35" layer="51"/>
<rectangle x1="16.16" y1="-0.35" x2="16.86" y2="0.35" layer="51"/>
<rectangle x1="18.7" y1="-0.35" x2="19.4" y2="0.35" layer="51"/>
<rectangle x1="21.24" y1="-0.35" x2="21.94" y2="0.35" layer="51"/>
<rectangle x1="23.78" y1="-0.35" x2="24.48" y2="0.35" layer="51"/>
</package>
<package name="TSW-120-02-S-S-RA" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-25.529" y1="-2.046" x2="25.529" y2="-2.046" width="0.2032" layer="21"/>
<wire x1="25.529" y1="-2.046" x2="25.529" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="25.529" y1="-0.106" x2="-25.529" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-25.529" y1="-0.106" x2="-25.529" y2="-2.046" width="0.2032" layer="21"/>
<pad name="1" x="24.13" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="21.59" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="19.05" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="16.51" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="13.97" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="11.43" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="9" x="3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="10" x="1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="11" x="-1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="12" x="-3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="13" x="-6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="14" x="-8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="15" x="-11.43" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="16" x="-13.97" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="17" x="-16.51" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="18" x="-19.05" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="19" x="-21.59" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="20" x="-24.13" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="-26.035" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="27.305" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="25.412" y="1.152" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<rectangle x1="-24.384" y1="0" x2="-23.876" y2="1.778" layer="51"/>
<rectangle x1="-21.844" y1="0" x2="-21.336" y2="1.778" layer="51"/>
<rectangle x1="-19.304" y1="0" x2="-18.796" y2="1.778" layer="51"/>
<rectangle x1="-16.764" y1="0" x2="-16.256" y2="1.778" layer="51"/>
<rectangle x1="-14.224" y1="0" x2="-13.716" y2="1.778" layer="51"/>
<rectangle x1="-11.684" y1="0" x2="-11.176" y2="1.778" layer="51"/>
<rectangle x1="-9.144" y1="0" x2="-8.636" y2="1.778" layer="51"/>
<rectangle x1="-6.604" y1="0" x2="-6.096" y2="1.778" layer="51"/>
<rectangle x1="-4.064" y1="0" x2="-3.556" y2="1.778" layer="51"/>
<rectangle x1="-1.524" y1="0" x2="-1.016" y2="1.778" layer="51"/>
<rectangle x1="1.016" y1="0" x2="1.524" y2="1.778" layer="51"/>
<rectangle x1="3.556" y1="0" x2="4.064" y2="1.778" layer="51"/>
<rectangle x1="6.096" y1="0" x2="6.604" y2="1.778" layer="51"/>
<rectangle x1="8.636" y1="0" x2="9.144" y2="1.778" layer="51"/>
<rectangle x1="11.176" y1="0" x2="11.684" y2="1.778" layer="51"/>
<rectangle x1="13.716" y1="0" x2="14.224" y2="1.778" layer="51"/>
<rectangle x1="16.256" y1="0" x2="16.764" y2="1.778" layer="51"/>
<rectangle x1="18.796" y1="0" x2="19.304" y2="1.778" layer="51"/>
<rectangle x1="21.336" y1="0" x2="21.844" y2="1.778" layer="51"/>
<rectangle x1="23.876" y1="0" x2="24.384" y2="1.778" layer="51"/>
<rectangle x1="-24.384" y1="-7.89" x2="-23.876" y2="-2.04" layer="21"/>
<rectangle x1="-21.844" y1="-7.89" x2="-21.336" y2="-2.04" layer="21"/>
<rectangle x1="-19.304" y1="-7.89" x2="-18.796" y2="-2.04" layer="21"/>
<rectangle x1="-16.764" y1="-7.89" x2="-16.256" y2="-2.04" layer="21"/>
<rectangle x1="-14.224" y1="-7.89" x2="-13.716" y2="-2.04" layer="21"/>
<rectangle x1="-11.684" y1="-7.89" x2="-11.176" y2="-2.04" layer="21"/>
<rectangle x1="-9.144" y1="-7.89" x2="-8.636" y2="-2.04" layer="21"/>
<rectangle x1="-6.604" y1="-7.89" x2="-6.096" y2="-2.04" layer="21"/>
<rectangle x1="-4.064" y1="-7.89" x2="-3.556" y2="-2.04" layer="21"/>
<rectangle x1="-1.524" y1="-7.89" x2="-1.016" y2="-2.04" layer="21"/>
<rectangle x1="1.016" y1="-7.89" x2="1.524" y2="-2.04" layer="21"/>
<rectangle x1="3.556" y1="-7.89" x2="4.064" y2="-2.04" layer="21"/>
<rectangle x1="6.096" y1="-7.89" x2="6.604" y2="-2.04" layer="21"/>
<rectangle x1="8.636" y1="-7.89" x2="9.144" y2="-2.04" layer="21"/>
<rectangle x1="11.176" y1="-7.89" x2="11.684" y2="-2.04" layer="21"/>
<rectangle x1="13.716" y1="-7.89" x2="14.224" y2="-2.04" layer="21"/>
<rectangle x1="16.256" y1="-7.89" x2="16.764" y2="-2.04" layer="21"/>
<rectangle x1="18.796" y1="-7.89" x2="19.304" y2="-2.04" layer="21"/>
<rectangle x1="21.336" y1="-7.89" x2="21.844" y2="-2.04" layer="21"/>
<rectangle x1="23.876" y1="-7.89" x2="24.384" y2="-2.04" layer="21"/>
</package>
<package name="TSW-108-02-S-S" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-10.289" y1="1.155" x2="10.289" y2="1.155" width="0.2032" layer="21"/>
<wire x1="10.289" y1="1.155" x2="10.289" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="10.289" y1="-1.155" x2="-10.289" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-10.289" y1="-1.155" x2="-10.289" y2="1.155" width="0.2032" layer="21"/>
<pad name="1" x="8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="-1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="-3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="-6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="-8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="8.632" y="-2.498" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<text x="-10.795" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="12.065" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-9.24" y1="-0.35" x2="-8.54" y2="0.35" layer="51"/>
<rectangle x1="-6.7" y1="-0.35" x2="-6" y2="0.35" layer="51"/>
<rectangle x1="-4.16" y1="-0.35" x2="-3.46" y2="0.35" layer="51"/>
<rectangle x1="-1.62" y1="-0.35" x2="-0.92" y2="0.35" layer="51"/>
<rectangle x1="0.92" y1="-0.35" x2="1.62" y2="0.35" layer="51"/>
<rectangle x1="3.46" y1="-0.35" x2="4.16" y2="0.35" layer="51"/>
<rectangle x1="6" y1="-0.35" x2="6.7" y2="0.35" layer="51"/>
<rectangle x1="8.54" y1="-0.35" x2="9.24" y2="0.35" layer="51"/>
</package>
<package name="TSW-108-02-S-S-RA" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-10.289" y1="-2.046" x2="10.289" y2="-2.046" width="0.2032" layer="21"/>
<wire x1="10.289" y1="-2.046" x2="10.289" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="10.289" y1="-0.106" x2="-10.289" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-10.289" y1="-0.106" x2="-10.289" y2="-2.046" width="0.2032" layer="21"/>
<pad name="1" x="8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="-1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="-3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="-6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="-8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="-10.795" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="12.065" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="10.172" y="1.152" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<rectangle x1="-9.144" y1="0" x2="-8.636" y2="1.778" layer="51"/>
<rectangle x1="-6.604" y1="0" x2="-6.096" y2="1.778" layer="51"/>
<rectangle x1="-4.064" y1="0" x2="-3.556" y2="1.778" layer="51"/>
<rectangle x1="-1.524" y1="0" x2="-1.016" y2="1.778" layer="51"/>
<rectangle x1="1.016" y1="0" x2="1.524" y2="1.778" layer="51"/>
<rectangle x1="3.556" y1="0" x2="4.064" y2="1.778" layer="51"/>
<rectangle x1="6.096" y1="0" x2="6.604" y2="1.778" layer="51"/>
<rectangle x1="8.636" y1="0" x2="9.144" y2="1.778" layer="51"/>
<rectangle x1="-9.144" y1="-7.89" x2="-8.636" y2="-2.04" layer="21"/>
<rectangle x1="-6.604" y1="-7.89" x2="-6.096" y2="-2.04" layer="21"/>
<rectangle x1="-4.064" y1="-7.89" x2="-3.556" y2="-2.04" layer="21"/>
<rectangle x1="-1.524" y1="-7.89" x2="-1.016" y2="-2.04" layer="21"/>
<rectangle x1="1.016" y1="-7.89" x2="1.524" y2="-2.04" layer="21"/>
<rectangle x1="3.556" y1="-7.89" x2="4.064" y2="-2.04" layer="21"/>
<rectangle x1="6.096" y1="-7.89" x2="6.604" y2="-2.04" layer="21"/>
<rectangle x1="8.636" y1="-7.89" x2="9.144" y2="-2.04" layer="21"/>
</package>
<package name="TSW-118-02-S-S" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-22.989" y1="1.155" x2="22.989" y2="1.155" width="0.2032" layer="21"/>
<wire x1="22.989" y1="1.155" x2="22.989" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="22.989" y1="-1.155" x2="-22.989" y2="-1.155" width="0.2032" layer="21"/>
<wire x1="-22.989" y1="-1.155" x2="-22.989" y2="1.155" width="0.2032" layer="21"/>
<pad name="1" x="21.59" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="19.05" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="16.51" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="13.97" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="11.43" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="9" x="1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="10" x="-1.27" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="11" x="-3.81" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="12" x="-6.35" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="13" x="-8.89" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="14" x="-11.43" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="15" x="-13.97" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="16" x="-16.51" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="17" x="-19.05" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="18" x="-21.59" y="0" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="21.332" y="-2.498" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<text x="-23.495" y="-1.27" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="24.765" y="-1.27" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-21.94" y1="-0.35" x2="-21.24" y2="0.35" layer="51"/>
<rectangle x1="-19.4" y1="-0.35" x2="-18.7" y2="0.35" layer="51"/>
<rectangle x1="-16.86" y1="-0.35" x2="-16.16" y2="0.35" layer="51"/>
<rectangle x1="-14.32" y1="-0.35" x2="-13.62" y2="0.35" layer="51"/>
<rectangle x1="-11.78" y1="-0.35" x2="-11.08" y2="0.35" layer="51"/>
<rectangle x1="-9.24" y1="-0.35" x2="-8.54" y2="0.35" layer="51"/>
<rectangle x1="-6.7" y1="-0.35" x2="-6" y2="0.35" layer="51"/>
<rectangle x1="-4.16" y1="-0.35" x2="-3.46" y2="0.35" layer="51"/>
<rectangle x1="-1.62" y1="-0.35" x2="-0.92" y2="0.35" layer="51"/>
<rectangle x1="0.92" y1="-0.35" x2="1.62" y2="0.35" layer="51"/>
<rectangle x1="3.46" y1="-0.35" x2="4.16" y2="0.35" layer="51"/>
<rectangle x1="6" y1="-0.35" x2="6.7" y2="0.35" layer="51"/>
<rectangle x1="8.54" y1="-0.35" x2="9.24" y2="0.35" layer="51"/>
<rectangle x1="11.08" y1="-0.35" x2="11.78" y2="0.35" layer="51"/>
<rectangle x1="13.62" y1="-0.35" x2="14.32" y2="0.35" layer="51"/>
<rectangle x1="16.16" y1="-0.35" x2="16.86" y2="0.35" layer="51"/>
<rectangle x1="18.7" y1="-0.35" x2="19.4" y2="0.35" layer="51"/>
<rectangle x1="21.24" y1="-0.35" x2="21.94" y2="0.35" layer="51"/>
</package>
<package name="TSW-118-02-S-S-RA" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<wire x1="-22.989" y1="-2.046" x2="22.989" y2="-2.046" width="0.2032" layer="21"/>
<wire x1="22.989" y1="-2.046" x2="22.989" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="22.989" y1="-0.106" x2="-22.989" y2="-0.106" width="0.2032" layer="21"/>
<wire x1="-22.989" y1="-0.106" x2="-22.989" y2="-2.046" width="0.2032" layer="21"/>
<pad name="1" x="21.59" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="2" x="19.05" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="3" x="16.51" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="4" x="13.97" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="5" x="11.43" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="6" x="8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="7" x="6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="8" x="3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="9" x="1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="10" x="-1.27" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="11" x="-3.81" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="12" x="-6.35" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="13" x="-8.89" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="14" x="-11.43" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="15" x="-13.97" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="16" x="-16.51" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="17" x="-19.05" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<pad name="18" x="-21.59" y="1.524" drill="1" diameter="1.5" shape="octagon" rot="R180"/>
<text x="-23.495" y="-7.62" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="24.765" y="-7.62" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<text x="22.872" y="1.152" size="1.1" layer="21" font="vector" rot="SR0">1</text>
<rectangle x1="-21.844" y1="0" x2="-21.336" y2="1.778" layer="51"/>
<rectangle x1="-19.304" y1="0" x2="-18.796" y2="1.778" layer="51"/>
<rectangle x1="-16.764" y1="0" x2="-16.256" y2="1.778" layer="51"/>
<rectangle x1="-14.224" y1="0" x2="-13.716" y2="1.778" layer="51"/>
<rectangle x1="-11.684" y1="0" x2="-11.176" y2="1.778" layer="51"/>
<rectangle x1="-9.144" y1="0" x2="-8.636" y2="1.778" layer="51"/>
<rectangle x1="-6.604" y1="0" x2="-6.096" y2="1.778" layer="51"/>
<rectangle x1="-4.064" y1="0" x2="-3.556" y2="1.778" layer="51"/>
<rectangle x1="-1.524" y1="0" x2="-1.016" y2="1.778" layer="51"/>
<rectangle x1="1.016" y1="0" x2="1.524" y2="1.778" layer="51"/>
<rectangle x1="3.556" y1="0" x2="4.064" y2="1.778" layer="51"/>
<rectangle x1="6.096" y1="0" x2="6.604" y2="1.778" layer="51"/>
<rectangle x1="8.636" y1="0" x2="9.144" y2="1.778" layer="51"/>
<rectangle x1="11.176" y1="0" x2="11.684" y2="1.778" layer="51"/>
<rectangle x1="13.716" y1="0" x2="14.224" y2="1.778" layer="51"/>
<rectangle x1="16.256" y1="0" x2="16.764" y2="1.778" layer="51"/>
<rectangle x1="18.796" y1="0" x2="19.304" y2="1.778" layer="51"/>
<rectangle x1="21.336" y1="0" x2="21.844" y2="1.778" layer="51"/>
<rectangle x1="-21.844" y1="-7.89" x2="-21.336" y2="-2.04" layer="21"/>
<rectangle x1="-19.304" y1="-7.89" x2="-18.796" y2="-2.04" layer="21"/>
<rectangle x1="-16.764" y1="-7.89" x2="-16.256" y2="-2.04" layer="21"/>
<rectangle x1="-14.224" y1="-7.89" x2="-13.716" y2="-2.04" layer="21"/>
<rectangle x1="-11.684" y1="-7.89" x2="-11.176" y2="-2.04" layer="21"/>
<rectangle x1="-9.144" y1="-7.89" x2="-8.636" y2="-2.04" layer="21"/>
<rectangle x1="-6.604" y1="-7.89" x2="-6.096" y2="-2.04" layer="21"/>
<rectangle x1="-4.064" y1="-7.89" x2="-3.556" y2="-2.04" layer="21"/>
<rectangle x1="-1.524" y1="-7.89" x2="-1.016" y2="-2.04" layer="21"/>
<rectangle x1="1.016" y1="-7.89" x2="1.524" y2="-2.04" layer="21"/>
<rectangle x1="3.556" y1="-7.89" x2="4.064" y2="-2.04" layer="21"/>
<rectangle x1="6.096" y1="-7.89" x2="6.604" y2="-2.04" layer="21"/>
<rectangle x1="8.636" y1="-7.89" x2="9.144" y2="-2.04" layer="21"/>
<rectangle x1="11.176" y1="-7.89" x2="11.684" y2="-2.04" layer="21"/>
<rectangle x1="13.716" y1="-7.89" x2="14.224" y2="-2.04" layer="21"/>
<rectangle x1="16.256" y1="-7.89" x2="16.764" y2="-2.04" layer="21"/>
<rectangle x1="18.796" y1="-7.89" x2="19.304" y2="-2.04" layer="21"/>
<rectangle x1="21.336" y1="-7.89" x2="21.844" y2="-2.04" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MPINV" library_version="1">
<text x="-1.27" y="1.27" size="1.778" layer="96">&gt;VALUE</text>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<rectangle x1="0" y1="-0.254" x2="1.778" y2="0.254" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="MPIN" library_version="1">
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<rectangle x1="0" y1="-0.254" x2="1.778" y2="0.254" layer="94"/>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSW-120-02-S-S" prefix="X" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<gates>
<gate name="-1" symbol="MPINV" x="-1.27" y="22.86" addlevel="always"/>
<gate name="-2" symbol="MPIN" x="-1.27" y="20.32" addlevel="always"/>
<gate name="-3" symbol="MPIN" x="-1.27" y="17.78" addlevel="always"/>
<gate name="-4" symbol="MPIN" x="-1.27" y="15.24" addlevel="always"/>
<gate name="-5" symbol="MPIN" x="-1.27" y="12.7" addlevel="always"/>
<gate name="-6" symbol="MPIN" x="-1.27" y="10.16" addlevel="always"/>
<gate name="-7" symbol="MPIN" x="-1.27" y="7.62" addlevel="always"/>
<gate name="-8" symbol="MPIN" x="-1.27" y="5.08" addlevel="always"/>
<gate name="-9" symbol="MPIN" x="-1.27" y="2.54" addlevel="always"/>
<gate name="-10" symbol="MPIN" x="-1.27" y="0" addlevel="always"/>
<gate name="-11" symbol="MPIN" x="-1.27" y="-2.54" addlevel="always"/>
<gate name="-12" symbol="MPIN" x="-1.27" y="-5.08" addlevel="always"/>
<gate name="-13" symbol="MPIN" x="-1.27" y="-7.62" addlevel="always"/>
<gate name="-14" symbol="MPIN" x="-1.27" y="-10.16" addlevel="always"/>
<gate name="-15" symbol="MPIN" x="-1.27" y="-12.7" addlevel="always"/>
<gate name="-16" symbol="MPIN" x="-1.27" y="-15.24" addlevel="always"/>
<gate name="-17" symbol="MPIN" x="-1.27" y="-17.78" addlevel="always"/>
<gate name="-18" symbol="MPIN" x="-1.27" y="-20.32" addlevel="always"/>
<gate name="-19" symbol="MPIN" x="-1.27" y="-22.86" addlevel="always"/>
<gate name="-20" symbol="MPIN" x="-1.27" y="-25.4" addlevel="always"/>
</gates>
<devices>
<device name="" package="TSW-120-02-S-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-17" pin="1" pad="17"/>
<connect gate="-18" pin="1" pad="18"/>
<connect gate="-19" pin="1" pad="19"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-20" pin="1" pad="20"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="TSW-120-02-S-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-17" pin="1" pad="17"/>
<connect gate="-18" pin="1" pad="18"/>
<connect gate="-19" pin="1" pad="19"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-20" pin="1" pad="20"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TSW-108-02-S-S" prefix="X" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<gates>
<gate name="-1" symbol="MPINV" x="-1.27" y="7.62" addlevel="always"/>
<gate name="-2" symbol="MPIN" x="-1.27" y="5.08" addlevel="always"/>
<gate name="-3" symbol="MPIN" x="-1.27" y="2.54" addlevel="always"/>
<gate name="-4" symbol="MPIN" x="-1.27" y="0" addlevel="always"/>
<gate name="-5" symbol="MPIN" x="-1.27" y="-2.54" addlevel="always"/>
<gate name="-6" symbol="MPIN" x="-1.27" y="-5.08" addlevel="always"/>
<gate name="-7" symbol="MPIN" x="-1.27" y="-7.62" addlevel="always"/>
<gate name="-8" symbol="MPIN" x="-1.27" y="-10.16" addlevel="always"/>
</gates>
<devices>
<device name="" package="TSW-108-02-S-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="TSW-108-02-S-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TSW-118-02-S-S" prefix="X" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE .025" SQ POST HEADER&lt;/b&gt;&lt;p&gt;
Source: Samtec TSW.pdf</description>
<gates>
<gate name="-1" symbol="MPINV" x="-1.27" y="20.32" addlevel="always"/>
<gate name="-2" symbol="MPIN" x="-1.27" y="17.78" addlevel="always"/>
<gate name="-3" symbol="MPIN" x="-1.27" y="15.24" addlevel="always"/>
<gate name="-4" symbol="MPIN" x="-1.27" y="12.7" addlevel="always"/>
<gate name="-5" symbol="MPIN" x="-1.27" y="10.16" addlevel="always"/>
<gate name="-6" symbol="MPIN" x="-1.27" y="7.62" addlevel="always"/>
<gate name="-7" symbol="MPIN" x="-1.27" y="5.08" addlevel="always"/>
<gate name="-8" symbol="MPIN" x="-1.27" y="2.54" addlevel="always"/>
<gate name="-9" symbol="MPIN" x="-1.27" y="0" addlevel="always"/>
<gate name="-10" symbol="MPIN" x="-1.27" y="-2.54" addlevel="always"/>
<gate name="-11" symbol="MPIN" x="-1.27" y="-5.08" addlevel="always"/>
<gate name="-12" symbol="MPIN" x="-1.27" y="-7.62" addlevel="always"/>
<gate name="-13" symbol="MPIN" x="-1.27" y="-10.16" addlevel="always"/>
<gate name="-14" symbol="MPIN" x="-1.27" y="-12.7" addlevel="always"/>
<gate name="-15" symbol="MPIN" x="-1.27" y="-15.24" addlevel="always"/>
<gate name="-16" symbol="MPIN" x="-1.27" y="-17.78" addlevel="always"/>
<gate name="-17" symbol="MPIN" x="-1.27" y="-20.32" addlevel="always"/>
<gate name="-18" symbol="MPIN" x="-1.27" y="-22.86" addlevel="always"/>
</gates>
<devices>
<device name="" package="TSW-118-02-S-S">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-17" pin="1" pad="17"/>
<connect gate="-18" pin="1" pad="18"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="-RA" package="TSW-118-02-S-S-RA">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-10" pin="1" pad="10"/>
<connect gate="-11" pin="1" pad="11"/>
<connect gate="-12" pin="1" pad="12"/>
<connect gate="-13" pin="1" pad="13"/>
<connect gate="-14" pin="1" pad="14"/>
<connect gate="-15" pin="1" pad="15"/>
<connect gate="-16" pin="1" pad="16"/>
<connect gate="-17" pin="1" pad="17"/>
<connect gate="-18" pin="1" pad="18"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
<connect gate="-6" pin="1" pad="6"/>
<connect gate="-7" pin="1" pad="7"/>
<connect gate="-8" pin="1" pad="8"/>
<connect gate="-9" pin="1" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice" urn="urn:adsk.eagle:library:217">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="LED_1206" library_version="1">
<description>&lt;b&gt;CHICAGO MINIATURE LAMP, INC.&lt;/b&gt;&lt;p&gt;
7022X Series SMT LEDs 1206 Package Size</description>
<wire x1="1.55" y1="-0.75" x2="-1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="-0.75" x2="-1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="-1.55" y1="0.75" x2="1.55" y2="0.75" width="0.1016" layer="51"/>
<wire x1="1.55" y1="0.75" x2="1.55" y2="-0.75" width="0.1016" layer="51"/>
<wire x1="-0.55" y1="-0.5" x2="0.55" y2="-0.5" width="0.1016" layer="21" curve="95.452622"/>
<wire x1="-0.55" y1="-0.5" x2="-0.55" y2="0.5" width="0.1016" layer="51" curve="-84.547378"/>
<wire x1="-0.55" y1="0.5" x2="0.55" y2="0.5" width="0.1016" layer="21" curve="-95.452622"/>
<wire x1="0.55" y1="0.5" x2="0.55" y2="-0.5" width="0.1016" layer="51" curve="-84.547378"/>
<rectangle x1="-0.1" y1="-0.1" x2="0.1" y2="0.1" layer="21"/>
<rectangle x1="0.45" y1="-0.7" x2="0.8" y2="-0.45" layer="51"/>
<rectangle x1="0.8" y1="-0.7" x2="0.9" y2="0.5" layer="51"/>
<rectangle x1="0.8" y1="0.55" x2="0.9" y2="0.7" layer="51"/>
<rectangle x1="-0.9" y1="-0.7" x2="-0.8" y2="0.5" layer="51"/>
<rectangle x1="-0.9" y1="0.55" x2="-0.8" y2="0.7" layer="51"/>
<rectangle x1="0.45" y1="-0.7" x2="0.6" y2="-0.45" layer="21"/>
<smd name="A" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="C" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="LED_LD260" library_version="1">
<description>&lt;B&gt;LED&lt;/B&gt;&lt;p&gt;
5 mm, square, Siemens</description>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.27" x2="1.27" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="0" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.889" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0" y1="1.27" x2="0.9917" y2="0.7934" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="-0.9917" y1="0.7934" x2="0" y2="1.27" width="0.1524" layer="21" curve="-51.33923"/>
<wire x1="0" y1="-1.27" x2="0.9917" y2="-0.7934" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="-0.9917" y1="-0.7934" x2="0" y2="-1.27" width="0.1524" layer="21" curve="51.33923"/>
<wire x1="0.9558" y1="-0.8363" x2="1.27" y2="0" width="0.1524" layer="51" curve="41.185419"/>
<wire x1="0.9756" y1="0.813" x2="1.2699" y2="0" width="0.1524" layer="51" curve="-39.806332"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="-0.8265" width="0.1524" layer="51" curve="40.600331"/>
<wire x1="-1.27" y1="0" x2="-0.9643" y2="0.8265" width="0.1524" layer="51" curve="-40.600331"/>
<wire x1="-0.889" y1="0" x2="0" y2="0.889" width="0.1524" layer="51" curve="-90"/>
<wire x1="-0.508" y1="0" x2="0" y2="0.508" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.508" x2="0.508" y2="0" width="0.1524" layer="21" curve="90"/>
<wire x1="0" y1="-0.889" x2="0.889" y2="0" width="0.1524" layer="51" curve="90"/>
<rectangle x1="1.27" y1="-0.635" x2="2.032" y2="0.635" layer="51"/>
<rectangle x1="1.905" y1="-0.635" x2="2.032" y2="0.635" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.2954" y="1.4732" size="1.016" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-2.4892" size="1.016" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="LED_SML0603" library_version="1">
<description>&lt;b&gt;SML0603-XXX (HIGH INTENSITY) LED&lt;/b&gt;&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td&gt;AG3K&lt;/td&gt;&lt;td&gt;AQUA GREEN&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B1K&lt;/td&gt;&lt;td&gt;SUPER BLUE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R1K&lt;/td&gt;&lt;td&gt;SUPER RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;R3K&lt;/td&gt;&lt;td&gt;ULTRA RED&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3K&lt;/td&gt;&lt;td&gt;SUPER ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;O3KH&lt;/td&gt;&lt;td&gt;SOFT ORANGE&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3KH&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Y3K&lt;/td&gt;&lt;td&gt;SUPER YELLOW&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;2CW&lt;/td&gt;&lt;td&gt;WHITE&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
Source: http://www.ledtronics.com/ds/smd-0603/Dstr0092.pdf</description>
<wire x1="-0.75" y1="0.35" x2="0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="0.35" x2="0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.75" y1="-0.35" x2="-0.75" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.75" y1="-0.35" x2="-0.75" y2="0.35" width="0.1016" layer="51"/>
<wire x1="-0.45" y1="0.3" x2="-0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="0.45" y1="0.3" x2="0.45" y2="-0.3" width="0.1016" layer="51"/>
<wire x1="-0.2" y1="0.35" x2="0.2" y2="0.35" width="0.1016" layer="21"/>
<wire x1="-0.2" y1="-0.35" x2="0.2" y2="-0.35" width="0.1016" layer="21"/>
<rectangle x1="-0.4" y1="0.175" x2="0" y2="0.4" layer="51"/>
<rectangle x1="-0.25" y1="0.175" x2="0" y2="0.4" layer="21"/>
<smd name="A" x="0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="C" x="-0.75" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1" y="-2" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LED_LED" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
<text x="0" y="-5.08" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
<text x="0" y="2.54" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED_E" prefix="LED" uservalue="yes" library_version="1">
<description>&lt;b&gt;LED&lt;/b&gt;&lt;p&gt;
Source: http://www.osram.convergy.de&lt;p&gt;
Source: www.luxeon.com&lt;p&gt;
Source: www.kingbright.com</description>
<gates>
<gate name="G$1" symbol="LED_LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
<device name="LD260" package="LED_LD260">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="K"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
<device name="SML0603" package="LED_SML0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="D" constant="no"/>
<attribute name="SPICETYPE" value="diode" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="TSW-120-02-S-S" device=""/>
<part name="X2" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="TSW-108-02-S-S" device=""/>
<part name="X3" library="con-samtec" library_urn="urn:adsk.eagle:library:184" deviceset="TSW-118-02-S-S" device=""/>
<part name="LED1" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED2" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED3" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED4" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED5" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED6" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED7" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
<part name="LED8" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="LED_E" device="LD260"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="21.59" y="55.88"/>
<instance part="X1" gate="-2" x="21.59" y="53.34"/>
<instance part="X1" gate="-3" x="21.59" y="50.8"/>
<instance part="X1" gate="-4" x="21.59" y="48.26"/>
<instance part="X1" gate="-5" x="21.59" y="45.72"/>
<instance part="X1" gate="-6" x="21.59" y="43.18"/>
<instance part="X1" gate="-7" x="21.59" y="40.64"/>
<instance part="X1" gate="-8" x="21.59" y="38.1"/>
<instance part="X1" gate="-9" x="21.59" y="35.56"/>
<instance part="X1" gate="-10" x="21.59" y="33.02"/>
<instance part="X1" gate="-11" x="21.59" y="30.48"/>
<instance part="X1" gate="-12" x="21.59" y="27.94"/>
<instance part="X1" gate="-13" x="21.59" y="25.4"/>
<instance part="X1" gate="-14" x="21.59" y="22.86"/>
<instance part="X1" gate="-15" x="21.59" y="20.32"/>
<instance part="X1" gate="-16" x="21.59" y="17.78"/>
<instance part="X1" gate="-17" x="21.59" y="15.24"/>
<instance part="X1" gate="-18" x="21.59" y="12.7"/>
<instance part="X1" gate="-19" x="21.59" y="10.16"/>
<instance part="X1" gate="-20" x="21.59" y="7.62"/>
<instance part="X2" gate="-1" x="-3.81" y="86.36"/>
<instance part="X2" gate="-2" x="-3.81" y="83.82"/>
<instance part="X2" gate="-3" x="-3.81" y="81.28"/>
<instance part="X2" gate="-4" x="-3.81" y="78.74"/>
<instance part="X2" gate="-5" x="-3.81" y="76.2"/>
<instance part="X2" gate="-6" x="-3.81" y="73.66"/>
<instance part="X2" gate="-7" x="-3.81" y="71.12"/>
<instance part="X2" gate="-8" x="-3.81" y="68.58"/>
<instance part="X3" gate="-1" x="-3.81" y="55.88"/>
<instance part="X3" gate="-2" x="-3.81" y="53.34"/>
<instance part="X3" gate="-3" x="-3.81" y="50.8"/>
<instance part="X3" gate="-4" x="-3.81" y="48.26"/>
<instance part="X3" gate="-5" x="-3.81" y="45.72"/>
<instance part="X3" gate="-6" x="-3.81" y="43.18"/>
<instance part="X3" gate="-7" x="-3.81" y="40.64"/>
<instance part="X3" gate="-8" x="-3.81" y="38.1"/>
<instance part="X3" gate="-9" x="-3.81" y="35.56"/>
<instance part="X3" gate="-10" x="-3.81" y="33.02"/>
<instance part="X3" gate="-11" x="-3.81" y="30.48"/>
<instance part="X3" gate="-12" x="-3.81" y="27.94"/>
<instance part="X3" gate="-13" x="-3.81" y="25.4"/>
<instance part="X3" gate="-14" x="-3.81" y="22.86"/>
<instance part="X3" gate="-15" x="-3.81" y="20.32"/>
<instance part="X3" gate="-16" x="-3.81" y="17.78"/>
<instance part="X3" gate="-17" x="-3.81" y="15.24"/>
<instance part="X3" gate="-18" x="-3.81" y="12.7"/>
<instance part="LED1" gate="G$1" x="63.5" y="91.44" rot="R90"/>
<instance part="LED2" gate="G$1" x="63.5" y="83.82" rot="R90"/>
<instance part="LED3" gate="G$1" x="63.5" y="76.2" rot="R90"/>
<instance part="LED4" gate="G$1" x="63.5" y="68.58" rot="R90"/>
<instance part="LED5" gate="G$1" x="63.5" y="60.96" rot="R90"/>
<instance part="LED6" gate="G$1" x="63.5" y="53.34" rot="R90"/>
<instance part="LED7" gate="G$1" x="63.5" y="45.72" rot="R90"/>
<instance part="LED8" gate="G$1" x="63.5" y="38.1" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X3" gate="-1" pin="1"/>
<pinref part="X1" gate="-1" pin="1"/>
<wire x1="-6.35" y1="55.88" x2="19.05" y2="55.88" width="0.1524" layer="91"/>
<wire x1="19.05" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="33.02" y1="55.88" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<junction x="19.05" y="55.88"/>
<pinref part="X1" gate="-14" pin="1"/>
<wire x1="33.02" y1="22.86" x2="19.05" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="X3" gate="-2" pin="1"/>
<pinref part="X1" gate="-2" pin="1"/>
<wire x1="-6.35" y1="53.34" x2="19.05" y2="53.34" width="0.1524" layer="91"/>
<wire x1="19.05" y1="53.34" x2="30.48" y2="53.34" width="0.1524" layer="91"/>
<wire x1="30.48" y1="53.34" x2="30.48" y2="7.62" width="0.1524" layer="91"/>
<junction x="19.05" y="53.34"/>
<pinref part="X1" gate="-20" pin="1"/>
<wire x1="30.48" y1="7.62" x2="19.05" y2="7.62" width="0.1524" layer="91"/>
<wire x1="30.48" y1="53.34" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="40.64" y1="53.34" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
<junction x="30.48" y="53.34"/>
<wire x1="40.64" y1="30.48" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
<wire x1="76.2" y1="30.48" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="C"/>
<wire x1="76.2" y1="38.1" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<wire x1="76.2" y1="53.34" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<wire x1="76.2" y1="60.96" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
<wire x1="76.2" y1="76.2" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
<wire x1="76.2" y1="83.82" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
<wire x1="76.2" y1="91.44" x2="68.58" y2="91.44" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G$1" pin="C"/>
<wire x1="68.58" y1="83.82" x2="76.2" y2="83.82" width="0.1524" layer="91"/>
<junction x="76.2" y="83.82"/>
<pinref part="LED3" gate="G$1" pin="C"/>
<wire x1="68.58" y1="76.2" x2="76.2" y2="76.2" width="0.1524" layer="91"/>
<junction x="76.2" y="76.2"/>
<pinref part="LED4" gate="G$1" pin="C"/>
<wire x1="68.58" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<junction x="76.2" y="68.58"/>
<pinref part="LED5" gate="G$1" pin="C"/>
<wire x1="68.58" y1="60.96" x2="76.2" y2="60.96" width="0.1524" layer="91"/>
<junction x="76.2" y="60.96"/>
<pinref part="LED6" gate="G$1" pin="C"/>
<wire x1="68.58" y1="53.34" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<junction x="76.2" y="53.34"/>
<pinref part="LED7" gate="G$1" pin="C"/>
<wire x1="68.58" y1="45.72" x2="76.2" y2="45.72" width="0.1524" layer="91"/>
<junction x="76.2" y="45.72"/>
<pinref part="LED8" gate="G$1" pin="C"/>
<wire x1="68.58" y1="38.1" x2="76.2" y2="38.1" width="0.1524" layer="91"/>
<junction x="76.2" y="38.1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X3" gate="-3" pin="1"/>
<pinref part="X1" gate="-3" pin="1"/>
<wire x1="-6.35" y1="50.8" x2="19.05" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X3" gate="-4" pin="1"/>
<pinref part="X1" gate="-4" pin="1"/>
<wire x1="-6.35" y1="48.26" x2="19.05" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X3" gate="-5" pin="1"/>
<pinref part="X1" gate="-5" pin="1"/>
<wire x1="-6.35" y1="45.72" x2="19.05" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X3" gate="-6" pin="1"/>
<pinref part="X1" gate="-6" pin="1"/>
<wire x1="-6.35" y1="43.18" x2="19.05" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X3" gate="-7" pin="1"/>
<pinref part="X1" gate="-7" pin="1"/>
<wire x1="-6.35" y1="40.64" x2="19.05" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="X3" gate="-8" pin="1"/>
<pinref part="X1" gate="-8" pin="1"/>
<wire x1="-6.35" y1="38.1" x2="19.05" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="X3" gate="-9" pin="1"/>
<pinref part="X1" gate="-9" pin="1"/>
<wire x1="-6.35" y1="35.56" x2="19.05" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="X3" gate="-10" pin="1"/>
<pinref part="X1" gate="-10" pin="1"/>
<wire x1="-6.35" y1="33.02" x2="19.05" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="X3" gate="-11" pin="1"/>
<pinref part="X1" gate="-11" pin="1"/>
<wire x1="-6.35" y1="30.48" x2="19.05" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="X3" gate="-12" pin="1"/>
<pinref part="X1" gate="-12" pin="1"/>
<wire x1="-6.35" y1="27.94" x2="19.05" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="X3" gate="-13" pin="1"/>
<pinref part="X1" gate="-13" pin="1"/>
<wire x1="-6.35" y1="25.4" x2="19.05" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="X3" gate="-14" pin="1"/>
<wire x1="-6.35" y1="22.86" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="22.86" x2="15.24" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X1" gate="-15" pin="1"/>
<wire x1="15.24" y1="20.32" x2="19.05" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="X3" gate="-15" pin="1"/>
<wire x1="-6.35" y1="20.32" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="12.7" y1="20.32" x2="12.7" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="-16" pin="1"/>
<wire x1="12.7" y1="17.78" x2="19.05" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="X3" gate="-16" pin="1"/>
<wire x1="-6.35" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="10.16" y1="17.78" x2="10.16" y2="15.24" width="0.1524" layer="91"/>
<pinref part="X1" gate="-17" pin="1"/>
<wire x1="10.16" y1="15.24" x2="19.05" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X3" gate="-17" pin="1"/>
<wire x1="-6.35" y1="15.24" x2="7.62" y2="15.24" width="0.1524" layer="91"/>
<wire x1="7.62" y1="15.24" x2="7.62" y2="12.7" width="0.1524" layer="91"/>
<pinref part="X1" gate="-18" pin="1"/>
<wire x1="7.62" y1="12.7" x2="19.05" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="X3" gate="-18" pin="1"/>
<wire x1="-6.35" y1="12.7" x2="5.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X1" gate="-19" pin="1"/>
<wire x1="5.08" y1="10.16" x2="19.05" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="-6.35" y1="86.36" x2="53.34" y2="86.36" width="0.1524" layer="91"/>
<wire x1="53.34" y1="86.36" x2="53.34" y2="91.44" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="53.34" y1="91.44" x2="60.96" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="X2" gate="-2" pin="1"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<wire x1="-6.35" y1="83.82" x2="60.96" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="X2" gate="-3" pin="1"/>
<wire x1="-6.35" y1="81.28" x2="58.42" y2="81.28" width="0.1524" layer="91"/>
<wire x1="58.42" y1="81.28" x2="58.42" y2="76.2" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G$1" pin="A"/>
<wire x1="58.42" y1="76.2" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="X2" gate="-4" pin="1"/>
<wire x1="-6.35" y1="78.74" x2="55.88" y2="78.74" width="0.1524" layer="91"/>
<wire x1="55.88" y1="78.74" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
<pinref part="LED4" gate="G$1" pin="A"/>
<wire x1="55.88" y1="68.58" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="X2" gate="-5" pin="1"/>
<wire x1="-6.35" y1="76.2" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<wire x1="53.34" y1="76.2" x2="53.34" y2="60.96" width="0.1524" layer="91"/>
<pinref part="LED5" gate="G$1" pin="A"/>
<wire x1="53.34" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="X2" gate="-6" pin="1"/>
<wire x1="-6.35" y1="73.66" x2="50.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="50.8" y1="73.66" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
<pinref part="LED6" gate="G$1" pin="A"/>
<wire x1="50.8" y1="53.34" x2="60.96" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="X2" gate="-7" pin="1"/>
<wire x1="-6.35" y1="71.12" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="45.72" width="0.1524" layer="91"/>
<pinref part="LED7" gate="G$1" pin="A"/>
<wire x1="48.26" y1="45.72" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="X2" gate="-8" pin="1"/>
<wire x1="-6.35" y1="68.58" x2="45.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="45.72" y1="68.58" x2="45.72" y2="38.1" width="0.1524" layer="91"/>
<pinref part="LED8" gate="G$1" pin="A"/>
<wire x1="45.72" y1="38.1" x2="60.96" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, Eagle supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
</compatibility>
</eagle>
