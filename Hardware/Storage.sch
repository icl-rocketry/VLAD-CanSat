EESchema Schematic File Version 4
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
L Connector:Micro_SD_Card J3
U 1 1 6076D0A1
P 7800 3850
F 0 "J3" H 7750 4567 50  0000 C CNN
F 1 "Micro_SD_Card" H 7750 4476 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 8950 4150 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 7800 3850 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
NoConn ~ 6900 4250
NoConn ~ 6900 3550
Wire Wire Line
	6900 3650 6750 3650
Wire Wire Line
	6900 3750 6750 3750
Wire Wire Line
	6900 3950 6750 3950
Wire Wire Line
	6900 4150 6750 4150
Text HLabel 6750 3650 0    50   Input ~ 0
CS
Text HLabel 6750 3750 0    50   Input ~ 0
MOSI
Text HLabel 6750 3950 0    50   Input ~ 0
SCLK
Text HLabel 6750 4150 0    50   Output ~ 0
MISO
Wire Wire Line
	6900 4050 6450 4050
Wire Wire Line
	6450 4050 6450 4250
$Comp
L power:GND #PWR019
U 1 1 6076EA86
P 6450 4250
F 0 "#PWR019" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6455 4077 50  0000 C CNN
F 2 "" H 6450 4250 50  0001 C CNN
F 3 "" H 6450 4250 50  0001 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3850 6450 3850
Wire Wire Line
	6450 3850 6450 3800
$Comp
L Device:C_Small C6
U 1 1 607752E1
P 6100 4000
F 0 "C6" H 6192 4046 50  0000 L CNN
F 1 "10uF" H 6192 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 4000 50  0001 C CNN
F 3 "~" H 6100 4000 50  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 60775C8F
P 5750 4000
F 0 "C5" H 5842 4046 50  0000 L CNN
F 1 "0.1uF" H 5842 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5750 4000 50  0001 C CNN
F 3 "~" H 5750 4000 50  0001 C CNN
	1    5750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3850 6100 3850
Connection ~ 6450 3850
Wire Wire Line
	6100 3900 6100 3850
Connection ~ 6100 3850
Wire Wire Line
	5750 4100 5750 4150
Wire Wire Line
	6100 4150 6100 4100
Wire Wire Line
	5750 4150 5750 4200
Connection ~ 5750 4150
$Comp
L power:GND #PWR017
U 1 1 60776AC1
P 5750 4200
F 0 "#PWR017" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5755 4027 50  0000 C CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR018
U 1 1 6077704D
P 6450 3800
F 0 "#PWR018" H 6450 3650 50  0001 C CNN
F 1 "+3V3" H 6465 3973 50  0000 C CNN
F 2 "" H 6450 3800 50  0001 C CNN
F 3 "" H 6450 3800 50  0001 C CNN
	1    6450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4450 8650 4450
Wire Wire Line
	8650 4450 8650 4500
$Comp
L power:GND #PWR020
U 1 1 6077770E
P 8650 4500
F 0 "#PWR020" H 8650 4250 50  0001 C CNN
F 1 "GND" H 8655 4327 50  0000 C CNN
F 2 "" H 8650 4500 50  0001 C CNN
F 3 "" H 8650 4500 50  0001 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3850 5750 3900
Wire Wire Line
	5750 3850 6100 3850
Wire Wire Line
	5750 4150 6100 4150
$Comp
L Device:LED SDLED1
U 1 1 60A97C81
P 4500 3800
AR Path="/6068D50F/60A97C81" Ref="SDLED1"  Part="1" 
AR Path="/606B714B/60A97C81" Ref="SDLED?"  Part="1" 
F 0 "SDLED1" H 4493 3545 50  0000 C CNN
F 1 "LED" H 4493 3636 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4500 3800 50  0001 C CNN
F 3 "~" H 4500 3800 50  0001 C CNN
	1    4500 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3800 4050 3800
Wire Wire Line
	3500 3800 3350 3800
Wire Wire Line
	3350 3800 3350 3700
$Comp
L power:+3V3 #PWR015
U 1 1 60A97C8A
P 3350 3700
F 0 "#PWR015" H 3350 3550 50  0001 C CNN
F 1 "+3V3" H 3365 3873 50  0000 C CNN
F 2 "" H 3350 3700 50  0001 C CNN
F 3 "" H 3350 3700 50  0001 C CNN
	1    3350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60A97C90
P 4150 3800
F 0 "R12" V 3954 3800 50  0000 C CNN
F 1 "1k" V 4045 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4150 3800 50  0001 C CNN
F 3 "~" H 4150 3800 50  0001 C CNN
	1    4150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3800 4350 3800
Wire Wire Line
	4650 3800 4750 3800
Wire Wire Line
	4750 3800 4750 3900
$Comp
L power:GND #PWR016
U 1 1 60A97C99
P 4750 3900
F 0 "#PWR016" H 4750 3650 50  0001 C CNN
F 1 "GND" H 4755 3727 50  0000 C CNN
F 2 "" H 4750 3900 50  0001 C CNN
F 3 "" H 4750 3900 50  0001 C CNN
	1    4750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 60A97C9F
P 3700 4300
AR Path="/6068D50F/60A97C9F" Ref="R11"  Part="1" 
AR Path="/606B714B/60A97C9F" Ref="R?"  Part="1" 
F 0 "R11" H 3641 4254 50  0000 R CNN
F 1 "12k" H 3641 4345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 4300 50  0001 C CNN
F 3 "~" H 3700 4300 50  0001 C CNN
	1    3700 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 4100 3700 4200
Wire Wire Line
	3700 4400 3700 4500
Wire Wire Line
	3700 4500 3600 4500
Text HLabel 3600 4500 0    50   Input ~ 0
CS
Text Notes 3250 3400 0    50   ~ 0
Note: Optional, remove if not enough space
$Comp
L Transistor_BJT:S8550 Q3
U 1 1 60A97CAA
P 3700 3900
F 0 "Q3" V 4028 3900 50  0000 C CNN
F 1 "S8550" V 3937 3900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3900 3825 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 3700 3900 50  0001 L CNN
	1    3700 3900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
