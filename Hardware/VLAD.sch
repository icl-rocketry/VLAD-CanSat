EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L RF_Module:ESP32-WROOM-32 U?
U 1 1 6068A42E
P 6650 3600
F 0 "U?" H 6650 5181 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6650 5090 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6650 2100 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6350 3650 50  0001 C CNN
	1    6650 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6068B2EA
P 6650 5000
F 0 "#PWR0101" H 6650 4750 50  0001 C CNN
F 1 "GND" H 6655 4827 50  0000 C CNN
F 2 "" H 6650 5000 50  0001 C CNN
F 3 "" H 6650 5000 50  0001 C CNN
	1    6650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3600 7500 3600
Wire Wire Line
	7250 3700 7500 3700
Wire Wire Line
	7250 4000 7500 4000
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
Text Label 7500 3600 0    50   ~ 0
SCLK
Text Label 7500 3700 0    50   ~ 0
MISO
Text Label 7500 4000 0    50   ~ 0
MOSI
$Comp
L power:+3V3 #PWR0102
U 1 1 606B7A70
P 6650 1550
F 0 "#PWR0102" H 6650 1400 50  0001 C CNN
F 1 "+3V3" H 6665 1723 50  0000 C CNN
F 2 "" H 6650 1550 50  0001 C CNN
F 3 "" H 6650 1550 50  0001 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606B9FF6
P 6950 1600
F 0 "C?" V 6721 1600 50  0000 C CNN
F 1 "10uF" V 6812 1600 50  0000 C CNN
F 2 "" H 6950 1600 50  0001 C CNN
F 3 "~" H 6950 1600 50  0001 C CNN
	1    6950 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606BA4C6
P 6950 1950
F 0 "C?" V 6721 1950 50  0000 C CNN
F 1 "0.1uF" V 6812 1950 50  0000 C CNN
F 2 "" H 6950 1950 50  0001 C CNN
F 3 "~" H 6950 1950 50  0001 C CNN
	1    6950 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2200 6650 1950
Wire Wire Line
	6650 1600 6850 1600
Wire Wire Line
	6650 1950 6850 1950
Connection ~ 6650 1950
Wire Wire Line
	7050 1600 7150 1600
Wire Wire Line
	7150 1950 7050 1950
$Comp
L power:GND #PWR0103
U 1 1 606BF712
P 7150 1950
F 0 "#PWR0103" H 7150 1700 50  0001 C CNN
F 1 "GND" H 7155 1777 50  0000 C CNN
F 2 "" H 7150 1950 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	1    7150 1950
	1    0    0    -1  
$EndComp
Connection ~ 7150 1950
$Comp
L Device:R_Small R?
U 1 1 606C06BC
P 1750 5700
F 0 "R?" H 1809 5746 50  0000 L CNN
F 1 "12k" H 1809 5655 50  0000 L CNN
F 2 "" H 1750 5700 50  0001 C CNN
F 3 "~" H 1750 5700 50  0001 C CNN
	1    1750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 606C0A7F
P 1750 5550
F 0 "#PWR0104" H 1750 5400 50  0001 C CNN
F 1 "+3V3" H 1765 5723 50  0000 C CNN
F 2 "" H 1750 5550 50  0001 C CNN
F 3 "" H 1750 5550 50  0001 C CNN
	1    1750 5550
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
	7250 3000 7500 3000
Text Label 7500 3000 0    50   ~ 0
RadioDone
Text Label 1450 1400 0    50   ~ 0
RadioDone
Wire Wire Line
	7250 3200 7500 3200
Text Label 7500 3200 0    50   ~ 0
RadioReset
Wire Wire Line
	7250 2900 7500 2900
Text Label 7500 2900 0    50   ~ 0
RadioCS
Text Label 1450 1300 0    50   ~ 0
RadioReset
Text Label 1450 1200 0    50   ~ 0
RadioCS
NoConn ~ 6050 3600
NoConn ~ 6050 4000
NoConn ~ 6050 3700
NoConn ~ 6050 3800
NoConn ~ 6050 3900
NoConn ~ 6050 4100
Text Notes 5400 4000 0    50   ~ 0
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
	7250 3300 7500 3300
Text Label 7500 3300 0    50   ~ 0
SDCS
Wire Wire Line
	7250 2600 8050 2600
Wire Wire Line
	8050 2600 8050 2700
