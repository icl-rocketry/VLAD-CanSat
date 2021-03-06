EESchema Schematic File Version 4
LIBS:VLAD-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L power:GND #PWR07
U 1 1 6068B2EA
P 6150 5150
F 0 "#PWR07" H 6150 4900 50  0001 C CNN
F 1 "GND" H 6155 4977 50  0000 C CNN
F 2 "" H 6150 5150 50  0001 C CNN
F 3 "" H 6150 5150 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
$Sheet
S 800  1750 550  550 
U 6068D50F
F0 "Storage" 50
F1 "Storage.sch" 50
F2 "CS" I R 1350 2200 50 
F3 "MOSI" I R 1350 2000 50 
F4 "SCLK" I R 1350 1900 50 
F5 "MISO" O R 1350 2100 50 
$EndSheet
$Sheet
S 800  800  550  700 
U 606B714B
F0 "radio" 50
F1 "radio.sch" 50
F2 "MOSI" I R 1350 1000 50 
F3 "MISO" O R 1350 1100 50 
F4 "CS" I R 1350 1200 50 
F5 "Reset" I R 1350 1300 50 
F6 "RxTxDone" O R 1350 1400 50 
F7 "SCLK" I R 1350 900 50 
$EndSheet
Text Label 7000 3750 0    50   ~ 0
SCLK
Text Label 7000 3850 0    50   ~ 0
MISO
Text Label 7000 4150 0    50   ~ 0
MOSI
$Comp
L power:+3V3 #PWR06
U 1 1 606B7A70
P 6150 1700
F 0 "#PWR06" H 6150 1550 50  0001 C CNN
F 1 "+3V3" H 6165 1873 50  0000 C CNN
F 2 "" H 6150 1700 50  0001 C CNN
F 3 "" H 6150 1700 50  0001 C CNN
	1    6150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 606B9FF6
P 6450 1750
F 0 "C3" V 6221 1750 50  0000 C CNN
F 1 "10uF" V 6312 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 1750 50  0001 C CNN
F 3 "~" H 6450 1750 50  0001 C CNN
	1    6450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 606BA4C6
P 6450 2100
F 0 "C4" V 6221 2100 50  0000 C CNN
F 1 "0.1uF" V 6312 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 2100 50  0001 C CNN
F 3 "~" H 6450 2100 50  0001 C CNN
	1    6450 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2350 6150 2100
Wire Wire Line
	6150 1750 6350 1750
Wire Wire Line
	6150 2100 6350 2100
Connection ~ 6150 2100
Wire Wire Line
	6550 1750 6650 1750
Wire Wire Line
	6650 2100 6550 2100
$Comp
L power:GND #PWR08
U 1 1 606BF712
P 6650 2100
F 0 "#PWR08" H 6650 1850 50  0001 C CNN
F 1 "GND" H 6655 1927 50  0000 C CNN
F 2 "" H 6650 2100 50  0001 C CNN
F 3 "" H 6650 2100 50  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Connection ~ 6650 2100
$Comp
L Device:R_Small R1
U 1 1 606C06BC
P 1750 5500
F 0 "R1" H 1809 5546 50  0000 L CNN
F 1 "12k" H 1809 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1750 5500 50  0001 C CNN
F 3 "~" H 1750 5500 50  0001 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 606C0A7F
P 1750 5350
F 0 "#PWR02" H 1750 5200 50  0001 C CNN
F 1 "+3V3" H 1765 5523 50  0000 C CNN
F 2 "" H 1750 5350 50  0001 C CNN
F 3 "" H 1750 5350 50  0001 C CNN
	1    1750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 900  1450 900 
Wire Wire Line
	1350 1000 1450 1000
Wire Wire Line
	1350 1100 1450 1100
Wire Wire Line
	1350 1200 1450 1200
Wire Wire Line
	1350 1300 1450 1300
Wire Wire Line
	1350 1400 1450 1400
