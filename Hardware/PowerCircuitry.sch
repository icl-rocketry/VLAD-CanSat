EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L power:GND #PWR035
U 1 1 60723BDE
P 1000 4100
F 0 "#PWR035" H 1000 3850 50  0001 C CNN
F 1 "GND" H 1005 3927 50  0000 C CNN
F 2 "" H 1000 4100 50  0001 C CNN
F 3 "" H 1000 4100 50  0001 C CNN
	1    1000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4100 1000 4000
$Comp
L power:+3V3 #PWR041
U 1 1 6072852F
P 3200 6500
F 0 "#PWR041" H 3200 6350 50  0001 C CNN
F 1 "+3V3" H 3215 6673 50  0000 C CNN
F 2 "" H 3200 6500 50  0001 C CNN
F 3 "" H 3200 6500 50  0001 C CNN
	1    3200 6500
	1    0    0    -1  
$EndComp
$Comp
L 2021-04-13_17-29-21:max1771cpa+ 12VBoostConverter1
U 1 1 6075F38E
P 4150 2050
F 0 "12VBoostConverter1" H 5350 2437 60  0000 C CNN
F 1 "max1771cpa+" H 5350 2331 60  0000 C CNN
F 2 "footprints:max1771cpa&plus_" H 5350 2290 60  0001 C CNN
F 3 "" H 4150 2050 60  0000 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 6079A4BB
P 3300 1250
F 0 "L1" V 3490 1250 50  0000 C CNN
F 1 "22uH" V 3399 1250 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L16.0mm_W8.0mm_P7.62mm" H 3300 1250 50  0001 C CNN
F 3 "~" H 3300 1250 50  0001 C CNN
	1    3300 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1250 3150 1250
$Comp
L power:GND #PWR036
U 1 1 607A1CEB
P 2950 1550
F 0 "#PWR036" H 2950 1300 50  0001 C CNN
F 1 "GND" H 2955 1377 50  0000 C CNN
F 2 "" H 2950 1550 50  0001 C CNN
F 3 "" H 2950 1550 50  0001 C CNN
	1    2950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1750 6550 1750
Wire Wire Line
	6550 1750 6550 2050
Wire Wire Line
	3450 1250 3950 1250
Wire Wire Line
	3950 1250 3950 1750
$Comp
L Device:D_Schottky D2
U 1 1 607B6B59
P 3950 1000
F 0 "D2" H 3950 1216 50  0000 C CNN
F 1 "D_Schottky" H 3950 1125 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 3950 1000 50  0001 C CNN
F 3 "~" H 3950 1000 50  0001 C CNN
	1    3950 1000
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C1.1
U 1 1 607A0DAB
P 2950 1400
F 0 "C1.1" H 3065 1446 50  0000 L CNN
F 1 "68uF" H 3065 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2950 1400 50  0001 C CNN
F 3 "~" H 2950 1400 50  0001 C CNN
	1    2950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 607B9113
P 4550 1150
F 0 "#PWR044" H 4550 900 50  0001 C CNN
F 1 "GND" H 4555 977 50  0000 C CNN
F 2 "" H 4550 1150 50  0001 C CNN
F 3 "" H 4550 1150 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1.3
U 1 1 607B9D05
P 5200 1100
F 0 "C1.3" H 5315 1146 50  0000 L CNN
F 1 "0.1uF" H 5315 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 950 50  0001 C CNN
F 3 "~" H 5200 1100 50  0001 C CNN
	1    5200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 750  4950 950 
Wire Wire Line
	4950 950  5200 950 
$Comp
L power:GND #PWR047
U 1 1 607BB3BE
P 5200 1250
F 0 "#PWR047" H 5200 1000 50  0001 C CNN
F 1 "GND" H 5205 1077 50  0000 C CNN
F 2 "" H 5200 1250 50  0001 C CNN
F 3 "" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 950  4950 1500
Wire Wire Line
	4950 1500 3700 1500
