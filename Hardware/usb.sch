EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6150 2750 6150 2850
$Comp
L power:+3V3 #PWR?
U 1 1 60872B38
P 6150 2750
AR Path="/60872B38" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/60872B38" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2600 50  0001 C CNN
F 1 "+3V3" H 6165 2923 50  0000 C CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2850 6850 2850
$Comp
L power:+3V3 #PWR?
U 1 1 60872B3F
P 6850 2200
F 0 "#PWR?" H 6850 2050 50  0001 C CNN
F 1 "+3V3" H 6865 2373 50  0000 C CNN
F 2 "" H 6850 2200 50  0001 C CNN
F 3 "" H 6850 2200 50  0001 C CNN
	1    6850 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60872B45
P 7150 2250
AR Path="/60872B45" Ref="C?"  Part="1" 
AR Path="/608652D9/60872B45" Ref="C?"  Part="1" 
F 0 "C?" V 6921 2250 50  0000 C CNN
F 1 "4.7uF" V 7012 2250 50  0000 C CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60872B4B
P 7150 2600
F 0 "C?" V 6921 2600 50  0000 C CNN
F 1 "0.1uF" V 7012 2600 50  0000 C CNN
F 2 "" H 7150 2600 50  0001 C CNN
F 3 "~" H 7150 2600 50  0001 C CNN
	1    7150 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2850 6850 2600
Wire Wire Line
	6850 2250 7050 2250
Wire Wire Line
	6850 2600 7050 2600
Connection ~ 6850 2600
Wire Wire Line
	7250 2250 7350 2250
Wire Wire Line
	7350 2600 7250 2600
$Comp
L power:GND #PWR?
U 1 1 60872B57
P 7350 2600
F 0 "#PWR?" H 7350 2350 50  0001 C CNN
F 1 "GND" H 7355 2427 50  0000 C CNN
F 2 "" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0001 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
Connection ~ 7350 2600
Wire Wire Line
	6850 2200 6850 2250
Connection ~ 6850 2250
Wire Wire Line
	6850 2250 6850 2600
Wire Wire Line
	7350 2250 7350 2600
Connection ~ 6850 2850
Wire Wire Line
	6850 2850 6900 2850
NoConn ~ 7500 3250
NoConn ~ 7500 3350
NoConn ~ 7500 3650
NoConn ~ 7500 3750
NoConn ~ 7500 3850
NoConn ~ 7500 4150
NoConn ~ 7500 4050
$Comp
L power:+3V3 #PWR?
U 1 1 60872B6B
P 8400 4300
AR Path="/60872B6B" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/60872B6B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8400 4150 50  0001 C CNN
F 1 "+3V3" H 8415 4473 50  0000 C CNN
F 2 "" H 8400 4300 50  0001 C CNN
F 3 "" H 8400 4300 50  0001 C CNN
	1    8400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4400 8250 4600
Connection ~ 8250 4400
Wire Wire Line
	8400 4400 8400 4300
Wire Wire Line
	8250 4400 8400 4400
Wire Wire Line
	8250 4600 8150 4600
Wire Wire Line
	8250 4250 8250 4400
Wire Wire Line
	8150 4250 8250 4250
$Comp
L Device:R_Small R?
U 1 1 60872B78
P 8050 4600
AR Path="/60872B78" Ref="R?"  Part="1" 
AR Path="/608652D9/60872B78" Ref="R?"  Part="1" 
F 0 "R?" V 7854 4600 50  0000 C CNN
F 1 "1k" V 7945 4600 50  0000 C CNN
F 2 "" H 8050 4600 50  0001 C CNN
F 3 "~" H 8050 4600 50  0001 C CNN
	1    8050 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60872B7E
P 8050 4250
AR Path="/60872B7E" Ref="R?"  Part="1" 
AR Path="/608652D9/60872B7E" Ref="R?"  Part="1" 
F 0 "R?" V 7854 4250 50  0000 C CNN
F 1 "1k" V 7945 4250 50  0000 C CNN
F 2 "" H 8050 4250 50  0001 C CNN
F 3 "~" H 8050 4250 50  0001 C CNN
	1    8050 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 4600 7650 4600
