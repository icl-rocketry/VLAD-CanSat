EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:RFM95W-868S2 U?
U 1 1 606C3788
P 5900 3950
F 0 "U?" H 5900 4631 50  0000 C CNN
F 1 "RFM95W-868S2" H 5900 4540 50  0000 C CNN
F 2 "" H 2600 5600 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 2600 5600 50  0001 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3750 5250 3750
Wire Wire Line
	5400 3850 5250 3850
Wire Wire Line
	5400 3650 5250 3650
Text HLabel 5250 3650 0    50   Input ~ 0
SCLK
Text HLabel 5250 3750 0    50   Input ~ 0
MOSI
Text HLabel 5250 3850 0    50   Output ~ 0
MISO
Wire Wire Line
	5400 3950 5250 3950
Text HLabel 5250 3950 0    50   Input ~ 0
CS
Wire Wire Line
	5800 4550 5900 4550
Connection ~ 5900 4550
Wire Wire Line
	5900 4550 6000 4550
Wire Wire Line
	5900 4550 5900 4650
$Comp
L power:GND #PWR0106
U 1 1 606C4DD1
P 5900 4650
F 0 "#PWR0106" H 5900 4400 50  0001 C CNN
F 1 "GND" H 5905 4477 50  0000 C CNN
F 2 "" H 5900 4650 50  0001 C CNN
F 3 "" H 5900 4650 50  0001 C CNN
	1    5900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4150 5250 4150
Text HLabel 5250 4150 0    50   Input ~ 0
Reset
NoConn ~ 6400 4250
NoConn ~ 6400 4150
NoConn ~ 6400 4050
NoConn ~ 6400 3950
NoConn ~ 6400 3850
Wire Wire Line
	6400 4350 6600 4350
Text HLabel 6600 4350 2    50   Output ~ 0
RxTxDone
Wire Wire Line
	5900 3150 6000 3150
Connection ~ 5900 3150
$Comp
L Device:C_Small C?
U 1 1 606D342D
P 6100 3150
F 0 "C?" V 5871 3150 50  0000 C CNN
F 1 "0.1nF" V 5962 3150 50  0000 C CNN
F 2 "" H 6100 3150 50  0001 C CNN
F 3 "~" H 6100 3150 50  0001 C CNN
	1    6100 3150
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 606D3D70
P 5900 2750
F 0 "#PWR0108" H 5900 2600 50  0001 C CNN
F 1 "+3V3" H 5915 2923 50  0000 C CNN
F 2 "" H 5900 2750 50  0001 C CNN
F 3 "" H 5900 2750 50  0001 C CNN
	1    5900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3150 5900 3450
Wire Wire Line
	6200 3150 6300 3150
Wire Wire Line
	6300 3150 6300 3000
Wire Wire Line
	5900 2750 5900 2850
Wire Wire Line
	5900 2850 6000 2850
Connection ~ 5900 2850
Wire Wire Line
	6300 2850 6200 2850
Wire Wire Line
	5900 2850 5900 3150
$Comp
L Device:C_Small C?
U 1 1 606DCDA4
P 6100 2850
F 0 "C?" V 5871 2850 50  0000 C CNN
F 1 "10nF" V 5962 2850 50  0000 C CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "~" H 6100 2850 50  0001 C CNN
	1    6100 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 606DD712
P 6300 3000
F 0 "#PWR0109" H 6300 2750 50  0001 C CNN
F 1 "GND" V 6305 2872 50  0000 R CNN
F 2 "" H 6300 3000 50  0001 C CNN
F 3 "" H 6300 3000 50  0001 C CNN
	1    6300 3000
	0    -1   -1   0   
$EndComp
Connection ~ 6300 3000
Wire Wire Line
	6300 3000 6300 2850
Wire Wire Line
	6400 3650 6650 3650
$Comp
L Device:Antenna AE?
U 1 1 606E40D7
P 6850 3650
F 0 "AE?" V 6804 3780 50  0000 L CNN
F 1 "Antenna" V 6895 3780 50  0000 L CNN
F 2 "" H 6850 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
	1    6850 3650
	0    1    1    0   
$EndComp
Text Notes 6350 2800 0    50   ~ 0
Note: Decoupling capacitors guessed\nbased off of RICARDO; manufacturer\ndoes not provide a value
$EndSCHEMATC