Wire Wire Line
	3700 1500 3700 2150
Wire Wire Line
	3700 2150 4150 2150
Connection ~ 4950 950 
$Comp
L power:+12V #PWR049
U 1 1 607BC7F0
P 6950 750
F 0 "#PWR049" H 6950 600 50  0001 C CNN
F 1 "+12V" H 6965 923 50  0000 C CNN
F 2 "" H 6950 750 50  0001 C CNN
F 3 "" H 6950 750 50  0001 C CNN
	1    6950 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 750  6950 750 
$Comp
L Device:R RSense1
U 1 1 607BD94D
P 6950 1900
F 0 "RSense1" H 7020 1946 50  0000 L CNN
F 1 "30m" H 7020 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 1900 50  0001 C CNN
F 3 "~" H 6950 1900 50  0001 C CNN
	1    6950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1750 6950 1750
Connection ~ 6550 1750
$Comp
L power:GND #PWR050
U 1 1 607BE9C9
P 6950 2750
F 0 "#PWR050" H 6950 2500 50  0001 C CNN
F 1 "GND" H 6955 2577 50  0000 C CNN
F 2 "" H 6950 2750 50  0001 C CNN
F 3 "" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2050 6950 2150
Wire Wire Line
	6550 2150 6950 2150
Connection ~ 6950 2150
Wire Wire Line
	6950 2150 6950 2250
Wire Wire Line
	6550 2250 6950 2250
Connection ~ 6950 2250
$Comp
L power:GND #PWR040
U 1 1 607C2ADA
P 3700 2250
F 0 "#PWR040" H 3700 2000 50  0001 C CNN
F 1 "GND" H 3705 2077 50  0000 C CNN
F 2 "" H 3700 2250 50  0001 C CNN
F 3 "" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2250 4150 2250
$Comp
L Device:CP1 C2.1
U 1 1 607CCEAF
P 2950 3900
F 0 "C2.1" H 3065 3946 50  0000 L CNN
F 1 "68uF" H 3065 3855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2950 3900 50  0001 C CNN
F 3 "~" H 2950 3900 50  0001 C CNN
	1    2950 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 607CE63A
P 2950 4050
F 0 "#PWR037" H 2950 3800 50  0001 C CNN
F 1 "GND" H 2955 3877 50  0000 C CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "" H 2950 4050 50  0001 C CNN
	1    2950 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 607CEF0C
P 3300 3750
F 0 "L2" V 3490 3750 50  0000 C CNN
F 1 "22uH" V 3399 3750 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L16.0mm_W8.0mm_P7.62mm" H 3300 3750 50  0001 C CNN
F 3 "~" H 3300 3750 50  0001 C CNN
	1    3300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 3750 3150 3750
Wire Wire Line
	3450 3750 3950 3750
Wire Wire Line
	3950 3750 3950 4250
Wire Wire Line
	4350 4250 6550 4250
Wire Wire Line
	6550 4250 6550 4550
$Comp
L Device:D_Schottky D3
U 1 1 607D4386
P 3950 3500
F 0 "D3" H 3950 3716 50  0000 C CNN
F 1 "D_Schottky" H 3950 3625 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 3950 3500 50  0001 C CNN
F 3 "~" H 3950 3500 50  0001 C CNN
	1    3950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C2.3
U 1 1 607D732D
P 5200 3600
F 0 "C2.3" H 5315 3646 50  0000 L CNN
F 1 "0.1uF" H 5315 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 3450 50  0001 C CNN
F 3 "~" H 5200 3600 50  0001 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3250 4950 3450
Wire Wire Line
	4950 3450 5200 3450
