EESchema Schematic File Version 4
LIBS:VLAD-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L RF_Module:RFM95W-868S2 U2
U 1 1 606C3788
P 6550 3750
F 0 "U2" H 6550 4431 50  0000 C CNN
F 1 "RFM95W-868S2" H 6550 4340 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 3250 5400 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 3250 5400 50  0001 C CNN
	1    6550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3550 5900 3550
Wire Wire Line
	6050 3650 5900 3650
Wire Wire Line
	6050 3450 5900 3450
Text HLabel 5900 3450 0    50   Input ~ 0
SCLK
Text HLabel 5900 3550 0    50   Input ~ 0
MOSI
Text HLabel 5900 3650 0    50   Output ~ 0
MISO
Wire Wire Line
	6050 3750 5900 3750
Text HLabel 5900 3750 0    50   Input ~ 0
CS
Wire Wire Line
	6450 4350 6550 4350
Connection ~ 6550 4350
Wire Wire Line
	6550 4350 6650 4350
Wire Wire Line
	6550 4350 6550 4450
$Comp
L power:GND #PWR024
U 1 1 606C4DD1
P 6550 4450
F 0 "#PWR024" H 6550 4200 50  0001 C CNN
F 1 "GND" H 6555 4277 50  0000 C CNN
F 2 "" H 6550 4450 50  0001 C CNN
F 3 "" H 6550 4450 50  0001 C CNN
	1    6550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3950 5900 3950
Text HLabel 5900 3950 0    50   Input ~ 0
Reset
NoConn ~ 7050 4050
NoConn ~ 7050 3950
NoConn ~ 7050 3850
NoConn ~ 7050 3750
NoConn ~ 7050 3650
Wire Wire Line
	7050 4150 7250 4150
Text HLabel 7250 4150 2    50   Output ~ 0
RxTxDone
Wire Wire Line
	6550 2950 6650 2950
Connection ~ 6550 2950
$Comp
L Device:C_Small C8
U 1 1 606D342D
P 6750 2950
F 0 "C8" V 6521 2950 50  0000 C CNN
F 1 "0.1nF" V 6612 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6750 2950 50  0001 C CNN
F 3 "~" H 6750 2950 50  0001 C CNN
	1    6750 2950
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR023
U 1 1 606D3D70
P 6550 2550
F 0 "#PWR023" H 6550 2400 50  0001 C CNN
F 1 "+3V3" H 6565 2723 50  0000 C CNN
F 2 "" H 6550 2550 50  0001 C CNN
F 3 "" H 6550 2550 50  0001 C CNN
	1    6550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2950 6550 3250
Wire Wire Line
	6850 2950 6950 2950
Wire Wire Line
	6950 2950 6950 2800
Wire Wire Line
	6550 2550 6550 2650
Wire Wire Line
	6550 2650 6650 2650
Connection ~ 6550 2650
Wire Wire Line
	6950 2650 6850 2650
Wire Wire Line
	6550 2650 6550 2950
$Comp
L Device:C_Small C7
U 1 1 606DCDA4
P 6750 2650
F 0 "C7" V 6521 2650 50  0000 C CNN
F 1 "10nF" V 6612 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6750 2650 50  0001 C CNN
F 3 "~" H 6750 2650 50  0001 C CNN
	1    6750 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 606DD712
P 6950 2800
F 0 "#PWR025" H 6950 2550 50  0001 C CNN
F 1 "GND" V 6955 2672 50  0000 R CNN
F 2 "" H 6950 2800 50  0001 C CNN
F 3 "" H 6950 2800 50  0001 C CNN
	1    6950 2800
	0    -1   -1   0   
$EndComp
Connection ~ 6950 2800
Wire Wire Line
	6950 2800 6950 2650
Wire Wire Line
	7050 3450 7300 3450
$Comp
L Device:Antenna AE1
U 1 1 606E40D7
P 7500 3450
F 0 "AE1" V 7454 3580 50  0000 L CNN
F 1 "Antenna" V 7545 3580 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.1mm_L8.5mm_W2.5mm_FlatFork" H 7500 3450 50  0001 C CNN
F 3 "~" H 7500 3450 50  0001 C CNN
	1    7500 3450
	0    1    1    0   
$EndComp
Text Notes 7000 2600 0    50   ~ 0
Note: Decoupling capacitors guessed\nbased off of RICARDO; manufacturer\ndoes not provide a value
$Comp
L Device:LED SDLED?
U 1 1 60A90342
P 4600 3650
AR Path="/6068D50F/60A90342" Ref="SDLED?"  Part="1" 
AR Path="/606B714B/60A90342" Ref="SDLED2"  Part="1" 
F 0 "SDLED2" H 4593 3395 50  0000 C CNN
F 1 "LED" H 4593 3486 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4600 3650 50  0001 C CNN
F 3 "~" H 4600 3650 50  0001 C CNN
	1    4600 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 3650 4150 3650
Wire Wire Line
	3600 3650 3450 3650
Wire Wire Line
	3450 3650 3450 3550
$Comp
L power:+3V3 #PWR021
U 1 1 60A9034C
P 3450 3550
F 0 "#PWR021" H 3450 3400 50  0001 C CNN
F 1 "+3V3" H 3465 3723 50  0000 C CNN
F 2 "" H 3450 3550 50  0001 C CNN
F 3 "" H 3450 3550 50  0001 C CNN
	1    3450 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 60A90352
P 4250 3650
F 0 "R14" V 4054 3650 50  0000 C CNN
F 1 "1k" V 4145 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 3650 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3650 4450 3650
Wire Wire Line
	4750 3650 4850 3650
Wire Wire Line
	4850 3650 4850 3750
$Comp
L power:GND #PWR022
U 1 1 60A9035B
P 4850 3750
F 0 "#PWR022" H 4850 3500 50  0001 C CNN
F 1 "GND" H 4855 3577 50  0000 C CNN
F 2 "" H 4850 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0001 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60A90361
P 3800 4150
AR Path="/6068D50F/60A90361" Ref="R?"  Part="1" 
AR Path="/606B714B/60A90361" Ref="R13"  Part="1" 
F 0 "R13" H 3741 4104 50  0000 R CNN
F 1 "12k" H 3741 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 4150 50  0001 C CNN
F 3 "~" H 3800 4150 50  0001 C CNN
	1    3800 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 3950 3800 4050
Wire Wire Line
	3800 4250 3800 4350
Wire Wire Line
	3800 4350 3700 4350
Text HLabel 3700 4350 0    50   Input ~ 0
CS
Text Notes 3350 3250 0    50   ~ 0
Note: Optional, remove if not enough space
$Comp
L Transistor_BJT:S8550 Q4
U 1 1 60A9596C
P 3800 3750
F 0 "Q4" V 4128 3750 50  0000 C CNN
F 1 "S8550" V 4037 3750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4000 3675 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8550.pdf" H 3800 3750 50  0001 L CNN
	1    3800 3750
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
