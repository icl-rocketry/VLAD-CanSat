EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
P 5800 3900
F 0 "U?" H 5800 5481 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 5800 5390 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5800 2400 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5500 3950 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6068B2EA
P 5800 5300
F 0 "#PWR0101" H 5800 5050 50  0001 C CNN
F 1 "GND" H 5805 5127 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3900 6650 3900
Wire Wire Line
	6400 4000 6650 4000
Wire Wire Line
	6400 4300 6650 4300
$Sheet
S 1500 2350 1300 800 
U 6068D50F
F0 "Storage" 50
F1 "Storage.sch" 50
$EndSheet
$Sheet
S 1700 1100 550  700 
U 606B714B
F0 "radio" 50
F1 "radio.sch" 50
F2 "MOSI" I R 2250 1300 50 
F3 "MISO" O R 2250 1400 50 
F4 "CS" I R 2250 1500 50 
F5 "Reset" I R 2250 1600 50 
F6 "RxTxDone" O R 2250 1700 50 
F7 "SCLK" I R 2250 1200 50 
$EndSheet
Text Label 6650 3900 0    50   ~ 0
SCLK
Text Label 6650 4000 0    50   ~ 0
MISO
Text Label 6650 4300 0    50   ~ 0
MOSI
$Comp
L power:+3V3 #PWR0102
U 1 1 606B7A70
P 5800 1950
F 0 "#PWR0102" H 5800 1800 50  0001 C CNN
F 1 "+3V3" H 5815 2123 50  0000 C CNN
F 2 "" H 5800 1950 50  0001 C CNN
F 3 "" H 5800 1950 50  0001 C CNN
	1    5800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606B9FF6
P 6100 2050
F 0 "C?" V 5871 2050 50  0000 C CNN
F 1 "10uF" V 5962 2050 50  0000 C CNN
F 2 "" H 6100 2050 50  0001 C CNN
F 3 "~" H 6100 2050 50  0001 C CNN
	1    6100 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 606BA4C6
P 6100 2250
F 0 "C?" V 5871 2250 50  0000 C CNN
F 1 "0.1uF" V 5962 2250 50  0000 C CNN
F 2 "" H 6100 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
	1    6100 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2500 5800 2250
Wire Wire Line
	5800 2050 6000 2050
Connection ~ 5800 2050
Wire Wire Line
	5800 2050 5800 1950
Wire Wire Line
	5800 2250 6000 2250
Connection ~ 5800 2250
Wire Wire Line
	5800 2250 5800 2050
Wire Wire Line
	6200 2050 6300 2050
Wire Wire Line
	6300 2050 6300 2250
Wire Wire Line
	6300 2250 6200 2250
$Comp
L power:GND #PWR0103
U 1 1 606BF712
P 6300 2250
F 0 "#PWR0103" H 6300 2000 50  0001 C CNN
F 1 "GND" H 6305 2077 50  0000 C CNN
F 2 "" H 6300 2250 50  0001 C CNN
F 3 "" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
Connection ~ 6300 2250
Wire Wire Line
	5200 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2650
$Comp
L Device:R_Small R_small
U 1 1 606C06BC
P 4950 2550
F 0 "R_small" H 5009 2596 50  0000 L CNN
F 1 "12K" H 5009 2505 50  0000 L CNN
F 2 "" H 4950 2550 50  0001 C CNN
F 3 "~" H 4950 2550 50  0001 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 606C0A7F
P 4950 2250
F 0 "#PWR0104" H 4950 2100 50  0001 C CNN
F 1 "+3V3" H 4965 2423 50  0000 C CNN
F 2 "" H 4950 2250 50  0001 C CNN
F 3 "" H 4950 2250 50  0001 C CNN
	1    4950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2450 4950 2250
$Comp
L Device:C_Small C_Small
U 1 1 606C1790
P 4750 2700
F 0 "C_Small" V 4521 2700 50  0000 C CNN
F 1 "1nF" V 4612 2700 50  0000 C CNN
F 2 "" H 4750 2700 50  0001 C CNN
F 3 "~" H 4750 2700 50  0001 C CNN
	1    4750 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 606C201F
P 4500 2700
F 0 "#PWR0105" H 4500 2450 50  0001 C CNN
F 1 "GND" V 4505 2572 50  0000 R CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2700 4650 2700
Wire Wire Line
	4850 2700 4950 2700
Connection ~ 4950 2700
Wire Wire Line
	2250 1200 2350 1200
Wire Wire Line
	2250 1300 2350 1300
Wire Wire Line
	2250 1400 2350 1400
Wire Wire Line
	2250 1500 2350 1500
Wire Wire Line
	2250 1600 2350 1600
Wire Wire Line
	2250 1700 2350 1700
Text Label 2350 1200 0    50   ~ 0
SCLK
Text Label 2350 1400 0    50   ~ 0
MISO
Text Label 2350 1300 0    50   ~ 0
MOSI
Wire Wire Line
	6400 2900 6650 2900
Text Label 6650 2900 0    50   ~ 0
RadioDone
Text Label 2350 1700 0    50   ~ 0
RadioDone
Wire Wire Line
	6400 3500 6650 3500
Text Label 6650 3500 0    50   ~ 0
RadioReset
Wire Wire Line
	6400 3200 6650 3200
Text Label 6650 3200 0    50   ~ 0
RadioCS
Text Label 2350 1600 0    50   ~ 0
RadioReset
Text Label 2350 1500 0    50   ~ 0
RadioCS
NoConn ~ 5200 3900
NoConn ~ 5200 4300
NoConn ~ 5200 4000
NoConn ~ 5200 4100
NoConn ~ 5200 4200
NoConn ~ 5200 4400
Text Notes 4550 4300 0    50   ~ 0
Connected to\nbuilt-in flash\nhence left\ndisconnected
$EndSCHEMATC
