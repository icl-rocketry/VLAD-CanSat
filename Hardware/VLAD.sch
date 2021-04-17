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
L VLAD-rescue:ESP32-WROOM-32-RF_Module U?
U 1 1 6068A42E
P 6150 3750
F 0 "U?" H 6150 5331 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6150 5240 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6150 2250 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5850 3800 50  0001 C CNN
	1    6150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6068B2EA
P 6150 5150
F 0 "#PWR0101" H 6150 4900 50  0001 C CNN
F 1 "GND" H 6155 4977 50  0000 C CNN
F 2 "" H 6150 5150 50  0001 C CNN
F 3 "" H 6150 5150 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3750 7000 3750
Wire Wire Line
	6750 3850 7000 3850
Wire Wire Line
	6750 4150 7000 4150
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
L power:+3V3 #PWR0102
U 1 1 606B7A70
P 6150 1700
F 0 "#PWR0102" H 6150 1550 50  0001 C CNN
F 1 "+3V3" H 6165 1873 50  0000 C CNN
F 2 "" H 6150 1700 50  0001 C CNN
F 3 "" H 6150 1700 50  0001 C CNN
	1    6150 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606B9FF6
P 6450 1750
F 0 "C?" V 6221 1750 50  0000 C CNN
F 1 "10uF" V 6312 1750 50  0000 C CNN
F 2 "" H 6450 1750 50  0001 C CNN
F 3 "~" H 6450 1750 50  0001 C CNN
	1    6450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606BA4C6
P 6450 2100
F 0 "C?" V 6221 2100 50  0000 C CNN
F 1 "0.1uF" V 6312 2100 50  0000 C CNN
F 2 "" H 6450 2100 50  0001 C CNN
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
L power:GND #PWR0103
U 1 1 606BF712
P 6650 2100
F 0 "#PWR0103" H 6650 1850 50  0001 C CNN
F 1 "GND" H 6655 1927 50  0000 C CNN
F 2 "" H 6650 2100 50  0001 C CNN
F 3 "" H 6650 2100 50  0001 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Connection ~ 6650 2100
$Comp
L Device:R_Small R?
U 1 1 606C06BC
P 1750 5500
F 0 "R?" H 1809 5546 50  0000 L CNN
F 1 "12k" H 1809 5455 50  0000 L CNN
F 2 "" H 1750 5500 50  0001 C CNN
F 3 "~" H 1750 5500 50  0001 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 606C0A7F
P 1750 5350
F 0 "#PWR0104" H 1750 5200 50  0001 C CNN
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
Wire Wire Line
	6750 3150 7000 3150
Text Label 7000 3150 0    50   ~ 0
RadioDone
Text Label 1450 1400 0    50   ~ 0
RadioDone
Wire Wire Line
	6750 3350 7000 3350
Text Label 7000 3350 0    50   ~ 0
RadioReset
Wire Wire Line
	6750 3050 7000 3050
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
Wire Wire Line
	6750 3450 7000 3450
Text Label 7000 3450 0    50   ~ 0
SDCS
Wire Wire Line
	6750 2750 7550 2750
Wire Wire Line
	7550 2750 7550 2850
$Comp
L Device:R_Small R?
U 1 1 607999A6
P 7550 2950
F 0 "R?" H 7609 2996 50  0000 L CNN
F 1 "5k" H 7609 2905 50  0000 L CNN
F 2 "" H 7550 2950 50  0001 C CNN
F 3 "~" H 7550 2950 50  0001 C CNN
	1    7550 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60799F32
P 7550 3050
F 0 "#PWR0110" H 7550 2800 50  0001 C CNN
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
Wire Wire Line
	6750 2850 7000 2850
Wire Wire Line
	6750 2650 7000 2650
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
L Transistor_BJT:S8050 Q?
U 1 1 6093351E
P 2350 4100
F 0 "Q?" H 2540 4146 50  0000 L CNN
F 1 "S8050" H 2540 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2550 4025 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2350 4100 50  0001 L CNN
	1    2350 4100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q?
U 1 1 60938289
P 2350 4800
F 0 "Q?" H 2540 4754 50  0000 L CNN
F 1 "S8050" H 2540 4845 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2550 4725 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2350 4800 50  0001 L CNN
	1    2350 4800
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60938B48
P 1900 4100
F 0 "R?" V 1704 4100 50  0000 C CNN
F 1 "1k" V 1795 4100 50  0000 C CNN
F 2 "" H 1900 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6093A9FB
P 1900 4800
F 0 "R?" V 1704 4800 50  0000 C CNN
F 1 "1k" V 1795 4800 50  0000 C CNN
F 2 "" H 1900 4800 50  0001 C CNN
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
L power:+3V3 #PWR0107
U 1 1 60797E37
P 2200 5350
F 0 "#PWR0107" H 2200 5200 50  0001 C CNN
F 1 "+3V3" H 2215 5523 50  0000 C CNN
F 2 "" H 2200 5350 50  0001 C CNN
F 3 "" H 2200 5350 50  0001 C CNN
	1    2200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5400 2200 5350
