EESchema Schematic File Version 4
LIBS:TransistorSwitchSimulation-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Transistor Operating As A Switch Simulation"
Date "2019-06-13"
Rev "1.0"
Comp "Woolsey Workshop"
Comment1 "by John Woolsey"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:VSOURCE V1
U 1 1 5D02AC4D
P 3300 1600
F 0 "V1" H 3528 1646 50  0000 L CNN
F 1 "sin(5 100m 10k)" H 3528 1555 50  0000 L CNN
F 2 "" H 3300 1600 50  0001 C CNN
F 3 "~" H 3300 1600 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5D02BF5A
P 5850 1700
F 0 "Q1" H 6040 1746 50  0000 L CNN
F 1 "PN2222A" H 6040 1655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6050 1625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 5850 1700 50  0001 L CNN
F 4 "Q" H 5850 1700 50  0001 C CNN "Spice_Primitive"
F 5 "2N2222" H 5850 1700 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5850 1700 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "3 2 1" H 5850 1700 50  0001 C CNN "Spice_Node_Sequence"
F 8 "2N2222.LIB" H 5850 1700 50  0001 C CNN "Spice_Lib_File"
	1    5850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D02DCA7
P 5950 1200
F 0 "R2" H 6018 1246 50  0000 L CNN
F 1 "150" H 6018 1155 50  0000 L CNN
F 2 "" V 5990 1190 50  0001 C CNN
F 3 "~" H 5950 1200 50  0001 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5D02F0C1
P 5350 1700
F 0 "R1" V 5555 1700 50  0000 C CNN
F 1 "1k" V 5464 1700 50  0000 C CNN
F 2 "" V 5390 1690 50  0001 C CNN
F 3 "~" H 5350 1700 50  0001 C CNN
	1    5350 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D035EA2
P 5950 1900
F 0 "#PWR02" H 5950 1650 50  0001 C CNN
F 1 "GND" H 5955 1727 50  0000 C CNN
F 2 "" H 5950 1900 50  0001 C CNN
F 3 "" H 5950 1900 50  0001 C CNN
	1    5950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D036E50
P 3300 1900
F 0 "#PWR01" H 3300 1650 50  0001 C CNN
F 1 "GND" H 3305 1727 50  0000 C CNN
F 2 "" H 3300 1900 50  0001 C CNN
F 3 "" H 3300 1900 50  0001 C CNN
	1    3300 1900
	1    0    0    -1  
$EndComp
Text GLabel 3300 1300 1    50   Input ~ 0
Vin
Text GLabel 5200 1700 0    50   Input ~ 0
Vin
Text GLabel 5950 1050 1    50   Input ~ 0
Vcc
$Comp
L pspice:VSOURCE V2
U 1 1 5D09E645
P 4600 1600
F 0 "V2" H 4828 1646 50  0000 L CNN
F 1 "5" H 4828 1555 50  0000 L CNN
F 2 "" H 4600 1600 50  0001 C CNN
F 3 "~" H 4600 1600 50  0001 C CNN
	1    4600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D09F686
P 4600 1900
F 0 "#PWR03" H 4600 1650 50  0001 C CNN
F 1 "GND" H 4605 1727 50  0000 C CNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
Text GLabel 4600 1300 1    50   Input ~ 0
Vcc
Wire Wire Line
	5950 1350 5950 1500
Wire Wire Line
	5650 1700 5500 1700
Text Label 5950 1450 0    50   ~ 0
Vc
Text Label 5550 1700 0    50   ~ 0
Vb
Text Notes 5450 1200 2    50   ~ 0
.tran 1u 1m
$EndSCHEMATC