Text Label 1450 900  0    50   ~ 0
SCLK
Text Label 1450 1100 0    50   ~ 0
MISO
Text Label 1450 1000 0    50   ~ 0
MOSI
Text Label 7000 3150 0    50   ~ 0
RadioDone
Text Label 1450 1400 0    50   ~ 0
RadioDone
Text Label 7000 3350 0    50   ~ 0
RadioReset
Text Label 7000 3050 0    50   ~ 0
RadioCS
Text Label 1450 1300 0    50   ~ 0
RadioReset
Text Label 1450 1200 0    50   ~ 0
RadioCS
NoConn ~ 5550 3750
NoConn ~ 5550 4150
NoConn ~ 5550 3850
NoConn ~ 5550 3950
NoConn ~ 5550 4050
NoConn ~ 5550 4250
Text Notes 4900 4150 0    50   ~ 0
Connected to\nbuilt-in flash\nhence left\ndisconnected
Wire Wire Line
	1350 1900 1450 1900
Wire Wire Line
	1350 2000 1450 2000
Wire Wire Line
	1350 2100 1450 2100
Wire Wire Line
	1350 2200 1450 2200
Text Label 1450 1900 0    50   ~ 0
SCLK
Text Label 1450 2000 0    50   ~ 0
MOSI
Text Label 1450 2100 0    50   ~ 0
MISO
Text Label 1450 2200 0    50   ~ 0
SDCS
Text Label 7000 3450 0    50   ~ 0
SDCS
Wire Wire Line
	7550 2750 7550 2850
$Comp
L Device:R_Small R9
U 1 1 607999A6
P 7550 2950
F 0 "R9" H 7609 2996 50  0000 L CNN
F 1 "5k" H 7609 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7550 2950 50  0001 C CNN
F 3 "~" H 7550 2950 50  0001 C CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60799F32
P 7550 3050
F 0 "#PWR09" H 7550 2800 50  0001 C CNN
F 1 "GND" H 7555 2877 50  0000 C CNN
F 2 "" H 7550 3050 50  0001 C CNN
F 3 "" H 7550 3050 50  0001 C CNN
	1    7550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1700 6150 1750
Connection ~ 6150 1750
Wire Wire Line
	6150 1750 6150 2100
Wire Wire Line
	6650 1750 6650 2100
Text Label 7000 2850 0    50   ~ 0
SerialRx
$Sheet
S 800  2600 550  550 
U 608652D9
F0 "usb" 50
F1 "usb.sch" 50
F2 "RX" I R 1350 2750 50 
F3 "TX" O R 1350 2850 50 
F4 "RTS" O R 1350 2950 50 
F5 "DTR" O R 1350 3050 50 
$EndSheet
Wire Wire Line
	1350 2750 1450 2750
Wire Wire Line
	1350 2850 1450 2850
Text Label 1450 2750 0    50   ~ 0
SerialTx
Text Label 1450 2850 0    50   ~ 0
SerialRx
$Comp
L Device:R_Small R2
U 1 1 60938B48
P 1900 4100
F 0 "R2" V 1704 4100 50  0000 C CNN
F 1 "1k" V 1795 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1900 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 6093A9FB
P 1900 4800
F 0 "R3" V 1704 4800 50  0000 C CNN
F 1 "1k" V 1795 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1900 4800 50  0001 C CNN
F 3 "~" H 1900 4800 50  0001 C CNN
	1    1900 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4100 2150 4100
Wire Wire Line
	2000 4800 2150 4800
Wire Wire Line
	1800 4100 1750 4100
Wire Wire Line
	1450 4800 1700 4800
Wire Wire Line
	5550 2550 5300 2550
Text Label 5300 2550 0    50   ~ 0
EN
Text Label 1850 5700 0    50   ~ 0
EN
Wire Wire Line
	2450 4600 2450 4550
Wire Wire Line
	2450 4550 1750 4550
Wire Wire Line
	1750 4550 1750 4100
Connection ~ 1750 4100
Wire Wire Line
	1750 4100 1450 4100
Wire Wire Line
	2450 4300 2450 4350
Wire Wire Line
	2450 4350 1700 4350
Wire Wire Line
	1700 4350 1700 4800
Connection ~ 1700 4800
Wire Wire Line
	1700 4800 1800 4800
Wire Wire Line
	2450 3900 2450 3850
Wire Wire Line
	2450 3850 2700 3850
Wire Wire Line
	2450 5000 2450 5050
Wire Wire Line
	2450 5050 2700 5050
Text Label 7000 2650 0    50   ~ 0
SerialTx
$Comp
L power:+3V3 #PWR03
U 1 1 60797E37
P 2200 5350
F 0 "#PWR03" H 2200 5200 50  0001 C CNN
F 1 "+3V3" H 2215 5523 50  0000 C CNN
F 2 "" H 2200 5350 50  0001 C CNN
F 3 "" H 2200 5350 50  0001 C CNN
	1    2200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5400 2200 5350