$Comp
L power:GND #PWR048
U 1 1 607D93EF
P 5200 3750
F 0 "#PWR048" H 5200 3500 50  0001 C CNN
F 1 "GND" H 5205 3577 50  0000 C CNN
F 2 "" H 5200 3750 50  0001 C CNN
F 3 "" H 5200 3750 50  0001 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR051
U 1 1 607D9DA2
P 6950 3250
F 0 "#PWR051" H 6950 3100 50  0001 C CNN
F 1 "+6V" H 6965 3423 50  0000 C CNN
F 2 "" H 6950 3250 50  0001 C CNN
F 3 "" H 6950 3250 50  0001 C CNN
	1    6950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3250 6700 3250
Wire Wire Line
	4950 3450 4950 4000
Wire Wire Line
	4950 4000 3700 4000
Wire Wire Line
	3700 4000 3700 4650
Wire Wire Line
	3700 4650 4150 4650
Connection ~ 4950 3450
$Comp
L Device:R R2.2
U 1 1 607DC95A
P 6700 3600
F 0 "R2.2" H 6770 3646 50  0000 L CNN
F 1 "150k" H 6770 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6630 3600 50  0001 C CNN
F 3 "~" H 6700 3600 50  0001 C CNN
	1    6700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3450 6700 3250
Connection ~ 6700 3250
Wire Wire Line
	6700 3250 6950 3250
$Comp
L Device:C C2.4
U 1 1 607DE3E9
P 6200 3600
F 0 "C2.4" H 6315 3646 50  0000 L CNN
F 1 "100pF" H 6315 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 3450 50  0001 C CNN
F 3 "~" H 6200 3600 50  0001 C CNN
	1    6200 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R RSense2
U 1 1 607E0729
P 6950 4400
F 0 "RSense2" H 7020 4446 50  0000 L CNN
F 1 "30m" H 7020 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 4400 50  0001 C CNN
F 3 "~" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4250 6950 4250
Connection ~ 6550 4250
$Comp
L power:GND #PWR052
U 1 1 607E2E8D
P 6950 5150
F 0 "#PWR052" H 6950 4900 50  0001 C CNN
F 1 "GND" H 6955 4977 50  0000 C CNN
F 2 "" H 6950 5150 50  0001 C CNN
F 3 "" H 6950 5150 50  0001 C CNN
	1    6950 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4550 6950 4650
Wire Wire Line
	6550 4650 6950 4650
Connection ~ 6950 4650
Wire Wire Line
	6950 4650 6950 4750
Wire Wire Line
	6550 4750 6950 4750
Connection ~ 6950 4750
Wire Wire Line
	6950 4750 6950 5150
Wire Wire Line
	6700 3750 6700 4000
Wire Wire Line
	6700 4000 7450 4000
Wire Wire Line
	7450 4000 7450 5500
Wire Wire Line
	7450 5500 4450 5500
Wire Wire Line
	3700 5500 3700 4750
Wire Wire Line
	3700 4750 4150 4750
$Comp
L Device:R R2.1
U 1 1 607F16EC
P 4600 5250
F 0 "R2.1" V 4393 5250 50  0000 C CNN
F 1 "50k" V 4484 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 5250 50  0001 C CNN
F 3 "~" H 4600 5250 50  0001 C CNN
	1    4600 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR046
U 1 1 607F2A71
P 4750 5250
F 0 "#PWR046" H 4750 5000 50  0001 C CNN
F 1 "GND" H 4755 5077 50  0000 C CNN
F 2 "" H 4750 5250 50  0001 C CNN
F 3 "" H 4750 5250 50  0001 C CNN
	1    4750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5250 4450 5500
Connection ~ 4450 5500
Wire Wire Line
	4450 5500 3700 5500
Connection ~ 2950 3750
Connection ~ 2450 3750
Wire Wire Line
	2450 3750 2950 3750
Wire Wire Line
	2450 3750 2450 6500
$Comp
L Device:C C1.4
U 1 1 607C15ED
P 6550 2500
F 0 "C1.4" H 6665 2546 50  0000 L CNN
F 1 "0.1uF" H 6665 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6588 2350 50  0001 C CNN
F 3 "~" H 6550 2500 50  0001 C CNN
	1    6550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3450 6700 3450
