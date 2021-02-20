EESchema Schematic File Version 4
LIBS:SerialShiftLCD-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L 74xx:74HC595 U1
U 1 1 5D373735
P 4400 3250
F 0 "U1" H 4400 4028 50  0000 C CNN
F 1 "74HC595" H 4400 3937 50  0000 C CNN
F 2 "Package_SO:SOP-16_4.4x10.4mm_P1.27mm" H 4400 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4400 3250 50  0001 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 5D3737EF
P 7200 1800
F 0 "J3" V 7417 1746 50  0000 C CNN
F 1 "Conn_01x16" V 7326 1746 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2000
Wire Wire Line
	4800 3050 7000 3050
Wire Wire Line
	7000 3050 7000 2000
Wire Wire Line
	7500 2000 7500 3250
Wire Wire Line
	7500 3250 4800 3250
Wire Wire Line
	4800 3350 7600 3350
Wire Wire Line
	7600 3350 7600 2000
Wire Wire Line
	7700 2000 7700 3450
Wire Wire Line
	7700 3450 4800 3450
Wire Wire Line
	4800 3550 7800 3550
Wire Wire Line
	7800 3550 7800 2000
$Comp
L power:+5V #PWR0101
U 1 1 5D373B41
P 4400 2300
F 0 "#PWR0101" H 4400 2150 50  0001 C CNN
F 1 "+5V" H 4415 2473 50  0000 C CNN
F 2 "" H 4400 2300 50  0001 C CNN
F 3 "" H 4400 2300 50  0001 C CNN
	1    4400 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5D373B57
P 6050 2000
F 0 "#PWR0102" H 6050 1850 50  0001 C CNN
F 1 "+5V" H 6065 2173 50  0000 C CNN
F 2 "" H 6050 2000 50  0001 C CNN
F 3 "" H 6050 2000 50  0001 C CNN
	1    6050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D373B66
P 8450 2000
F 0 "#PWR0103" H 8450 1850 50  0001 C CNN
F 1 "+5V" H 8465 2173 50  0000 C CNN
F 2 "" H 8450 2000 50  0001 C CNN
F 3 "" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D373B9A
P 8550 2900
F 0 "#PWR0104" H 8550 2650 50  0001 C CNN
F 1 "GND" H 8555 2727 50  0000 C CNN
F 2 "" H 8550 2900 50  0001 C CNN
F 3 "" H 8550 2900 50  0001 C CNN
	1    8550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D373BC0
P 6500 2250
F 0 "#PWR0105" H 6500 2000 50  0001 C CNN
F 1 "GND" H 6505 2077 50  0000 C CNN
F 2 "" H 6500 2250 50  0001 C CNN
F 3 "" H 6500 2250 50  0001 C CNN
	1    6500 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D373BE6
P 4400 4050
F 0 "#PWR0106" H 4400 3800 50  0001 C CNN
F 1 "GND" H 4405 3877 50  0000 C CNN
F 2 "" H 4400 4050 50  0001 C CNN
F 3 "" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4050 4400 4000
Wire Wire Line
	6500 2250 6500 2000
Wire Wire Line
	6050 2100 6600 2100
Wire Wire Line
	6600 2100 6600 2000
Wire Wire Line
	6050 2000 6050 2100
Wire Wire Line
	4400 2650 4400 2300
$Comp
L power:GND #PWR0107
U 1 1 5D374134
P 6700 2400
F 0 "#PWR0107" H 6700 2150 50  0001 C CNN
F 1 "GND" H 6705 2227 50  0000 C CNN
F 2 "" H 6700 2400 50  0001 C CNN
F 3 "" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D37415A
P 6700 2200
F 0 "R1" H 6770 2246 50  0000 L CNN
F 1 "R" H 6770 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 2200 50  0001 C CNN
F 3 "~" H 6700 2200 50  0001 C CNN
	1    6700 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D3741E0
P 7900 2300
F 0 "R2" H 7970 2346 50  0000 L CNN
F 1 "R" H 7970 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 2300 50  0001 C CNN
F 3 "~" H 7900 2300 50  0001 C CNN
	1    7900 2300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5D374255
P 8450 2600
F 0 "Q1" H 8641 2646 50  0000 L CNN
F 1 "BC547" H 8641 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8650 2525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8450 2600 50  0001 L CNN
	1    8450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2000 7900 2150
Wire Wire Line
	7900 2450 7900 2500
Wire Wire Line
	7900 2500 8200 2500
Wire Wire Line
	8200 2500 8200 2150
Wire Wire Line
	8200 2150 8450 2150