$Comp
L Device:R_Small R5
U 1 1 6079715B
P 2200 5500
F 0 "R5" H 2259 5546 50  0000 L CNN
F 1 "5k" H 2259 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2200 5500 50  0001 C CNN
F 3 "~" H 2200 5500 50  0001 C CNN
	1    2200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2550 7000 2550
Text Label 7000 2550 0    50   ~ 0
IO0
Text Label 2300 5700 0    50   ~ 0
IO0
Text Label 2700 5050 0    50   ~ 0
IO0
Text Label 2700 3850 0    50   ~ 0
EN
Wire Wire Line
	1350 2950 1450 2950
Wire Wire Line
	1350 3050 1450 3050
Text Label 1450 2950 0    50   ~ 0
USB_RTS
Text Label 1450 3050 0    50   ~ 0
USB_DTR
Text Label 1450 4800 0    50   ~ 0
USB_RTS
Text Label 1450 4100 0    50   ~ 0
USB_DTR
Wire Wire Line
	1750 5700 1850 5700
Wire Wire Line
	2200 5600 2200 5700
Wire Wire Line
	1750 5350 1750 5400
Wire Wire Line
	1750 5600 1750 5700
Wire Wire Line
	2200 5700 2300 5700
Wire Wire Line
	1200 6200 1200 6500
Wire Wire Line
	1550 6500 1700 6500
Wire Wire Line
	1700 6500 1700 6200
Wire Wire Line
	1700 6200 1650 6200
$Comp
L Device:R_Small R4
U 1 1 609B31E1
P 1900 6200
F 0 "R4" V 1704 6200 50  0000 C CNN
F 1 "470" V 1795 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1900 6200 50  0001 C CNN
F 3 "~" H 1900 6200 50  0001 C CNN
	1    1900 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6200 1800 6200
Connection ~ 1700 6200
Wire Wire Line
	2000 6200 2100 6200
Wire Wire Line
	1350 6500 1200 6500
Wire Wire Line
	1250 6200 1200 6200
$Comp
L power:GND #PWR01
U 1 1 609C7A45
P 1200 6600
F 0 "#PWR01" H 1200 6350 50  0001 C CNN
F 1 "GND" H 1205 6427 50  0000 C CNN
F 2 "" H 1200 6600 50  0001 C CNN
F 3 "" H 1200 6600 50  0001 C CNN
	1    1200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6500 1200 6600
Connection ~ 1200 6500
Text Label 2100 6200 0    50   ~ 0
IO0
Wire Wire Line
	2400 6200 2400 6500
$Comp
L Device:C_Small C2
U 1 1 609D0E08
P 2650 6500
F 0 "C2" V 2421 6500 50  0000 C CNN
F 1 "1uF" V 2512 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2650 6500 50  0001 C CNN
F 3 "~" H 2650 6500 50  0001 C CNN
	1    2650 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 6500 2900 6500
Wire Wire Line
	2900 6500 2900 6200
Wire Wire Line
	2900 6200 2850 6200
$Comp
L Device:R_Small R8
U 1 1 609D0E11
P 3100 6200
F 0 "R8" V 2904 6200 50  0000 C CNN
F 1 "470" V 2995 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3100 6200 50  0001 C CNN
F 3 "~" H 3100 6200 50  0001 C CNN
	1    3100 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 6200 3000 6200
Connection ~ 2900 6200
Wire Wire Line
	3200 6200 3300 6200
Wire Wire Line
	2550 6500 2400 6500
Wire Wire Line
	2450 6200 2400 6200
$Comp
L power:GND #PWR05
U 1 1 609D0E1C
P 2400 6600
F 0 "#PWR05" H 2400 6350 50  0001 C CNN
F 1 "GND" H 2405 6427 50  0000 C CNN
F 2 "" H 2400 6600 50  0001 C CNN
F 3 "" H 2400 6600 50  0001 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6500 2400 6600
Connection ~ 2400 6500
Text Label 3300 6200 0    50   ~ 0
EN
Text Notes 750  3700 0    50   ~ 0
Auto Programmer, for how this works see this link:\nhttps://pcbartists.com/design/esp32-cp2102-programmer-schematic/
Text Notes 700  6450 0    50   ~ 0
Manual\npull-down\nswitches
$Comp
L Device:C_Small C1
U 1 1 609AFC56
P 1450 6500
F 0 "C1" V 1221 6500 50  0000 C CNN
F 1 "1nF" V 1312 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 6500 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	0    1    1    0   
$EndComp
$Sheet
S 9850 1050 1000 550 
U 607ADB4E
F0 "Power" 50
F1 "PowerCircuitry.sch" 50
$EndSheet
$Comp
L Connector:TestPoint TP3
U 1 1 607C855A
P 2500 1100
F 0 "TP3" V 2454 1288 50  0000 L CNN
F 1 "TestPoint" V 2545 1288 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2700 1100 50  0001 C CNN
F 3 "~" H 2700 1100 50  0001 C CNN
	1    2500 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1100 2350 1100