Connection ~ 6700 3450
Wire Wire Line
	6200 3750 6700 3750
Connection ~ 6700 3750
Wire Wire Line
	6950 2250 6950 2650
Wire Wire Line
	6550 2650 6950 2650
Connection ~ 6950 2650
Wire Wire Line
	6950 2650 6950 2750
$Comp
L Device:C C2.5
U 1 1 607E20CE
P 6550 5000
F 0 "C2.5" H 6665 5046 50  0000 L CNN
F 1 "0.1uF" H 6665 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6588 4850 50  0001 C CNN
F 3 "~" H 6550 5000 50  0001 C CNN
	1    6550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5150 6950 5150
Connection ~ 6950 5150
$Comp
L Connector:Conn_01x02_Male Battery1
U 1 1 607C9020
P 800 3750
F 0 "Battery1" H 908 3931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 908 3840 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 800 3750 50  0001 C CNN
F 3 "~" H 800 3750 50  0001 C CNN
	1    800  3750
	1    0    0    -1  
$EndComp
$Comp
L 2021-04-13_17-29-21:max1771cpa+ 6VBoostConverter1
U 1 1 6075E3BF
P 4150 4550
F 0 "6VBoostConverter1" H 5350 4937 60  0000 C CNN
F 1 "max1771cpa+" H 5350 4831 60  0000 C CNN
F 2 "footprints:max1771cpa&plus_" H 5350 4790 60  0001 C CNN
F 3 "" H 4150 4550 60  0000 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 607EA56C
P 4500 3650
F 0 "#PWR045" H 4500 3400 50  0001 C CNN
F 1 "GND" H 4505 3477 50  0000 C CNN
F 2 "" H 4500 3650 50  0001 C CNN
F 3 "" H 4500 3650 50  0001 C CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 607EAFF9
P 4150 4850
F 0 "#PWR043" H 4150 4600 50  0001 C CNN
F 1 "GND" H 4155 4677 50  0000 C CNN
F 2 "" H 4150 4850 50  0001 C CNN
F 3 "" H 4150 4850 50  0001 C CNN
	1    4150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 607ED3CA
P 4150 2350
F 0 "#PWR042" H 4150 2100 50  0001 C CNN
F 1 "GND" H 4155 2177 50  0000 C CNN
F 2 "" H 4150 2350 50  0001 C CNN
F 3 "" H 4150 2350 50  0001 C CNN
	1    4150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 608918ED
P 1100 3750
F 0 "#FLG0101" H 1100 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 3923 50  0000 C CNN
F 2 "" H 1100 3750 50  0001 C CNN
F 3 "~" H 1100 3750 50  0001 C CNN
	1    1100 3750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60891FF4
P 1000 4000
F 0 "#FLG0102" H 1000 4075 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 4128 50  0000 L CNN
F 2 "" H 1000 4000 50  0001 C CNN
F 3 "~" H 1000 4000 50  0001 C CNN
	1    1000 4000
	0    1    1    0   
$EndComp
Connection ~ 1000 4000
Wire Wire Line
	1000 4000 1000 3850
Wire Wire Line
	1000 3750 1100 3750
Wire Wire Line
	1500 3750 2050 3750
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6090A199
P 9100 1450
F 0 "H1" V 9054 1600 50  0000 L CNN
F 1 "MountingHole_Pad" V 9145 1600 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad" H 9100 1450 50  0001 C CNN
F 3 "~" H 9100 1450 50  0001 C CNN
	1    9100 1450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6090BABB
P 9100 1650
F 0 "H2" V 9054 1800 50  0000 L CNN
F 1 "MountingHole_Pad" V 9145 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad" H 9100 1650 50  0001 C CNN
F 3 "~" H 9100 1650 50  0001 C CNN
	1    9100 1650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6090BF65