$Comp
L Device:R_Small R?
U 1 1 607999A6
P 8050 2800
F 0 "R?" H 8109 2846 50  0000 L CNN
F 1 "5k" H 8109 2755 50  0000 L CNN
F 2 "" H 8050 2800 50  0001 C CNN
F 3 "~" H 8050 2800 50  0001 C CNN
	1    8050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 60799F32
P 8050 2900
F 0 "#PWR0110" H 8050 2650 50  0001 C CNN
F 1 "GND" H 8055 2727 50  0000 C CNN
F 2 "" H 8050 2900 50  0001 C CNN
F 3 "" H 8050 2900 50  0001 C CNN
	1    8050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1550 6650 1600
Connection ~ 6650 1600
Wire Wire Line
	6650 1600 6650 1950
Wire Wire Line
	7150 1600 7150 1950
Wire Wire Line
	7250 2700 7500 2700
Wire Wire Line
	7250 2500 7500 2500
Text Label 7500 2700 0    50   ~ 0
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
P 2350 4300
F 0 "Q?" H 2540 4346 50  0000 L CNN
F 1 "S8050" H 2540 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2550 4225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2350 4300 50  0001 L CNN
	1    2350 4300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:S8050 Q?
U 1 1 60938289
P 2350 5000
F 0 "Q?" H 2540 4954 50  0000 L CNN
F 1 "S8050" H 2540 5045 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2550 4925 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 2350 5000 50  0001 L CNN
	1    2350 5000
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60938B48
P 1900 4300
F 0 "R?" V 1704 4300 50  0000 C CNN
F 1 "1k" V 1795 4300 50  0000 C CNN
F 2 "" H 1900 4300 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6093A9FB
P 1900 5000
F 0 "R?" V 1704 5000 50  0000 C CNN
F 1 "1k" V 1795 5000 50  0000 C CNN
F 2 "" H 1900 5000 50  0001 C CNN
F 3 "~" H 1900 5000 50  0001 C CNN
	1    1900 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 4300 2150 4300
Wire Wire Line
	2000 5000 2150 5000
Wire Wire Line
	1800 4300 1750 4300
Wire Wire Line
	1450 5000 1700 5000
Wire Wire Line
	6050 2400 5800 2400
Text Label 5800 2400 0    50   ~ 0
EN
Text Label 1850 5900 0    50   ~ 0
EN
Wire Wire Line
	2450 4800 2450 4750
Wire Wire Line
	2450 4750 1750 4750
Wire Wire Line
	1750 4750 1750 4300
Connection ~ 1750 4300
Wire Wire Line
	1750 4300 1450 4300
Wire Wire Line
	2450 4500 2450 4550
Wire Wire Line
	2450 4550 1700 4550
Wire Wire Line
	1700 4550 1700 5000
Connection ~ 1700 5000
Wire Wire Line
	1700 5000 1800 5000
Wire Wire Line
	2450 4100 2450 4050
Wire Wire Line
	2450 4050 2700 4050
Wire Wire Line
	2450 5200 2450 5250
Wire Wire Line
	2450 5250 2700 5250
Text Label 7500 2500 0    50   ~ 0
SerialTx
$Comp
L power:+3V3 #PWR0107
U 1 1 60797E37
P 2200 5550
F 0 "#PWR0107" H 2200 5400 50  0001 C CNN
F 1 "+3V3" H 2215 5723 50  0000 C CNN
F 2 "" H 2200 5550 50  0001 C CNN
F 3 "" H 2200 5550 50  0001 C CNN
	1    2200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5600 2200 5550
$Comp
L Device:R_Small R?
U 1 1 6079715B
P 2200 5700
F 0 "R?" H 2259 5746 50  0000 L CNN
F 1 "5k" H 2259 5655 50  0000 L CNN
F 2 "" H 2200 5700 50  0001 C CNN
F 3 "~" H 2200 5700 50  0001 C CNN
	1    2200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2400 7500 2400
Text Label 7500 2400 0    50   ~ 0
IO0
Text Label 2300 5900 0    50   ~ 0
IO0
Text Label 2700 5250 0    50   ~ 0
IO0
Text Label 2700 4050 0    50   ~ 0
EN
Wire Wire Line
	1350 2950 1450 2950
Wire Wire Line
	1350 3050 1450 3050
Text Label 1450 2950 0    50   ~ 0
USB_RTS
Text Label 1450 3050 0    50   ~ 0
USB_DTR
Text Label 1450 5000 0    50   ~ 0
USB_RTS
Text Label 1450 4300 0    50   ~ 0
USB_DTR
Wire Wire Line
	1750 5900 1850 5900
Wire Wire Line
	2200 5800 2200 5900