$Comp
L Connector:TestPoint TP5
U 1 1 607CA5C6
P 2500 1500
F 0 "TP5" V 2454 1688 50  0000 L CNN
F 1 "TestPoint" V 2545 1688 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2700 1500 50  0001 C CNN
F 3 "~" H 2700 1500 50  0001 C CNN
	1    2500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1500 2350 1500
$Comp
L Connector:TestPoint TP4
U 1 1 607CC68B
P 2500 1300
F 0 "TP4" V 2454 1488 50  0000 L CNN
F 1 "TestPoint" V 2545 1488 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2700 1300 50  0001 C CNN
F 3 "~" H 2700 1300 50  0001 C CNN
	1    2500 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1300 2350 1300
Text Label 2350 1100 0    50   ~ 0
SCLK
Text Label 2350 1500 0    50   ~ 0
MISO
Text Label 2350 1300 0    50   ~ 0
MOSI
$Comp
L Connector:TestPoint TP6
U 1 1 607DC320
P 2500 1700
F 0 "TP6" V 2454 1888 50  0000 L CNN
F 1 "TestPoint" V 2545 1888 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2700 1700 50  0001 C CNN
F 3 "~" H 2700 1700 50  0001 C CNN
	1    2500 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1700 2350 1700
$Comp
L Connector:TestPoint TP7
U 1 1 607DE57B
P 2500 1900
F 0 "TP7" V 2454 2088 50  0000 L CNN
F 1 "TestPoint" V 2545 2088 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2700 1900 50  0001 C CNN
F 3 "~" H 2700 1900 50  0001 C CNN
	1    2500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1900 2350 1900
Text Label 2350 1700 0    50   ~ 0
RadioCS
Text Label 2350 1900 0    50   ~ 0
SDCS
$Comp
L Connector:TestPoint TP1
U 1 1 607E4763
P 1900 7050
F 0 "TP1" V 1854 7238 50  0000 L CNN
F 1 "TestPoint" V 1945 7238 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2100 7050 50  0001 C CNN
F 3 "~" H 2100 7050 50  0001 C CNN
	1    1900 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 7050 1750 7050
$Comp
L Connector:TestPoint TP2
U 1 1 607E6D53
P 1900 7250
F 0 "TP2" V 1854 7438 50  0000 L CNN
F 1 "TestPoint" V 1945 7438 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.5x1.5mm_Drill0.7mm" H 2100 7250 50  0001 C CNN
F 3 "~" H 2100 7250 50  0001 C CNN
	1    1900 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 7250 1750 7250
Text Label 1750 7050 0    50   ~ 0
EN
Text Label 1750 7250 0    50   ~ 0
IO0
$Comp
L power:+3V3 #PWR04
U 1 1 607EC630
P 2350 2500
F 0 "#PWR04" H 2350 2350 50  0001 C CNN
F 1 "+3V3" H 2365 2673 50  0000 C CNN
F 2 "" H 2350 2500 50  0001 C CNN
F 3 "" H 2350 2500 50  0001 C CNN
	1    2350 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2500 2350 2600
Wire Wire Line
	2350 2600 2450 2600
$Comp
L Device:R_Small R6
U 1 1 607EF2CF
P 2550 2600
F 0 "R6" V 2354 2600 50  0000 C CNN
F 1 "10k" V 2445 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 2600 50  0001 C CNN
F 3 "~" H 2550 2600 50  0001 C CNN
	1    2550 2600
	0    1    1    0   
$EndComp
Connection ~ 2350 2600
Wire Wire Line
	2350 2900 2450 2900
Wire Wire Line
	2350 2600 2350 2900
Wire Wire Line
	2650 2600 2800 2600