P 9100 1850
F 0 "H3" V 9054 2000 50  0000 L CNN
F 1 "MountingHole_Pad" V 9145 2000 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad" H 9100 1850 50  0001 C CNN
F 3 "~" H 9100 1850 50  0001 C CNN
	1    9100 1850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6090BF6B
P 9100 2050
F 0 "H4" V 9054 2200 50  0000 L CNN
F 1 "MountingHole_Pad" V 9145 2200 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad" H 9100 2050 50  0001 C CNN
F 3 "~" H 9100 2050 50  0001 C CNN
	1    9100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1450 9000 1650
Connection ~ 9000 1650
Wire Wire Line
	9000 1650 9000 1750
Connection ~ 9000 1850
Wire Wire Line
	9000 1850 9000 2050
$Comp
L power:GND #PWR053
U 1 1 6090F428
P 9000 1750
F 0 "#PWR053" H 9000 1500 50  0001 C CNN
F 1 "GND" V 9005 1622 50  0000 R CNN
F 2 "" H 9000 1750 50  0001 C CNN
F 3 "" H 9000 1750 50  0001 C CNN
	1    9000 1750
	0    1    1    0   
$EndComp
Connection ~ 9000 1750
Wire Wire Line
	9000 1750 9000 1850
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 609DE2A3
P 9350 3000
F 0 "J4" H 9322 2882 50  0000 R CNN
F 1 "Conn_01x02_Male" H 9322 2973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 9350 3000 50  0001 C CNN
F 3 "~" H 9350 3000 50  0001 C CNN
	1    9350 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 2900 9050 2900
Wire Wire Line
	9150 3000 9050 3000
Wire Wire Line
	9050 3000 9050 3100
Wire Wire Line
	9050 2900 9050 2800
$Comp
L power:+12V #PWR054
U 1 1 609E333D
P 9050 2800
F 0 "#PWR054" H 9050 2650 50  0001 C CNN
F 1 "+12V" H 9065 2973 50  0000 C CNN
F 2 "" H 9050 2800 50  0001 C CNN
F 3 "" H 9050 2800 50  0001 C CNN
	1    9050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 609E5451
P 9050 3100
F 0 "#PWR055" H 9050 2850 50  0001 C CNN
F 1 "GND" H 9055 2927 50  0000 C CNN
F 2 "" H 9050 3100 50  0001 C CNN
F 3 "" H 9050 3100 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
Connection ~ 1100 3750
$Comp
L Switch:SW_SPST SW3
U 1 1 608DCB23
P 1300 3750
F 0 "SW3" H 1300 3985 50  0000 C CNN
F 1 "SW_SPST" H 1300 3894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 1300 3750 50  0001 C CNN
F 3 "~" H 1300 3750 50  0001 C CNN
	1    1300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3750 2050 4250
Wire Wire Line
	2050 4250 1500 4250
Wire Wire Line
	1500 4250 1500 4500
Wire Wire Line
	2300 4750 2300 3750
Wire Wire Line
	2300 3750 2450 3750
$Comp
L power:GND #PWR0101
U 1 1 60A25E03
P 1900 5150
F 0 "#PWR0101" H 1900 4900 50  0001 C CNN
F 1 "GND" H 1905 4977 50  0000 C CNN
F 2 "" H 1900 5150 50  0001 C CNN
F 3 "" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1150 3950 1250
Connection ~ 3950 1250
Wire Wire Line
	3950 850  3950 750 
Connection ~ 4950 750 
$Comp
L Device:CP1 C1.7
U 1 1 60A60441
P 4450 900
F 0 "C1.7" H 4565 946 50  0000 L CNN
F 1 "68uF" H 4565 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4450 900 50  0001 C CNN
F 3 "~" H 4450 900 50  0001 C CNN
	1    4450 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1.9
U 1 1 60A60F44
P 4650 900
F 0 "C1.9" H 4765 946 50  0000 L CNN
F 1 "68uF" H 4765 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4650 900 50  0001 C CNN
F 3 "~" H 4650 900 50  0001 C CNN
	1    4650 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1.11