Wire Wire Line
	8450 2150 8450 2000
Wire Wire Line
	8000 2000 8000 2050
Wire Wire Line
	8000 2050 8300 2050
Wire Wire Line
	8300 2050 8300 2250
Wire Wire Line
	8300 2250 8550 2250
Wire Wire Line
	8550 2250 8550 2400
Wire Wire Line
	8550 2800 8550 2900
Wire Wire Line
	4800 3150 8000 3150
Wire Wire Line
	8000 2600 8250 2600
Wire Wire Line
	6700 2000 6700 2050
Wire Wire Line
	6700 2350 6700 2400
Wire Wire Line
	3000 5200 3400 5200
$Comp
L power:GND #PWR0108
U 1 1 5D37898B
P 4100 5500
F 0 "#PWR0108" H 4100 5250 50  0001 C CNN
F 1 "GND" H 4105 5327 50  0000 C CNN
F 2 "" H 4100 5500 50  0001 C CNN
F 3 "" H 4100 5500 50  0001 C CNN
	1    4100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5D3789C9
P 3200 5650
F 0 "#PWR0109" H 3200 5500 50  0001 C CNN
F 1 "+5V" H 3215 5823 50  0000 C CNN
F 2 "" H 3200 5650 50  0001 C CNN
F 3 "" H 3200 5650 50  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2850 3400 2850
Wire Wire Line
	3400 2850 3400 4800
Wire Wire Line
	4000 3050 3500 3050
Wire Wire Line
	3500 3050 3500 4900
Wire Wire Line
	4000 3350 3700 3350
Wire Wire Line
	3700 3350 3700 5100
Wire Wire Line
	3700 5100 3000 5100
Wire Wire Line
	3200 5650 3400 5650
Wire Wire Line
	3400 5650 3400 5200
Wire Wire Line
	4100 5500 4100 5300
Wire Wire Line
	3000 5300 4100 5300
Wire Wire Line
	3900 3450 3900 4000
Wire Wire Line
	3900 4000 4400 4000
Wire Wire Line
	3900 3450 4000 3450
Connection ~ 4400 4000
Wire Wire Line
	4400 4000 4400 3950
$Comp
L power:+5V #PWR0110
U 1 1 5D6A439C
P 3600 3300
F 0 "#PWR0110" H 3600 3150 50  0001 C CNN
F 1 "+5V" H 3615 3473 50  0000 C CNN
F 2 "" H 3600 3300 50  0001 C CNN
F 3 "" H 3600 3300 50  0001 C CNN
	1    3600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3300 3600 3350
Wire Wire Line
	3600 3350 3650 3350
Wire Wire Line
	3650 3350 3650 3150
Wire Wire Line
	3650 3150 4000 3150
Wire Wire Line
	2800 4850 2800 4800
Wire Wire Line
	2800 4800 3400 4800
Wire Wire Line
	2650 4900 2650 4950
Wire Wire Line
	2650 4900 3500 4900
Wire Wire Line
	3000 5050 3000 5100
Wire Wire Line
	3000 5150 3000 5200
Wire Wire Line
	3000 5250 3000 5300
$Comp
L power:GND #PWR0111
U 1 1 5D6B52D4
P 6900 2050
F 0 "#PWR0111" H 6900 1800 50  0001 C CNN
F 1 "GND" H 6905 1877 50  0000 C CNN
F 2 "" H 6900 2050 50  0001 C CNN
F 3 "" H 6900 2050 50  0001 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 6900 2050
$Comp
L Device:R R3
U 1 1 5D6B8D79
P 8000 2850
F 0 "R3" H 8070 2896 50  0000 L CNN
F 1 "R" H 8070 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7930 2850 50  0001 C CNN
F 3 "~" H 8000 2850 50  0001 C CNN
	1    8000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2600 8000 2700
Wire Wire Line
	8000 3000 8000 3150
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5D6B7D0D
P 2400 5050
F 0 "J1" H 2320 4525 50  0000 C CNN
F 1 "Conn_01x06" H 2320 4616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2400 5050 50  0001 C CNN
F 3 "~" H 2400 5050 50  0001 C CNN
	1    2400 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4850 2800 4850
Wire Wire Line
	2600 4950 2650 4950
Wire Wire Line
	2600 5050 3000 5050
Wire Wire Line
	2600 5150 3000 5150
Wire Wire Line
	2600 5250 3000 5250
Wire Wire Line
	4800 2950 5400 2950
Wire Wire Line
	5400 2950 5400 4750
Wire Wire Line
	5400 4750 2600 4750
$EndSCHEMATC