Wire Wire Line
	2650 2900 2800 2900
Text Label 2800 2600 0    50   ~ 0
SDCS
Text Label 2800 2900 0    50   ~ 0
RadioCS
$Comp
L Device:R_Small R7
U 1 1 608060BD
P 2550 2900
F 0 "R7" V 2354 2900 50  0000 C CNN
F 1 "10k" V 2445 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 2900 50  0001 C CNN
F 3 "~" H 2550 2900 50  0001 C CNN
	1    2550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 607EA96B
P 9050 5050
F 0 "BZ1" V 9101 4863 50  0000 R CNN
F 1 "Buzzer" V 9010 4863 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" V 9025 5150 50  0001 C CNN
F 3 "~" V 9025 5150 50  0001 C CNN
	1    9050 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 5150 9150 5250
Wire Wire Line
	8950 5150 8950 5200
Wire Wire Line
	8950 5200 8800 5200
$Comp
L Device:R_Small R10
U 1 1 607F07A9
P 8700 5200
F 0 "R10" V 8504 5200 50  0000 C CNN
F 1 "R_Small" V 8595 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8700 5200 50  0001 C CNN
F 3 "~" H 8700 5200 50  0001 C CNN
	1    8700 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 5200 8300 5200
$Comp
L power:GND #PWR014
U 1 1 607F3B2D
P 9150 5250
F 0 "#PWR014" H 9150 5000 50  0001 C CNN
F 1 "GND" H 9155 5077 50  0000 C CNN
F 2 "" H 9150 5250 50  0001 C CNN
F 3 "" H 9150 5250 50  0001 C CNN
	1    9150 5250
	1    0    0    -1  
$EndComp
Text Label 8300 5200 0    50   ~ 0
Buzzer
Text Label 7000 4250 0    50   ~ 0
Buzzer
Text Label 7000 4350 0    50   ~ 0
SDA
Text Label 7000 4450 0    50   ~ 0
SCL
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 60803066
P 9350 3400
F 0 "J2" H 9378 3376 50  0000 L CNN
F 1 "BNO055" H 9378 3285 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 9350 3400 50  0001 C CNN
F 3 "~" H 9350 3400 50  0001 C CNN
	1    9350 3400
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2750
NoConn ~ 9150 2850
NoConn ~ 9150 2150
NoConn ~ 9150 2650
Text Label 9050 2550 0    50   ~ 0
SDA
Text Label 9050 2450 0    50   ~ 0
SCL
Wire Wire Line
	9150 2550 9050 2550
Wire Wire Line
	9150 2450 9050 2450
Wire Wire Line
	8750 2350 9150 2350
$Comp
L power:GND #PWR010
U 1 1 6080ACCC
P 8750 2450
F 0 "#PWR010" H 8750 2200 50  0001 C CNN
F 1 "GND" H 8755 2277 50  0000 C CNN
F 2 "" H 8750 2450 50  0001 C CNN
F 3 "" H 8750 2450 50  0001 C CNN
	1    8750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2350 8750 2450
$Comp
L power:+3V3 #PWR012
U 1 1 60806D9C
P 9050 2150
F 0 "#PWR012" H 9050 2000 50  0001 C CNN
F 1 "+3V3" H 9065 2323 50  0000 C CNN
F 2 "" H 9050 2150 50  0001 C CNN
F 3 "" H 9050 2150 50  0001 C CNN
	1    9050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2250 9050 2150
Wire Wire Line
	9150 2250 9050 2250
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 607FE864
P 9350 2450
F 0 "J1" H 9378 2426 50  0000 L CNN
F 1 "BMP388" H 9378 2335 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 9350 2450 50  0001 C CNN
F 3 "~" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
Text Label 9050 3500 0    50   ~ 0
SDA
Wire Wire Line
	9150 3600 9050 3600
Wire Wire Line
	9150 3500 9050 3500
Wire Wire Line
	8750 3400 9150 3400
$Comp
L power:GND #PWR011
U 1 1 60834281
P 8750 3500
F 0 "#PWR011" H 8750 3250 50  0001 C CNN
F 1 "GND" H 8755 3327 50  0000 C CNN
F 2 "" H 8750 3500 50  0001 C CNN
F 3 "" H 8750 3500 50  0001 C CNN
	1    8750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3400 8750 3500