Wire Wire Line
	1750 5550 1750 5600
Wire Wire Line
	1750 5800 1750 5900
Wire Wire Line
	2200 5900 2300 5900
$Comp
L Switch:SW_Push SW?
U 1 1 609AA0D6
P 1450 6400
F 0 "SW?" H 1450 6685 50  0000 C CNN
F 1 "SW_Push" H 1450 6594 50  0000 C CNN
F 2 "" H 1450 6600 50  0001 C CNN
F 3 "~" H 1450 6600 50  0001 C CNN
	1    1450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6400 1200 6700
Wire Wire Line
	1550 6700 1700 6700
Wire Wire Line
	1700 6700 1700 6400
Wire Wire Line
	1700 6400 1650 6400
$Comp
L Device:R_Small R?
U 1 1 609B31E1
P 1900 6400
F 0 "R?" V 1704 6400 50  0000 C CNN
F 1 "470" V 1795 6400 50  0000 C CNN
F 2 "" H 1900 6400 50  0001 C CNN
F 3 "~" H 1900 6400 50  0001 C CNN
	1    1900 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6400 1800 6400
Connection ~ 1700 6400
Wire Wire Line
	2000 6400 2100 6400
Wire Wire Line
	1350 6700 1200 6700
Wire Wire Line
	1250 6400 1200 6400
$Comp
L power:GND #PWR?
U 1 1 609C7A45
P 1200 6800
F 0 "#PWR?" H 1200 6550 50  0001 C CNN
F 1 "GND" H 1205 6627 50  0000 C CNN
F 2 "" H 1200 6800 50  0001 C CNN
F 3 "" H 1200 6800 50  0001 C CNN
	1    1200 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6700 1200 6800
Connection ~ 1200 6700
Text Label 2100 6400 0    50   ~ 0
IO0
Wire Wire Line
	2400 6400 2400 6700
$Comp
L Device:C_Small C?
U 1 1 609D0E08
P 2650 6700
F 0 "C?" V 2421 6700 50  0000 C CNN
F 1 "1uF" V 2512 6700 50  0000 C CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "~" H 2650 6700 50  0001 C CNN
	1    2650 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 6700 2900 6700
Wire Wire Line
	2900 6700 2900 6400
Wire Wire Line
	2900 6400 2850 6400
$Comp
L Device:R_Small R?
U 1 1 609D0E11
P 3100 6400
F 0 "R?" V 2904 6400 50  0000 C CNN
F 1 "470" V 2995 6400 50  0000 C CNN
F 2 "" H 3100 6400 50  0001 C CNN
F 3 "~" H 3100 6400 50  0001 C CNN
	1    3100 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 6400 3000 6400
Connection ~ 2900 6400
Wire Wire Line
	3200 6400 3300 6400
Wire Wire Line
	2550 6700 2400 6700
Wire Wire Line
	2450 6400 2400 6400
$Comp
L power:GND #PWR?
U 1 1 609D0E1C
P 2400 6800
F 0 "#PWR?" H 2400 6550 50  0001 C CNN
F 1 "GND" H 2405 6627 50  0000 C CNN
F 2 "" H 2400 6800 50  0001 C CNN
F 3 "" H 2400 6800 50  0001 C CNN
	1    2400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6700 2400 6800
Connection ~ 2400 6700
Text Label 3300 6400 0    50   ~ 0
EN
$Comp
L Switch:SW_Push SW?
U 1 1 609D49CF
P 2650 6400
F 0 "SW?" H 2650 6685 50  0000 C CNN
F 1 "SW_Push" H 2650 6594 50  0000 C CNN
F 2 "" H 2650 6600 50  0001 C CNN
F 3 "~" H 2650 6600 50  0001 C CNN
	1    2650 6400
	1    0    0    -1  
$EndComp
Text Notes 750  3900 0    50   ~ 0
Auto Programmer, for how this works see this link:\nhttps://pcbartists.com/design/esp32-cp2102-programmer-schematic/
Text Notes 700  6650 0    50   ~ 0
Manual\npull-down\nswitches
$Comp
L Device:C_Small C?
U 1 1 609AFC56
P 1450 6700
F 0 "C?" V 1221 6700 50  0000 C CNN
F 1 "1nF" V 1312 6700 50  0000 C CNN
F 2 "" H 1450 6700 50  0001 C CNN
F 3 "~" H 1450 6700 50  0001 C CNN
	1    1450 6700
	0    1    1    0   
$EndComp
$EndSCHEMATC