$Comp
L Device:R_Small R?
U 1 1 6079715B
P 2200 5500
F 0 "R?" H 2259 5546 50  0000 L CNN
F 1 "5k" H 2259 5455 50  0000 L CNN
F 2 "" H 2200 5500 50  0001 C CNN
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
$Comp
L Switch:SW_Push SW?
U 1 1 609AA0D6
P 1450 6200
F 0 "SW?" H 1450 6485 50  0000 C CNN
F 1 "SW_Push" H 1450 6394 50  0000 C CNN
F 2 "" H 1450 6400 50  0001 C CNN
F 3 "~" H 1450 6400 50  0001 C CNN
	1    1450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6200 1200 6500
Wire Wire Line
	1550 6500 1700 6500
Wire Wire Line
	1700 6500 1700 6200
Wire Wire Line
	1700 6200 1650 6200
$Comp
L Device:R_Small R?
U 1 1 609B31E1
P 1900 6200
F 0 "R?" V 1704 6200 50  0000 C CNN
F 1 "470" V 1795 6200 50  0000 C CNN
F 2 "" H 1900 6200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 609C7A45
P 1200 6600
F 0 "#PWR?" H 1200 6350 50  0001 C CNN
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
L Device:C_Small C?
U 1 1 609D0E08
P 2650 6500
F 0 "C?" V 2421 6500 50  0000 C CNN
F 1 "1uF" V 2512 6500 50  0000 C CNN
F 2 "" H 2650 6500 50  0001 C CNN
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
L Device:R_Small R?
U 1 1 609D0E11
P 3100 6200
F 0 "R?" V 2904 6200 50  0000 C CNN
F 1 "470" V 2995 6200 50  0000 C CNN
F 2 "" H 3100 6200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 609D0E1C
P 2400 6600
F 0 "#PWR?" H 2400 6350 50  0001 C CNN
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
$Comp
L Switch:SW_Push SW?
U 1 1 609D49CF
P 2650 6200
F 0 "SW?" H 2650 6485 50  0000 C CNN
F 1 "SW_Push" H 2650 6394 50  0000 C CNN
F 2 "" H 2650 6400 50  0001 C CNN
F 3 "~" H 2650 6400 50  0001 C CNN
	1    2650 6200
	1    0    0    -1  
$EndComp
Text Notes 750  3700 0    50   ~ 0
Auto Programmer, for how this works see this link:\nhttps://pcbartists.com/design/esp32-cp2102-programmer-schematic/
Text Notes 700  6450 0    50   ~ 0
Manual\npull-down\nswitches
$Comp
L Device:C_Small C?
U 1 1 609AFC56
P 1450 6500
F 0 "C?" V 1221 6500 50  0000 C CNN
F 1 "1nF" V 1312 6500 50  0000 C CNN
F 2 "" H 1450 6500 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	0    1    1    0   
$EndComp
Text Label 1650 7050 2    50   ~ 0
SerialTx
Text Label 1650 6950 2    50   ~ 0
SerialRx
Wire Wire Line
	1750 6950 1650 6950
Wire Wire Line
	1750 7050 1650 7050
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 60A45047
P 1950 7050
F 0 "J?" H 1922 6982 50  0000 R CNN
F 1 "Conn_01x03_Male" H 1922 7073 50  0000 R CNN
F 2 "" H 1950 7050 50  0001 C CNN
F 3 "~" H 1950 7050 50  0001 C CNN
	1    1950 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 7150 1650 7150
Wire Wire Line
	1650 7150 1650 7250
$Comp
L power:GND #PWR?
U 1 1 60A47D32
P 1650 7250
F 0 "#PWR?" H 1650 7000 50  0001 C CNN
F 1 "GND" H 1655 7077 50  0000 C CNN
F 2 "" H 1650 7250 50  0001 C CNN
F 3 "" H 1650 7250 50  0001 C CNN
	1    1650 7250
	1    0    0    -1  
$EndComp
$Sheet
S 9850 1050 1000 550 
U 607ADB4E
F0 "Power" 50
F1 "PowerCircuitry.sch" 50
$EndSheet
$EndSCHEMATC