$Comp
L power:+3V3 #PWR013
U 1 1 60834288
P 9050 3200
F 0 "#PWR013" H 9050 3050 50  0001 C CNN
F 1 "+3V3" H 9065 3373 50  0000 C CNN
F 2 "" H 9050 3200 50  0001 C CNN
F 3 "" H 9050 3200 50  0001 C CNN
	1    9050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 3300 9050 3200
Wire Wire Line
	9150 3300 9050 3300
NoConn ~ 9150 3200
NoConn ~ 9150 3700
Text Label 9050 3600 0    50   ~ 0
SCL
NoConn ~ 10850 3650
NoConn ~ 5550 2750
NoConn ~ 5550 2850
NoConn ~ 6750 2950
NoConn ~ 6750 3250
NoConn ~ 6750 3550
NoConn ~ 6750 3650
NoConn ~ 6750 4050
NoConn ~ 6750 4850
$Comp
L power:+6V #PWR0102
U 1 1 60A0C2D4
P 10200 2100
F 0 "#PWR0102" H 10200 1950 50  0001 C CNN
F 1 "+6V" V 10215 2228 50  0000 L CNN
F 2 "" H 10200 2100 50  0001 C CNN
F 3 "" H 10200 2100 50  0001 C CNN
	1    10200 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60A0B510
P 10200 2200
F 0 "#PWR0103" H 10200 1950 50  0001 C CNN
F 1 "GND" H 10205 2027 50  0000 C CNN
F 2 "" H 10200 2200 50  0001 C CNN
F 3 "" H 10200 2200 50  0001 C CNN
	1    10200 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60A0527F
P 10000 2100
F 0 "J5" H 10108 2381 50  0000 C CNN
F 1 "Conn_01x03_Male" H 10108 2290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10000 2100 50  0001 C CNN
F 3 "~" H 10000 2100 50  0001 C CNN
	1    10000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4450 7000 4450
Wire Wire Line
	6750 4350 7000 4350
Wire Wire Line
	6750 4250 7000 4250
Wire Wire Line
	6750 4150 7000 4150
Wire Wire Line
	6750 3850 7000 3850
Wire Wire Line
	6750 3750 7000 3750
Wire Wire Line
	6750 3450 7000 3450
Wire Wire Line
	6750 3350 7000 3350
Wire Wire Line
	6750 3150 7000 3150
Wire Wire Line
	6750 3050 7000 3050
Wire Wire Line
	6750 2850 7000 2850
Wire Wire Line
	6750 2750 7550 2750
Wire Wire Line
	6750 2650 7000 2650
NoConn ~ 6750 4550
$Comp
L VLAD-rescue:ESP32-WROOM-32-RF_Module U1
U 1 1 6068A42E
P 6150 3750
F 0 "U1" H 6150 5331 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6150 5240 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6150 2250 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5850 3800 50  0001 C CNN
	1    6150 3750
	1    0    0    -1  
$EndComp
Text GLabel 7000 3950 2    50   Input ~ 0
12VBusSwitch
NoConn ~ 6750 4750
Text Label 6750 4650 0    50   ~ 0
ServoPin
Text Label 10200 2000 0    50   ~ 0
ServoPin
Wire Wire Line
	6750 3950 7000 3950
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 60B2C548
P 1450 6200
F 0 "JP2" H 1450 6435 50  0000 C CNN
F 1 "Jumper_2_Open" H 1450 6344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1450 6200 50  0001 C CNN
F 3 "~" H 1450 6200 50  0001 C CNN
	1    1450 6200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 60B2CD42
P 2650 6200
F 0 "JP3" H 2650 6435 50  0000 C CNN
F 1 "Jumper_2_Open" H 2650 6344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2650 6200 50  0001 C CNN
F 3 "~" H 2650 6200 50  0001 C CNN
	1    2650 6200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q1
U 1 1 60B80B3B
P 2350 4100
F 0 "Q1" H 2540 4054 50  0000 L CNN
F 1 "MMDT2222A" H 2540 4145 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2550 4200 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 2350 4100 50  0001 C CNN
	1    2350 4100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMDT2222A Q1
U 2 1 60BEDD25
P 2350 4800
F 0 "Q1" H 2540 4754 50  0000 L CNN
F 1 "MMDT2222A" H 2540 4845 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2550 4900 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30125.pdf" H 2350 4800 50  0001 C CNN
	2    2350 4800
	1    0    0    1   
$EndComp
$EndSCHEMATC
