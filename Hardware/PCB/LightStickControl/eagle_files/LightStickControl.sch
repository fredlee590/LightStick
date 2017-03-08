<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="14" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="freddyLibr">
<packages>
<package name="SOT-223">
<wire x1="-3.15" y1="1.86" x2="3.15" y2="1.86" width="0.127" layer="21"/>
<wire x1="3.15" y1="1.86" x2="3.15" y2="-1.85" width="0.127" layer="21"/>
<wire x1="3.15" y1="-1.85" x2="-3.15" y2="-1.85" width="0.127" layer="21"/>
<wire x1="-3.15" y1="-1.85" x2="-3.15" y2="1.85" width="0.127" layer="21"/>
<smd name="VOUT2" x="0" y="2.75" dx="2.9" dy="1.65" layer="1"/>
<smd name="VOUT1" x="0" y="-2.8" dx="0.61" dy="1.75" layer="1"/>
<smd name="GND" x="-2.3" y="-2.8" dx="0.61" dy="1.75" layer="1"/>
<smd name="VIN" x="2.3" y="-2.8" dx="0.61" dy="1.75" layer="1"/>
<text x="3.81" y="0" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="USB_A_932">
<pad name="VCC" x="-3.5" y="-2.1" drill="0.8"/>
<pad name="D-" x="-1" y="-2.1" drill="0.8"/>
<pad name="D+" x="1" y="-2.1" drill="0.8"/>
<pad name="GND" x="3.5" y="-2.1" drill="0.8"/>
<hole x="-2.3" y="0" drill="1.1"/>
<hole x="2.3" y="0" drill="1.1"/>
<wire x1="6.3" y1="1.25" x2="5.4" y2="1.25" width="0.127" layer="46"/>
<wire x1="5.4" y1="1.25" x2="5.4" y2="-1.25" width="0.127" layer="46"/>
<wire x1="5.4" y1="-1.25" x2="6.3" y2="-1.25" width="0.127" layer="46"/>
<wire x1="6.3" y1="-1.25" x2="6.3" y2="1.25" width="0.127" layer="46"/>
<wire x1="-6.3" y1="1.25" x2="-5.4" y2="1.25" width="0.127" layer="46"/>
<wire x1="-5.4" y1="1.25" x2="-5.4" y2="-1.25" width="0.127" layer="46"/>
<wire x1="-5.4" y1="-1.25" x2="-6.3" y2="-1.25" width="0.127" layer="46"/>
<wire x1="-6.3" y1="-1.25" x2="-6.3" y2="1.25" width="0.127" layer="46"/>
<wire x1="-5.85" y1="2.5" x2="-5.85" y2="1.45" width="0.127" layer="21"/>
<wire x1="5.85" y1="2.5" x2="5.85" y2="1.45" width="0.127" layer="21"/>
<wire x1="-5" y1="-1" x2="5" y2="-1" width="0.127" layer="21"/>
<text x="6" y="-3.5" size="1.27" layer="25">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="AP2114H">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<pin name="VIN" x="-2.54" y="-10.16" length="middle" rot="R90"/>
<pin name="VOUT1" x="0" y="-10.16" length="middle" rot="R90"/>
<pin name="GND" x="2.54" y="-10.16" length="middle" rot="R90"/>
<pin name="VOUT2" x="0" y="10.16" length="middle" rot="R270"/>
</symbol>
<symbol name="USB_A_932">
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<pin name="VCC" x="-5.08" y="-10.16" length="middle" rot="R90"/>
<pin name="D-" x="-2.54" y="-10.16" length="middle" rot="R90"/>
<pin name="D+" x="2.54" y="-10.16" length="middle" rot="R90"/>
<pin name="GND" x="5.08" y="-10.16" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VOLTAGE_REGULATOR_AP2114H" prefix="V">
<gates>
<gate name="G$1" symbol="AP2114H" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT-223">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="VOUT1" pad="VOUT1"/>
<connect gate="G$1" pin="VOUT2" pad="VOUT2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="USB_A_932" prefix="USB">
<description>USB A Plug. Through hole.</description>
<gates>
<gate name="G$1" symbol="USB_A_932" x="0" y="0"/>
</gates>
<devices>
<device name="" package="USB_A_932">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="trinketLib">
<packages>
<package name="ARDUINO_TRINKET">
<pad name="PB4" x="-6.35" y="0" drill="1"/>
<pad name="PB1" x="6.35" y="0" drill="1"/>
<pad name="GND" x="-6.35" y="2.54" drill="1"/>
<pad name="BATT" x="-6.35" y="5.08" drill="1"/>
<pad name="PB3" x="-6.35" y="-2.54" drill="1"/>
<pad name="RST" x="-6.35" y="-5.08" drill="1"/>
<pad name="PB0" x="6.35" y="2.54" drill="1"/>
<pad name="5V" x="6.35" y="5.08" drill="1"/>
<pad name="PB2" x="6.35" y="-2.54" drill="1"/>
<pad name="3.3V" x="6.35" y="-5.08" drill="1"/>
<wire x1="-7.62" y1="17.02" x2="7.62" y2="17.02" width="0.127" layer="21"/>
<wire x1="7.62" y1="17.02" x2="7.62" y2="-10.92" width="0.127" layer="21"/>
<wire x1="7.62" y1="-10.92" x2="3.56" y2="-10.92" width="0.127" layer="21"/>
<wire x1="3.56" y1="-10.92" x2="2.03" y2="-12.45" width="0.127" layer="21"/>
<wire x1="2.03" y1="-12.45" x2="-5.09" y2="-12.45" width="0.127" layer="21"/>
<wire x1="-5.09" y1="-12.45" x2="-6.86" y2="-10.68" width="0.127" layer="21"/>
<wire x1="-6.86" y1="-10.68" x2="-7.62" y2="-10.68" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-10.68" x2="-7.62" y2="17.02" width="0.127" layer="21"/>
<text x="-5" y="5" size="0.6096" layer="21">BATT</text>
<text x="-5" y="2.54" size="0.6096" layer="21">GND</text>
<text x="-5" y="0" size="0.6096" layer="21">PB4</text>
<text x="-5" y="-2.54" size="0.6096" layer="21">PB3</text>
<text x="-5" y="-5.08" size="0.6096" layer="21">RST</text>
<text x="3.75" y="-5.08" size="0.6096" layer="21">3.3V</text>
<text x="3.82" y="-2.54" size="0.6096" layer="21">PB2</text>
<text x="3.75" y="0" size="0.6096" layer="21">PB1</text>
<text x="3.75" y="2.54" size="0.6096" layer="21">PB0</text>
<text x="4.34" y="5.07" size="0.6096" layer="21">5V</text>
<text x="2.54" y="17.78" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_TRINKET">
<wire x1="-5" y1="10" x2="5" y2="10" width="0.254" layer="94"/>
<wire x1="5" y1="10" x2="5" y2="-10" width="0.254" layer="94"/>
<wire x1="5" y1="-10" x2="-5" y2="-10" width="0.254" layer="94"/>
<wire x1="-5" y1="-10" x2="-5" y2="10" width="0.254" layer="94"/>
<pin name="BATT" x="-10.15" y="8.5" length="middle"/>
<pin name="GND" x="-10.15" y="6" length="middle"/>
<pin name="PB4" x="-10.15" y="3.5" length="middle"/>
<pin name="PB3" x="-10.15" y="1" length="middle"/>
<pin name="RST" x="-10.15" y="-1.5" length="middle"/>
<pin name="3.3V" x="10.15" y="-1.5" length="middle" rot="R180"/>
<pin name="PB2" x="10.15" y="1" length="middle" rot="R180"/>
<pin name="PB1" x="10.15" y="3.5" length="middle" rot="R180"/>
<pin name="PB0" x="10.15" y="6" length="middle" rot="R180"/>
<pin name="5V" x="10.15" y="8.5" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_TRINKET" prefix="MCU">
<description>Microcontroller package Arduino Trinket by Adafruit. 3.3V variety.</description>
<gates>
<gate name="G$1" symbol="ARDUINO_TRINKET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_TRINKET">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="BATT" pad="BATT"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="PB0" pad="PB0"/>
<connect gate="G$1" pin="PB1" pad="PB1"/>
<connect gate="G$1" pin="PB2" pad="PB2"/>
<connect gate="G$1" pin="PB3" pad="PB3"/>
<connect gate="G$1" pin="PB4" pad="PB4"/>
<connect gate="G$1" pin="RST" pad="RST"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="V1" library="freddyLibr" deviceset="VOLTAGE_REGULATOR_AP2114H" device=""/>
<part name="USB1" library="freddyLibr" deviceset="USB_A_932" device=""/>
<part name="MCU1" library="trinketLib" deviceset="ARDUINO_TRINKET" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="V1" gate="G$1" x="53.34" y="30.48" rot="R180"/>
<instance part="USB1" gate="G$1" x="68.58" y="53.34" rot="R270"/>
<instance part="MCU1" gate="G$1" x="22.86" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="40.64" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<pinref part="USB1" gate="G$1" pin="GND"/>
<wire x1="50.8" y1="48.26" x2="58.42" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="USB1" gate="G$1" pin="VCC"/>
<wire x1="58.42" y1="58.42" x2="53.34" y2="58.42" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="63.5" width="0.1524" layer="91"/>
<wire x1="53.34" y1="63.5" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<wire x1="76.2" y1="63.5" x2="76.2" y2="43.18" width="0.1524" layer="91"/>
<wire x1="76.2" y1="43.18" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
<pinref part="V1" gate="G$1" pin="VIN"/>
<wire x1="55.88" y1="43.18" x2="55.88" y2="40.64" width="0.1524" layer="91"/>
<wire x1="53.34" y1="58.42" x2="12.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="12.7" y1="58.42" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="V1" gate="G$1" pin="VOUT2"/>
<wire x1="53.34" y1="20.32" x2="53.34" y2="17.78" width="0.1524" layer="91"/>
<wire x1="53.34" y1="17.78" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="USB1" gate="G$1" pin="D-"/>
<wire x1="58.42" y1="55.88" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<wire x1="55.88" y1="55.88" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
<pinref part="USB1" gate="G$1" pin="D+"/>
<wire x1="55.88" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