Wire Wire Line
	7550 4350 7550 4600
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U?
U 1 1 60872B86
P 6900 3750
AR Path="/60872B86" Ref="U?"  Part="1" 
AR Path="/608652D9/60872B86" Ref="U?"  Part="1" 
F 0 "U?" H 6900 4831 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 6900 4740 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 7350 2950 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 6950 2700 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4350 7550 4350
$Comp
L Device:LED TxLED?
U 1 1 60872B8D
P 7800 4600
AR Path="/60872B8D" Ref="TxLED?"  Part="1" 
AR Path="/608652D9/60872B8D" Ref="TxLED?"  Part="1" 
F 0 "TxLED?" H 7793 4817 50  0000 C CNN
F 1 "LED" H 7793 4726 50  0000 C CNN
F 2 "" H 7800 4600 50  0001 C CNN
F 3 "~" H 7800 4600 50  0001 C CNN
	1    7800 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED RxLED?
U 1 1 60872B93
P 7800 4250
AR Path="/60872B93" Ref="RxLED?"  Part="1" 
AR Path="/608652D9/60872B93" Ref="RxLED?"  Part="1" 
F 0 "RxLED?" H 7793 4467 50  0000 C CNN
F 1 "LED" H 7793 4376 50  0000 C CNN
F 2 "" H 7800 4250 50  0001 C CNN
F 3 "~" H 7800 4250 50  0001 C CNN
	1    7800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4250 7650 4250
Wire Wire Line
	7500 3550 7650 3550
Wire Wire Line
	7500 3450 7650 3450
$Comp
L Device:R_Small R?
U 1 1 60872BAC
P 5750 4200
AR Path="/60872BAC" Ref="R?"  Part="1" 
AR Path="/608652D9/60872BAC" Ref="R?"  Part="1" 
F 0 "R?" H 5691 4154 50  0000 R CNN
F 1 "47.5k" H 5691 4245 50  0000 R CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60872BB2
P 5500 4050
AR Path="/60872BB2" Ref="R?"  Part="1" 
AR Path="/608652D9/60872BB2" Ref="R?"  Part="1" 
F 0 "R?" V 5696 4050 50  0000 C CNN
F 1 "22.1k" V 5605 4050 50  0000 C CNN
F 2 "" H 5500 4050 50  0001 C CNN
F 3 "~" H 5500 4050 50  0001 C CNN
	1    5500 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60872BE4
P 6950 4750
AR Path="/60872BE4" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/60872BE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6950 4500 50  0001 C CNN
F 1 "GND" H 6955 4577 50  0000 C CNN
F 2 "" H 6950 4750 50  0001 C CNN
F 3 "" H 6950 4750 50  0001 C CNN
	1    6950 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4650 7000 4650
Connection ~ 6950 4650
Wire Wire Line
	6950 4650 6950 4750
Wire Wire Line
	6900 4650 6950 4650
$Comp
L Device:R_Small R?
U 1 1 60872BEE
P 6150 2950
AR Path="/60872BEE" Ref="R?"  Part="1" 
AR Path="/608652D9/60872BEE" Ref="R?"  Part="1" 
F 0 "R?" H 6209 2996 50  0000 L CNN
F 1 "1k" H 6209 2905 50  0000 L CNN
F 2 "" H 6150 2950 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3150 6150 3050
Wire Wire Line
	6300 3150 6150 3150
Wire Wire Line
	3600 4650 3750 4650
Connection ~ 3600 4650
$Comp
L power:GND #PWR?
U 1 1 60872BF8
P 3600 4650
AR Path="/60872BF8" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/60872BF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 4400 50  0001 C CNN
F 1 "GND" H 3605 4477 50  0000 C CNN
F 2 "" H 3600 4650 50  0001 C CNN
F 3 "" H 3600 4650 50  0001 C CNN
	1    3600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4650 3750 4600
Wire Wire Line
	3450 4650 3600 4650
Wire Wire Line
	3450 4600 3450 4650