U 1 1 60A613E6
P 4850 900
F 0 "C1.11" H 4965 946 50  0000 L CNN
F 1 "68uF" H 4965 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4850 900 50  0001 C CNN
F 3 "~" H 4850 900 50  0001 C CNN
	1    4850 900 
	1    0    0    -1  
$EndComp
Connection ~ 4850 750 
Wire Wire Line
	4850 750  4950 750 
Connection ~ 4650 750 
Wire Wire Line
	4650 750  4850 750 
Connection ~ 4450 750 
Wire Wire Line
	4450 750  4650 750 
Wire Wire Line
	3950 750  4250 750 
$Comp
L Device:CP1 C1.5
U 1 1 60A668C7
P 4250 900
F 0 "C1.5" H 4365 946 50  0000 L CNN
F 1 "68uF" H 4365 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4250 900 50  0001 C CNN
F 3 "~" H 4250 900 50  0001 C CNN
	1    4250 900 
	1    0    0    -1  
$EndComp
Connection ~ 4250 750 
Wire Wire Line
	4250 750  4450 750 
Wire Wire Line
	4250 1050 4450 1050
Connection ~ 4450 1050
Wire Wire Line
	4450 1050 4550 1050
Connection ~ 4650 1050
Wire Wire Line
	4650 1050 4850 1050
Wire Wire Line
	4550 1150 4550 1050
Connection ~ 4550 1050
Wire Wire Line
	4550 1050 4650 1050
$Comp
L Analog_Switch:MAX40200AUK U4
U 1 1 60A1DB12
P 1900 4850
F 0 "U4" H 1900 5217 50  0000 C CNN
F 1 "MAX40200AUK" H 1900 5126 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1900 5350 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX40200.pdf" H 1900 5350 50  0001 C CNN
	1    1900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4500 1200 4500
Wire Wire Line
	1200 4500 1200 4950
Wire Wire Line
	1200 4950 1500 4950
Connection ~ 1500 4500
Wire Wire Line
	1500 4500 1500 4750
Wire Wire Line
	3950 3650 3950 3750
Connection ~ 3950 3750
Wire Wire Line
	3950 3350 3950 3250
Wire Wire Line
	3950 3250 4200 3250
Connection ~ 4950 3250
$Comp
L Device:CP1 C1.10
U 1 1 60A97AFD
P 4800 3400
F 0 "C1.10" H 4915 3446 50  0000 L CNN
F 1 "68uF" H 4915 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4800 3400 50  0001 C CNN
F 3 "~" H 4800 3400 50  0001 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
Connection ~ 4800 3250
Wire Wire Line
	4800 3250 4950 3250
$Comp
L Device:CP1 C1.8
U 1 1 60A993A5
P 4600 3400
F 0 "C1.8" H 4715 3446 50  0000 L CNN
F 1 "68uF" H 4715 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4600 3400 50  0001 C CNN
F 3 "~" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
Connection ~ 4600 3250
Wire Wire Line
	4600 3250 4800 3250
$Comp
L Device:CP1 C1.6
U 1 1 60A997C6
P 4400 3400
F 0 "C1.6" H 4515 3446 50  0000 L CNN
F 1 "68uF" H 4515 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4400 3400 50  0001 C CNN
F 3 "~" H 4400 3400 50  0001 C CNN
	1    4400 3400
	1    0    0    -1  
$EndComp
Connection ~ 4400 3250
Wire Wire Line
	4400 3250 4600 3250
$Comp
L Device:CP1 C1.2
U 1 1 60A99BF5
P 4200 3400
F 0 "C1.2" H 4315 3446 50  0000 L CNN
F 1 "68uF" H 4315 3355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4200 3400 50  0001 C CNN
F 3 "~" H 4200 3400 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Connection ~ 4200 3250
Wire Wire Line
	4200 3250 4400 3250
