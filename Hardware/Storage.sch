EESchema Schematic File Version 4
LIBS:VLAD-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Connector:Micro_SD_Card J?
U 1 1 6076D0A1
P 7200 3500
F 0 "J?" H 7150 4217 50  0000 C CNN
F 1 "Micro_SD_Card" H 7150 4126 50  0000 C CNN
F 2 "" H 8350 3800 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 7200 3500 50  0001 C CNN
	1    7200 3500
	1    0    0    -1  
$EndComp
NoConn ~ 6300 3900
NoConn ~ 6300 3200
Wire Wire Line
	6300 3300 6150 3300
Wire Wire Line
	6300 3400 6150 3400
Wire Wire Line
	6300 3600 6150 3600
Wire Wire Line
	6300 3800 6150 3800
Text HLabel 6150 3300 0    50   Input ~ 0
CS
Text HLabel 6150 3400 0    50   Input ~ 0
MOSI
Text HLabel 6150 3600 0    50   Input ~ 0
SCLK
Text HLabel 6150 3800 0    50   Output ~ 0
MISO
Wire Wire Line
	6300 3700 5850 3700
Wire Wire Line
	5850 3700 5850 3900
$Comp
L power:GND #PWR0111
U 1 1 6076EA86
P 5850 3900
F 0 "#PWR0111" H 5850 3650 50  0001 C CNN
F 1 "GND" H 5855 3727 50  0000 C CNN
F 2 "" H 5850 3900 50  0001 C CNN
F 3 "" H 5850 3900 50  0001 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3500 5850 3500
Wire Wire Line
	5850 3500 5850 3450
$Comp
L Device:C_Small C?
U 1 1 607752E1
P 5500 3650
F 0 "C?" H 5592 3696 50  0000 L CNN
F 1 "10uF" H 5592 3605 50  0000 L CNN
F 2 "" H 5500 3650 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60775C8F
P 5150 3650
F 0 "C?" H 5242 3696 50  0000 L CNN
F 1 "0.1uF" H 5242 3605 50  0000 L CNN
F 2 "" H 5150 3650 50  0001 C CNN
F 3 "~" H 5150 3650 50  0001 C CNN
	1    5150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5500 3500
Connection ~ 5850 3500
Wire Wire Line
	5500 3550 5500 3500
Connection ~ 5500 3500
Wire Wire Line
	5150 3750 5150 3800
Wire Wire Line
	5500 3800 5500 3750
Wire Wire Line
	5150 3800 5150 3850
Connection ~ 5150 3800
$Comp
L power:GND #PWR0112
U 1 1 60776AC1
P 5150 3850
F 0 "#PWR0112" H 5150 3600 50  0001 C CNN
F 1 "GND" H 5155 3677 50  0000 C CNN
F 2 "" H 5150 3850 50  0001 C CNN
F 3 "" H 5150 3850 50  0001 C CNN
	1    5150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0113
U 1 1 6077704D
P 5850 3450
F 0 "#PWR0113" H 5850 3300 50  0001 C CNN
F 1 "+3V3" H 5865 3623 50  0000 C CNN
F 2 "" H 5850 3450 50  0001 C CNN
F 3 "" H 5850 3450 50  0001 C CNN
	1    5850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4100 8050 4100
Wire Wire Line
	8050 4100 8050 4150
$Comp
L power:GND #PWR0114
U 1 1 6077770E
P 8050 4150
F 0 "#PWR0114" H 8050 3900 50  0001 C CNN
F 1 "GND" H 8055 3977 50  0000 C CNN
F 2 "" H 8050 4150 50  0001 C CNN
F 3 "" H 8050 4150 50  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3500 5150 3550
Wire Wire Line
	5150 3500 5500 3500
Wire Wire Line
	5150 3800 5500 3800
$EndSCHEMATC