$Comp
L Connector:USB_C_Plug_USB2.0 P?
U 1 1 60872C01
P 3750 3700
AR Path="/60872C01" Ref="P?"  Part="1" 
AR Path="/608652D9/60872C01" Ref="P?"  Part="1" 
F 0 "P?" H 3857 4567 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 3857 4476 50  0000 C CNN
F 2 "" H 3900 3700 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 3900 3700 50  0001 C CNN
	1    3750 3700
	1    0    0    -1  
$EndComp
NoConn ~ 7500 3150
Text HLabel 7650 3450 2    50   Input ~ 0
RX
Text HLabel 7650 3550 2    50   Output ~ 0
TX
Text Label 4450 3100 0    50   ~ 0
VBUS
Text Label 4450 3600 0    50   ~ 0
D-
Text Label 4450 3800 0    50   ~ 0
D+
$Comp
L power:GND #PWR?
U 1 1 60883C5B
P 4850 3650
AR Path="/60883C5B" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/60883C5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 3400 50  0001 C CNN
F 1 "GND" H 4855 3477 50  0000 C CNN
F 2 "" H 4850 3650 50  0001 C CNN
F 3 "" H 4850 3650 50  0001 C CNN
	1    4850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 608840CF
P 4850 3450
AR Path="/608840CF" Ref="R?"  Part="1" 
AR Path="/608652D9/608840CF" Ref="R?"  Part="1" 
F 0 "R?" H 4791 3404 50  0000 R CNN
F 1 "5.1k" H 4791 3495 50  0000 R CNN
F 2 "" H 4850 3450 50  0001 C CNN
F 3 "~" H 4850 3450 50  0001 C CNN
	1    4850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 3550 4850 3650
Wire Wire Line
	6300 4150 6100 4150
Wire Wire Line
	6300 4250 6100 4250
Text Label 6100 4250 0    50   ~ 0
D-
Text Label 6100 4150 0    50   ~ 0
D+
Text Label 6100 3750 0    50   ~ 0
VBUS
Wire Wire Line
	5600 4050 5750 4050
Wire Wire Line
	5750 4050 5750 4100
Connection ~ 5750 4050
Wire Wire Line
	5750 4050 6300 4050
Wire Wire Line
	5750 4300 5750 4400
$Comp
L power:GND #PWR?
U 1 1 608A68DE
P 5750 4400
AR Path="/608A68DE" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/608A68DE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 4150 50  0001 C CNN
F 1 "GND" H 5755 4227 50  0000 C CNN
F 2 "" H 5750 4400 50  0001 C CNN
F 3 "" H 5750 4400 50  0001 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3750 6300 3750
Wire Wire Line
	5400 4050 5150 4050
Wire Wire Line
	4350 3100 4450 3100
Wire Wire Line
	4350 3600 4450 3600
Wire Wire Line
	4350 3800 4450 3800
Text Label 5150 4050 0    50   ~ 0
VBUS
Wire Wire Line
	4350 3300 4850 3300
Wire Wire Line
	4850 3300 4850 3350
Text Label 4850 5550 0    50   ~ 0
D+
Text Label 4850 5450 0    50   ~ 0
D-
Text Label 5350 4850 0    50   ~ 0
VBUS
$Comp
L power:GND #PWR?
U 1 1 608CFC5E
P 5500 5450
AR Path="/608CFC5E" Ref="#PWR?"  Part="1" 
AR Path="/608652D9/608CFC5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 5200 50  0001 C CNN
F 1 "GND" V 5505 5322 50  0000 R CNN
F 2 "" H 5500 5450 50  0001 C CNN
F 3 "" H 5500 5450 50  0001 C CNN
	1    5500 5450
	0    -1   -1   0   
$EndComp
NoConn ~ 4350 3400
NoConn ~ 6300 3450
NoConn ~ 6300 3550
$Comp
L Power_Protection:SP0503BAHT D?
U 1 1 608FE2F6
P 5250 5450
F 0 "D?" V 5592 5450 50  0000 C CNN
F 1 "SP0503BAHT" V 5501 5450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 5475 5400 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 5375 5575 50  0001 C CNN
	1    5250 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 5450 5500 5450
Wire Wire Line
	4850 5350 5050 5350
Wire Wire Line
	4850 5450 5050 5450
Wire Wire Line
	4850 5550 5050 5550
$EndSCHEMATC