Wire Wire Line
	4200 3550 4400 3550
Connection ~ 4400 3550
Wire Wire Line
	4400 3550 4500 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 3550 4800 3550
Wire Wire Line
	4500 3650 4500 3550
Connection ~ 4500 3550
Wire Wire Line
	4500 3550 4600 3550
$Comp
L Transistor_BJT:2N2219 Q7
U 1 1 60A91052
P 2550 3250
F 0 "Q7" H 2741 3204 50  0000 L CNN
F 1 "2N2219" H 2741 3295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2750 3175 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2550 3250 50  0001 L CNN
	1    2550 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 3450 2450 3750
Wire Wire Line
	2450 3050 2450 1250
Wire Wire Line
	2450 1250 2950 1250
Connection ~ 2950 1250
Text GLabel 2750 3250 2    50   Input ~ 0
12VBusSwitch
$Comp
L Device:R R21
U 1 1 60AA8F0F
P 2800 6500
F 0 "R21" V 2593 6500 50  0000 C CNN
F 1 "R" V 2684 6500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 2730 6500 50  0001 C CNN
F 3 "~" H 2800 6500 50  0001 C CNN
	1    2800 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 6500 2650 6500
Wire Wire Line
	2950 6500 3200 6500
$Comp
L VLAD-rescue:MTP3055VL-MTP3055VL Q5
U 1 1 60AA2630
P 1400 1500
F 0 "Q5" H 1400 1770 50  0000 C CNN
F 1 "MTP3055VL" H 1400 1679 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1400 1500 50  0001 L BNN
F 3 "" H 1400 1500 50  0001 L BNN
F 4 "MTP3055VL" H 1400 1500 50  0001 L BNN "MPN"
F 5 "18C7756" H 1400 1500 50  0001 L BNN "OC_NEWARK"
F 6 "1845563" H 1400 1500 50  0001 L BNN "OC_FARNELL"
F 7 "Fairchild" H 1400 1500 50  0001 L BNN "SUPPLIER"
F 8 "TO-220" H 1400 1500 50  0001 L BNN "PACKAGE"
	1    1400 1500
	1    0    0    -1  
$EndComp
Text Label 700  1600 2    50   ~ 0
Gate1
Text Label 4150 2050 2    50   ~ 0
Gate1
Text Label 2100 1600 0    50   ~ 0
Drain1
Text Label 3950 1750 0    50   ~ 0
Drain1
Text Label 2100 1700 0    50   ~ 0
Source1
Text Label 4350 1750 1    50   ~ 0
Source1
$Comp
L VLAD-rescue:MTP3055VL-MTP3055VL Q6
U 1 1 60AC0CD1
P 1400 2250
F 0 "Q6" H 1400 2520 50  0000 C CNN
F 1 "MTP3055VL" H 1400 2429 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1400 2250 50  0001 L BNN
F 3 "" H 1400 2250 50  0001 L BNN
F 4 "MTP3055VL" H 1400 2250 50  0001 L BNN "MPN"
F 5 "18C7756" H 1400 2250 50  0001 L BNN "OC_NEWARK"
F 6 "1845563" H 1400 2250 50  0001 L BNN "OC_FARNELL"
F 7 "Fairchild" H 1400 2250 50  0001 L BNN "SUPPLIER"
F 8 "TO-220" H 1400 2250 50  0001 L BNN "PACKAGE"
	1    1400 2250
	1    0    0    -1  
$EndComp
Text Label 700  2350 2    50   ~ 0
Gate2
Text Label 2100 2350 0    50   ~ 0
Drain2
Text Label 2100 2450 0    50   ~ 0
Source2
Text Label 4150 4550 2    50   ~ 0
Gate2
Text Label 3950 4250 0    50   ~ 0
Drain2
Text Label 4350 4250 1    50   ~ 0
Source2
$EndSCHEMATC
