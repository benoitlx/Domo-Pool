EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Domo interface"
Date "2020-12-06"
Rev "v1.0"
Comp "Domaine de Salais"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L arduino:Arduino_Mega2560_Shield XA?
U 1 1 6103D51B
P 5700 4800
F 0 "XA?" H 5700 2419 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 5700 2313 60  0000 C CNN
F 2 "" H 6400 7550 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 6400 7550 60  0001 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Uno_Shield XA?
U 1 1 61043145
P 2550 9600
F 0 "XA?" H 2550 10987 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 2550 10881 60  0000 C CNN
F 2 "" H 4350 13350 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 4350 13350 60  0001 C CNN
	1    2550 9600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x18_Odd_Even J?
U 1 1 6107FDB2
P 5600 9650
F 0 "J?" H 5650 10667 50  0000 C CNN
F 1 "Conn_02x18_Odd_Even" H 5650 10576 50  0000 C CNN
F 2 "" H 5600 9650 50  0001 C CNN
F 3 "~" H 5600 9650 50  0001 C CNN
	1    5600 9650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x26 J?
U 1 1 61090DBA
P 8750 4850
F 0 "J?" H 8830 4842 50  0000 L CNN
F 1 "Conn_01x26" H 8830 4751 50  0000 L CNN
F 2 "" H 8750 4850 50  0001 C CNN
F 3 "~" H 8750 4850 50  0001 C CNN
	1    8750 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x24 J?
U 1 1 610B5E9E
P 2800 4750
F 0 "J?" H 2718 3325 50  0000 C CNN
F 1 "Conn_01x24" H 2718 3416 50  0000 C CNN
F 2 "" H 2800 4750 50  0001 C CNN
F 3 "~" H 2800 4750 50  0001 C CNN
	1    2800 4750
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 610CD1B2
P 14150 950
F 0 "#FLG?" H 14150 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 14150 1123 50  0000 C CNN
F 2 "" H 14150 950 50  0001 C CNN
F 3 "~" H 14150 950 50  0001 C CNN
	1    14150 950 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 610CE480
P 14800 950
F 0 "#FLG?" H 14800 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 14800 1123 50  0000 C CNN
F 2 "" H 14800 950 50  0001 C CNN
F 3 "~" H 14800 950 50  0001 C CNN
	1    14800 950 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 610CE6E2
P 15500 950
F 0 "#FLG?" H 15500 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 15500 1123 50  0000 C CNN
F 2 "" H 15500 950 50  0001 C CNN
F 3 "~" H 15500 950 50  0001 C CNN
	1    15500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 610CE9BC
P 14400 950
F 0 "#PWR?" H 14400 800 50  0001 C CNN
F 1 "VCC" H 14415 1123 50  0000 C CNN
F 2 "" H 14400 950 50  0001 C CNN
F 3 "" H 14400 950 50  0001 C CNN
	1    14400 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 610CEE51
P 15050 950
F 0 "#PWR?" H 15050 800 50  0001 C CNN
F 1 "+12V" H 15065 1123 50  0000 C CNN
F 2 "" H 15050 950 50  0001 C CNN
F 3 "" H 15050 950 50  0001 C CNN
	1    15050 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610CF26B
P 15500 1150
F 0 "#PWR?" H 15500 900 50  0001 C CNN
F 1 "GND" H 15505 977 50  0000 C CNN
F 2 "" H 15500 1150 50  0001 C CNN
F 3 "" H 15500 1150 50  0001 C CNN
	1    15500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 950  15500 1150
Wire Wire Line
	15050 950  15050 1100
Wire Wire Line
	15050 1100 14800 1100
Wire Wire Line
	14800 1100 14800 950 
Wire Wire Line
	14400 950  14400 1100
Wire Wire Line
	14400 1100 14150 1100
Wire Wire Line
	14150 1100 14150 950 
Text GLabel 7000 3850 2    50   Input ~ 0
22
Text GLabel 7000 3950 2    50   Input ~ 0
23
Text GLabel 7000 4050 2    50   Input ~ 0
24
Text GLabel 7000 4150 2    50   Input ~ 0
25
Text GLabel 7000 4250 2    50   Input ~ 0
26
Text GLabel 7000 4350 2    50   Input ~ 0
27
Text GLabel 7000 4450 2    50   Input ~ 0
28
Text GLabel 7000 4550 2    50   Input ~ 0
29
Text GLabel 7000 4650 2    50   Input ~ 0
30
Text GLabel 7000 4750 2    50   Input ~ 0
31
Text GLabel 7000 4850 2    50   Input ~ 0
32
Text GLabel 7000 4950 2    50   Input ~ 0
33
Text GLabel 7000 5050 2    50   Input ~ 0
34
Text GLabel 7000 5150 2    50   Input ~ 0
35
Text GLabel 7000 5250 2    50   Input ~ 0
36
Text GLabel 7000 5350 2    50   Input ~ 0
37
Text GLabel 7000 5450 2    50   Input ~ 0
38
Text GLabel 7000 5550 2    50   Input ~ 0
39
Text GLabel 7000 5650 2    50   Input ~ 0
40
Text GLabel 7000 5750 2    50   Input ~ 0
41
Text GLabel 7000 5850 2    50   Input ~ 0
42
Text GLabel 7000 5950 2    50   Input ~ 0
43
Text GLabel 7000 6050 2    50   Input ~ 0
44
Text GLabel 7000 6150 2    50   Input ~ 0
45
Text GLabel 7000 6250 2    50   Input ~ 0
46
Text GLabel 7000 6350 2    50   Input ~ 0
47
Text GLabel 7000 6450 2    50   Input ~ 0
48
Text GLabel 7000 6550 2    50   Input ~ 0
49
Text GLabel 7000 6650 2    50   Input ~ 0
50
Text GLabel 7000 6750 2    50   Input ~ 0
51
Text GLabel 7000 6850 2    50   Input ~ 0
52
Text GLabel 7000 6950 2    50   Input ~ 0
53
Text GLabel 5400 8950 0    50   Input ~ 0
22
Text GLabel 5400 9050 0    50   Input ~ 0
24
Text GLabel 5400 9150 0    50   Input ~ 0
26
Text GLabel 5400 9250 0    50   Input ~ 0
28
Text GLabel 5400 9350 0    50   Input ~ 0
30
Text GLabel 5400 9450 0    50   Input ~ 0
32
Text GLabel 5400 9550 0    50   Input ~ 0
34
Text GLabel 5400 9650 0    50   Input ~ 0
36
Text GLabel 5400 9750 0    50   Input ~ 0
38
Text GLabel 5400 9850 0    50   Input ~ 0
40
Text GLabel 5400 9950 0    50   Input ~ 0
42
Text GLabel 5400 10050 0    50   Input ~ 0
44
Text GLabel 5400 10150 0    50   Input ~ 0
46
Text GLabel 5400 10250 0    50   Input ~ 0
48
Text GLabel 5400 10350 0    50   Input ~ 0
50
Text GLabel 5400 10450 0    50   Input ~ 0
52
Text GLabel 5900 8950 2    50   Input ~ 0
23
Text GLabel 5900 9050 2    50   Input ~ 0
25
Text GLabel 5900 9150 2    50   Input ~ 0
27
Text GLabel 5900 9250 2    50   Input ~ 0
29
Text GLabel 5900 9350 2    50   Input ~ 0
31
Text GLabel 5900 9450 2    50   Input ~ 0
33
Text GLabel 5900 9550 2    50   Input ~ 0
35
Text GLabel 5900 9650 2    50   Input ~ 0
37
Text GLabel 5900 9750 2    50   Input ~ 0
39
Text GLabel 5900 9850 2    50   Input ~ 0
41
Text GLabel 5900 9950 2    50   Input ~ 0
43
Text GLabel 5900 10050 2    50   Input ~ 0
45
Text GLabel 5900 10150 2    50   Input ~ 0
47
Text GLabel 5900 10250 2    50   Input ~ 0
49
Text GLabel 5900 10350 2    50   Input ~ 0
51
Text GLabel 5900 10450 2    50   Input ~ 0
53
Text GLabel 7000 2650 2    50   Input ~ 0
2
Text GLabel 7000 2750 2    50   Input ~ 0
3
Text GLabel 7000 2850 2    50   Input ~ 0
4
Text GLabel 7000 2950 2    50   Input ~ 0
5
Text GLabel 7000 3050 2    50   Input ~ 0
6
Text GLabel 7000 3150 2    50   Input ~ 0
7
Text GLabel 7000 3250 2    50   Input ~ 0
8
Text GLabel 7000 3350 2    50   Input ~ 0
9
Text GLabel 7000 3450 2    50   Input ~ 0
10
Text GLabel 7000 3550 2    50   Input ~ 0
11
Text GLabel 7000 3650 2    50   Input ~ 0
12
Text GLabel 7000 3750 2    50   Input ~ 0
13
Text GLabel 4400 2650 0    50   Input ~ 0
0
Text GLabel 4400 2750 0    50   Input ~ 0
1
Text GLabel 4400 2850 0    50   Input ~ 0
19
Text GLabel 4400 2950 0    50   Input ~ 0
18
Text GLabel 4400 3050 0    50   Input ~ 0
17
Text GLabel 4400 3150 0    50   Input ~ 0
16
Text GLabel 4400 3250 0    50   Input ~ 0
15
Text GLabel 4400 3350 0    50   Input ~ 0
14
Text GLabel 4400 3450 0    50   Input ~ 0
20
Text GLabel 4400 3550 0    50   Input ~ 0
21
Text GLabel 4400 3650 0    50   Input ~ 0
sda
Text GLabel 4400 3750 0    50   Input ~ 0
scl
Text GLabel 4400 3950 0    50   Input ~ 0
A0
Text GLabel 4400 4050 0    50   Input ~ 0
A1
Text GLabel 4400 4150 0    50   Input ~ 0
A2
Text GLabel 4400 4250 0    50   Input ~ 0
A3
Text GLabel 4400 4350 0    50   Input ~ 0
A4
Text GLabel 4400 4450 0    50   Input ~ 0
A5
Text GLabel 4400 4550 0    50   Input ~ 0
A6
Text GLabel 4400 4650 0    50   Input ~ 0
A7
Text GLabel 4400 4750 0    50   Input ~ 0
A8
Text GLabel 4400 4850 0    50   Input ~ 0
A9
Text GLabel 4400 4950 0    50   Input ~ 0
A10
Text GLabel 4400 5050 0    50   Input ~ 0
A11
Text GLabel 4400 5150 0    50   Input ~ 0
A12
Text GLabel 4400 5250 0    50   Input ~ 0
A13
Text GLabel 4400 5350 0    50   Input ~ 0
A14
Text GLabel 4400 5450 0    50   Input ~ 0
A15
Text GLabel 4400 5550 0    50   Input ~ 0
Aref
Text GLabel 4400 5750 0    50   Input ~ 0
RST
Text GLabel 4400 5850 0    50   Input ~ 0
ioref
Text GLabel 1250 8550 0    50   Input ~ 0
0
Text GLabel 1250 8650 0    50   Input ~ 0
1
Text GLabel 1250 8850 0    50   Input ~ 0
scl
Text GLabel 1250 8950 0    50   Input ~ 0
sda
Text GLabel 1250 9250 0    50   Input ~ 0
A5
Text GLabel 1250 9350 0    50   Input ~ 0
A4
Text GLabel 1250 9450 0    50   Input ~ 0
A3
Text GLabel 1250 9550 0    50   Input ~ 0
A2
Text GLabel 1250 9650 0    50   Input ~ 0
A1
Text GLabel 1250 9750 0    50   Input ~ 0
A0
Text GLabel 1250 9850 0    50   Input ~ 0
Aref
Text GLabel 3850 8550 2    50   Input ~ 0
2
Text GLabel 3850 8650 2    50   Input ~ 0
3
Text GLabel 3850 8750 2    50   Input ~ 0
4
Text GLabel 3850 8850 2    50   Input ~ 0
5
Text GLabel 3850 8950 2    50   Input ~ 0
6
Text GLabel 3850 9050 2    50   Input ~ 0
7
Text GLabel 3850 9150 2    50   Input ~ 0
8
Text GLabel 3850 9250 2    50   Input ~ 0
9
Text GLabel 3850 9350 2    50   Input ~ 0
10
Text GLabel 3850 9450 2    50   Input ~ 0
11
Text GLabel 3850 9550 2    50   Input ~ 0
12
Text GLabel 3850 9650 2    50   Input ~ 0
13
Text GLabel 3850 9850 2    50   Input ~ 0
miso
Text GLabel 3850 9950 2    50   Input ~ 0
mosi
Text GLabel 3850 10050 2    50   Input ~ 0
sck
Text GLabel 3850 10150 2    50   Input ~ 0
spi5v
Text GLabel 3850 10250 2    50   Input ~ 0
spignd
Text GLabel 3850 10350 2    50   Input ~ 0
spi_res
Text GLabel 3850 10550 2    50   Input ~ 0
RST
Text GLabel 3850 10650 2    50   Input ~ 0
ioref
$Comp
L power:VCC #PWR?
U 1 1 610C34EB
P 3950 5800
F 0 "#PWR?" H 3950 5650 50  0001 C CNN
F 1 "VCC" H 3965 5973 50  0000 C CNN
F 2 "" H 3950 5800 50  0001 C CNN
F 3 "" H 3950 5800 50  0001 C CNN
	1    3950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5800 3950 6650
Wire Wire Line
	3950 6650 4400 6650
Wire Wire Line
	3950 6650 3950 6750
Wire Wire Line
	3950 6750 4400 6750
Connection ~ 3950 6650
Wire Wire Line
	4400 6850 3950 6850
Wire Wire Line
	3950 6850 3950 6750
Connection ~ 3950 6750
Wire Wire Line
	3950 6850 3950 6950
Wire Wire Line
	3950 6950 4400 6950
Connection ~ 3950 6850
$Comp
L power:GND #PWR?
U 1 1 610C95D6
P 4200 7150
F 0 "#PWR?" H 4200 6900 50  0001 C CNN
F 1 "GND" H 4205 6977 50  0000 C CNN
F 2 "" H 4200 7150 50  0001 C CNN
F 3 "" H 4200 7150 50  0001 C CNN
	1    4200 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6050 4200 6050
Wire Wire Line
	4200 6050 4200 6150
Wire Wire Line
	4400 6150 4200 6150
Connection ~ 4200 6150
Wire Wire Line
	4200 6150 4200 6250
Wire Wire Line
	4400 6250 4200 6250
Connection ~ 4200 6250
Wire Wire Line
	4200 6250 4200 6350
Wire Wire Line
	4400 6350 4200 6350
Connection ~ 4200 6350
Wire Wire Line
	4200 6350 4200 6450
Wire Wire Line
	4400 6450 4200 6450
Connection ~ 4200 6450
Wire Wire Line
	4200 6450 4200 7150
Text GLabel 4400 6550 0    50   Input ~ 0
3v3
$Comp
L power:VCC #PWR?
U 1 1 610D371D
P 5250 8550
F 0 "#PWR?" H 5250 8400 50  0001 C CNN
F 1 "VCC" H 5265 8723 50  0000 C CNN
F 2 "" H 5250 8550 50  0001 C CNN
F 3 "" H 5250 8550 50  0001 C CNN
	1    5250 8550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 610D41FD
P 6050 8550
F 0 "#PWR?" H 6050 8400 50  0001 C CNN
F 1 "VCC" H 6065 8723 50  0000 C CNN
F 2 "" H 6050 8550 50  0001 C CNN
F 3 "" H 6050 8550 50  0001 C CNN
	1    6050 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 8550 6050 8850
Wire Wire Line
	6050 8850 5900 8850
Wire Wire Line
	5400 8850 5250 8850
Wire Wire Line
	5250 8850 5250 8550
$Comp
L power:GND #PWR?
U 1 1 610D5D67
P 6050 10750
F 0 "#PWR?" H 6050 10500 50  0001 C CNN
F 1 "GND" H 6055 10577 50  0000 C CNN
F 2 "" H 6050 10750 50  0001 C CNN
F 3 "" H 6050 10750 50  0001 C CNN
	1    6050 10750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610E2F46
P 5250 10750
F 0 "#PWR?" H 5250 10500 50  0001 C CNN
F 1 "GND" H 5255 10577 50  0000 C CNN
F 2 "" H 5250 10750 50  0001 C CNN
F 3 "" H 5250 10750 50  0001 C CNN
	1    5250 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 10550 6050 10550
Wire Wire Line
	6050 10550 6050 10750
Wire Wire Line
	5400 10550 5250 10550
Wire Wire Line
	5250 10550 5250 10750
$Comp
L power:VCC #PWR?
U 1 1 610F83DA
P 850 9950
F 0 "#PWR?" H 850 9800 50  0001 C CNN
F 1 "VCC" H 865 10123 50  0000 C CNN
F 2 "" H 850 9950 50  0001 C CNN
F 3 "" H 850 9950 50  0001 C CNN
	1    850  9950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610F8B93
P 1050 10800
F 0 "#PWR?" H 1050 10550 50  0001 C CNN
F 1 "GND" H 1055 10627 50  0000 C CNN
F 2 "" H 1050 10800 50  0001 C CNN
F 3 "" H 1050 10800 50  0001 C CNN
	1    1050 10800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 10650 850  10650
Wire Wire Line
	850  10650 850  10550
Wire Wire Line
	1050 10800 1050 10350
Wire Wire Line
	1050 10150 1250 10150
Wire Wire Line
	1250 10550 850  10550
Connection ~ 850  10550
Wire Wire Line
	850  10550 850  9950
Wire Wire Line
	1250 10350 1050 10350
Connection ~ 1050 10350
Wire Wire Line
	1050 10350 1050 10250
Wire Wire Line
	1250 10250 1050 10250
Connection ~ 1050 10250
Wire Wire Line
	1050 10250 1050 10150
Text GLabel 1250 10450 0    50   Input ~ 0
3v3
Text GLabel 5450 2200 1    50   Input ~ 0
miso
Text GLabel 5550 2200 1    50   Input ~ 0
mosi
Text GLabel 5650 2200 1    50   Input ~ 0
sck
Text GLabel 5750 2200 1    50   Input ~ 0
spi5v
Text GLabel 5850 2200 1    50   Input ~ 0
spignd
Text GLabel 5950 2200 1    50   Input ~ 0
spi_res
$Comp
L power:VCC #PWR?
U 1 1 6110C2BD
P 3350 3200
F 0 "#PWR?" H 3350 3050 50  0001 C CNN
F 1 "VCC" H 3365 3373 50  0000 C CNN
F 2 "" H 3350 3200 50  0001 C CNN
F 3 "" H 3350 3200 50  0001 C CNN
	1    3350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3650 3350 3650
Wire Wire Line
	3350 3650 3350 3200
Wire Wire Line
	3000 3950 3350 3950
Wire Wire Line
	3350 3950 3350 3650
Connection ~ 3350 3650
Wire Wire Line
	3000 4250 3350 4250
Wire Wire Line
	3350 4250 3350 3950
Connection ~ 3350 3950
$Comp
L power:GND #PWR?
U 1 1 611101C7
P 3550 4400
F 0 "#PWR?" H 3550 4150 50  0001 C CNN
F 1 "GND" H 3555 4227 50  0000 C CNN
F 2 "" H 3550 4400 50  0001 C CNN
F 3 "" H 3550 4400 50  0001 C CNN
	1    3550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4050 3550 4050
Wire Wire Line
	3550 4050 3550 4150
Wire Wire Line
	3000 4150 3550 4150
Connection ~ 3550 4150
Wire Wire Line
	3550 4150 3550 4400
Text GLabel 3000 3850 2    50   Input ~ 0
3v3
Text GLabel 3000 3750 2    50   Input ~ 0
RST
Text GLabel 3000 4350 2    50   Input ~ 0
A0
Text GLabel 3000 4450 2    50   Input ~ 0
A1
Text GLabel 3000 4550 2    50   Input ~ 0
A2
Text GLabel 3000 4650 2    50   Input ~ 0
A3
Text GLabel 3000 4750 2    50   Input ~ 0
A4
Text GLabel 3000 4850 2    50   Input ~ 0
A5
Text GLabel 3000 4950 2    50   Input ~ 0
A6
Text GLabel 3000 5050 2    50   Input ~ 0
A7
Text GLabel 3000 5150 2    50   Input ~ 0
A8
Text GLabel 3000 5250 2    50   Input ~ 0
A9
Text GLabel 3000 5350 2    50   Input ~ 0
A10
Text GLabel 3000 5450 2    50   Input ~ 0
A11
Text GLabel 3000 5550 2    50   Input ~ 0
A12
Text GLabel 3000 5650 2    50   Input ~ 0
A13
Text GLabel 3000 5750 2    50   Input ~ 0
A14
Text GLabel 3000 5850 2    50   Input ~ 0
A15
Text GLabel 8550 3650 0    50   Input ~ 0
scl
Text GLabel 8550 3750 0    50   Input ~ 0
sda
Text GLabel 8550 3850 0    50   Input ~ 0
Aref
Text GLabel 8550 4050 0    50   Input ~ 0
13
Text GLabel 8550 4150 0    50   Input ~ 0
12
Text GLabel 8550 4250 0    50   Input ~ 0
11
Text GLabel 8550 4350 0    50   Input ~ 0
10
Text GLabel 8550 4450 0    50   Input ~ 0
9
Text GLabel 8550 4550 0    50   Input ~ 0
8
Text GLabel 8550 4650 0    50   Input ~ 0
7
Text GLabel 8550 4750 0    50   Input ~ 0
6
Text GLabel 8550 4850 0    50   Input ~ 0
5
Text GLabel 8550 4950 0    50   Input ~ 0
4
Text GLabel 8550 5050 0    50   Input ~ 0
3
Text GLabel 8550 5150 0    50   Input ~ 0
2
Text GLabel 8550 5250 0    50   Input ~ 0
1
Text GLabel 8550 5350 0    50   Input ~ 0
0
Text GLabel 8550 5450 0    50   Input ~ 0
14
Text GLabel 8550 5550 0    50   Input ~ 0
15
Text GLabel 8550 5650 0    50   Input ~ 0
16
Text GLabel 8550 5750 0    50   Input ~ 0
17
Text GLabel 8550 5850 0    50   Input ~ 0
18
Text GLabel 8550 5950 0    50   Input ~ 0
19
Text GLabel 8550 6050 0    50   Input ~ 0
20
Text GLabel 8550 6150 0    50   Input ~ 0
21
$Comp
L power:GND #PWR?
U 1 1 61127F78
P 8150 4150
F 0 "#PWR?" H 8150 3900 50  0001 C CNN
F 1 "GND" H 8155 3977 50  0000 C CNN
F 2 "" H 8150 4150 50  0001 C CNN
F 3 "" H 8150 4150 50  0001 C CNN
	1    8150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3950 8150 3950
Wire Wire Line
	8150 3950 8150 4150
$Comp
L Interface_Expansion:TCA9555DBR U?
U 1 1 6112FFF7
P 13700 5300
F 0 "U?" H 13700 5300 50  0000 C CNN
F 1 "TCA9555DBR" H 14000 6250 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 14750 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9555.pdf" H 13200 6200 50  0001 C CNN
	1    13700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6113F6CD
P 13400 4000
F 0 "C?" V 13148 4000 50  0000 C CNN
F 1 "C" V 13239 4000 50  0000 C CNN
F 2 "" H 13438 3850 50  0001 C CNN
F 3 "~" H 13400 4000 50  0001 C CNN
	1    13400 4000
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 611417FE
P 13700 3800
F 0 "#PWR?" H 13700 3650 50  0001 C CNN
F 1 "VCC" H 13715 3973 50  0000 C CNN
F 2 "" H 13700 3800 50  0001 C CNN
F 3 "" H 13700 3800 50  0001 C CNN
	1    13700 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 3800 13700 4000
Wire Wire Line
	13550 4000 13700 4000
Connection ~ 13700 4000
Wire Wire Line
	13700 4000 13700 4200
$Comp
L power:GND #PWR?
U 1 1 61143CD8
P 13100 4150
F 0 "#PWR?" H 13100 3900 50  0001 C CNN
F 1 "GND" H 13105 3977 50  0000 C CNN
F 2 "" H 13100 4150 50  0001 C CNN
F 3 "" H 13100 4150 50  0001 C CNN
	1    13100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 4000 13100 4000
Wire Wire Line
	13100 4000 13100 4150
$Comp
L power:VCC #PWR?
U 1 1 61146C22
P 12850 5750
F 0 "#PWR?" H 12850 5600 50  0001 C CNN
F 1 "VCC" H 12865 5923 50  0000 C CNN
F 2 "" H 12850 5750 50  0001 C CNN
F 3 "" H 12850 5750 50  0001 C CNN
	1    12850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 5750 12850 5900
Wire Wire Line
	12850 6100 13000 6100
Wire Wire Line
	13000 6000 12850 6000
Connection ~ 12850 6000
Wire Wire Line
	12850 6000 12850 6100
Wire Wire Line
	13000 5900 12850 5900
Connection ~ 12850 5900
Wire Wire Line
	12850 5900 12850 6000
Text GLabel 13000 4500 0    50   Input ~ 0
sda
Text GLabel 13000 4600 0    50   Input ~ 0
scl
NoConn ~ 13000 4700
$Comp
L power:GND #PWR?
U 1 1 61150665
P 13700 6400
F 0 "#PWR?" H 13700 6150 50  0001 C CNN
F 1 "GND" H 13705 6227 50  0000 C CNN
F 2 "" H 13700 6400 50  0001 C CNN
F 3 "" H 13700 6400 50  0001 C CNN
	1    13700 6400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J?
U 1 1 611524E0
P 15150 5350
F 0 "J?" H 15200 5350 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 15550 6200 50  0000 C CNN
F 2 "" H 15150 5350 50  0001 C CNN
F 3 "~" H 15150 5350 50  0001 C CNN
	1    15150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 4500 14900 4500
Wire Wire Line
	14900 4500 14900 4950
Wire Wire Line
	14900 4950 14950 4950
Wire Wire Line
	14400 4600 15550 4600
Wire Wire Line
	15550 4600 15550 4950
Wire Wire Line
	15550 4950 15450 4950
Wire Wire Line
	14400 4700 14850 4700
Wire Wire Line
	14850 4700 14850 5050
Wire Wire Line
	14850 5050 14950 5050
Wire Wire Line
	14400 4800 15600 4800
Wire Wire Line
	15600 4800 15600 5050
Wire Wire Line
	15600 5050 15450 5050
Wire Wire Line
	14400 4900 14800 4900
Wire Wire Line
	14800 4900 14800 5150
Wire Wire Line
	14800 5150 14950 5150
Wire Wire Line
	15450 5150 15650 5150
Wire Wire Line
	15650 5150 15650 4750
Wire Wire Line
	15650 4750 14750 4750
Wire Wire Line
	14750 4750 14750 5000
Wire Wire Line
	14750 5000 14400 5000
Wire Wire Line
	14950 5250 14750 5250
Wire Wire Line
	14750 5250 14750 5100
Wire Wire Line
	14750 5100 14400 5100
Wire Wire Line
	15450 5250 15700 5250
Wire Wire Line
	15700 5250 15700 4650
Wire Wire Line
	15700 4650 14650 4650
Wire Wire Line
	14650 4650 14650 5200
Wire Wire Line
	14650 5200 14400 5200
Wire Wire Line
	14400 5400 14750 5400
Wire Wire Line
	14750 5400 14750 5350
Wire Wire Line
	14750 5350 14950 5350
Wire Wire Line
	14400 5500 14900 5500
Wire Wire Line
	14900 5500 14900 5900
Wire Wire Line
	14900 5900 15550 5900
Wire Wire Line
	15550 5900 15550 5350
Wire Wire Line
	15550 5350 15450 5350
Wire Wire Line
	14400 5600 14850 5600
Wire Wire Line
	14850 5600 14850 5450
Wire Wire Line
	14850 5450 14950 5450
Wire Wire Line
	14400 5700 14850 5700
Wire Wire Line
	14850 5700 14850 5950
Wire Wire Line
	14850 5950 15600 5950
Wire Wire Line
	15600 5950 15600 5450
Wire Wire Line
	15600 5450 15450 5450
Wire Wire Line
	14400 5800 14650 5800
Wire Wire Line
	14650 5800 14650 5550
Wire Wire Line
	14650 5550 14950 5550
Wire Wire Line
	14400 5900 14800 5900
Wire Wire Line
	14800 5900 14800 6000
Wire Wire Line
	14800 6000 15650 6000
Wire Wire Line
	15650 6000 15650 5550
Wire Wire Line
	15650 5550 15450 5550
Wire Wire Line
	14400 6000 14700 6000
Wire Wire Line
	14700 6000 14700 5650
Wire Wire Line
	14700 5650 14950 5650
Wire Wire Line
	14400 6100 15800 6100
Wire Wire Line
	15800 6100 15800 5650
Wire Wire Line
	15800 5650 15450 5650
$Comp
L power:GND #PWR?
U 1 1 6117C3D2
P 14950 6250
F 0 "#PWR?" H 14950 6000 50  0001 C CNN
F 1 "GND" H 14955 6077 50  0000 C CNN
F 2 "" H 14950 6250 50  0001 C CNN
F 3 "" H 14950 6250 50  0001 C CNN
	1    14950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 5750 14950 5850
Wire Wire Line
	15450 5750 15450 5850
Wire Wire Line
	15450 5850 14950 5850
Connection ~ 14950 5850
Wire Wire Line
	14950 5850 14950 6250
$Comp
L Interface_Expansion:TCA9555DBR U?
U 1 1 6118933C
P 13700 8550
F 0 "U?" H 13700 8550 50  0000 C CNN
F 1 "TCA9555DBR" H 14000 9500 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 14750 7550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9555.pdf" H 13200 9450 50  0001 C CNN
	1    13700 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 611895AC
P 13400 7250
F 0 "C?" V 13148 7250 50  0000 C CNN
F 1 "C" V 13239 7250 50  0000 C CNN
F 2 "" H 13438 7100 50  0001 C CNN
F 3 "~" H 13400 7250 50  0001 C CNN
	1    13400 7250
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 611895B6
P 13700 7050
F 0 "#PWR?" H 13700 6900 50  0001 C CNN
F 1 "VCC" H 13715 7223 50  0000 C CNN
F 2 "" H 13700 7050 50  0001 C CNN
F 3 "" H 13700 7050 50  0001 C CNN
	1    13700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13700 7050 13700 7250
Wire Wire Line
	13550 7250 13700 7250
Connection ~ 13700 7250
Wire Wire Line
	13700 7250 13700 7450
$Comp
L power:GND #PWR?
U 1 1 611895C4
P 13100 7400
F 0 "#PWR?" H 13100 7150 50  0001 C CNN
F 1 "GND" H 13105 7227 50  0000 C CNN
F 2 "" H 13100 7400 50  0001 C CNN
F 3 "" H 13100 7400 50  0001 C CNN
	1    13100 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13250 7250 13100 7250
Wire Wire Line
	13100 7250 13100 7400
Text GLabel 13000 7750 0    50   Input ~ 0
sda
Text GLabel 13000 7850 0    50   Input ~ 0
scl
NoConn ~ 13000 7950
$Comp
L power:GND #PWR?
U 1 1 611895E5
P 13700 9650
F 0 "#PWR?" H 13700 9400 50  0001 C CNN
F 1 "GND" H 13705 9477 50  0000 C CNN
F 2 "" H 13700 9650 50  0001 C CNN
F 3 "" H 13700 9650 50  0001 C CNN
	1    13700 9650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J?
U 1 1 611895EF
P 15150 8600
F 0 "J?" H 15200 8600 50  0000 C CNN
F 1 "Conn_02x09_Odd_Even" H 15550 9450 50  0000 C CNN
F 2 "" H 15150 8600 50  0001 C CNN
F 3 "~" H 15150 8600 50  0001 C CNN
	1    15150 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 7750 14900 7750
Wire Wire Line
	14900 7750 14900 8200
Wire Wire Line
	14900 8200 14950 8200
Wire Wire Line
	14400 7850 15550 7850
Wire Wire Line
	15550 7850 15550 8200
Wire Wire Line
	15550 8200 15450 8200
Wire Wire Line
	14400 7950 14850 7950
Wire Wire Line
	14850 7950 14850 8300
Wire Wire Line
	14850 8300 14950 8300
Wire Wire Line
	14400 8050 15600 8050
Wire Wire Line
	15600 8050 15600 8300
Wire Wire Line
	15600 8300 15450 8300
Wire Wire Line
	14400 8150 14800 8150
Wire Wire Line
	14800 8150 14800 8400
Wire Wire Line
	14800 8400 14950 8400
Wire Wire Line
	15450 8400 15650 8400
Wire Wire Line
	15650 8400 15650 8000
Wire Wire Line
	15650 8000 14750 8000
Wire Wire Line
	14750 8000 14750 8250
Wire Wire Line
	14750 8250 14400 8250
Wire Wire Line
	14950 8500 14750 8500
Wire Wire Line
	14750 8500 14750 8350
Wire Wire Line
	14750 8350 14400 8350
Wire Wire Line
	15450 8500 15700 8500
Wire Wire Line
	15700 8500 15700 7900
Wire Wire Line
	15700 7900 14650 7900
Wire Wire Line
	14650 7900 14650 8450
Wire Wire Line
	14650 8450 14400 8450
Wire Wire Line
	14400 8650 14750 8650
Wire Wire Line
	14750 8650 14750 8600
Wire Wire Line
	14750 8600 14950 8600
Wire Wire Line
	14400 8750 14900 8750
Wire Wire Line
	14900 8750 14900 9150
Wire Wire Line
	14900 9150 15550 9150
Wire Wire Line
	15550 9150 15550 8600
Wire Wire Line
	15550 8600 15450 8600
Wire Wire Line
	14400 8850 14850 8850
Wire Wire Line
	14850 8850 14850 8700
Wire Wire Line
	14850 8700 14950 8700
Wire Wire Line
	14400 8950 14850 8950
Wire Wire Line
	14850 8950 14850 9200
Wire Wire Line
	14850 9200 15600 9200
Wire Wire Line
	15600 9200 15600 8700
Wire Wire Line
	15600 8700 15450 8700
Wire Wire Line
	14400 9050 14650 9050
Wire Wire Line
	14650 9050 14650 8800
Wire Wire Line
	14650 8800 14950 8800
Wire Wire Line
	14400 9150 14800 9150
Wire Wire Line
	14800 9150 14800 9250
Wire Wire Line
	14800 9250 15650 9250
Wire Wire Line
	15650 9250 15650 8800
Wire Wire Line
	15650 8800 15450 8800
Wire Wire Line
	14400 9250 14700 9250
Wire Wire Line
	14700 9250 14700 8900
Wire Wire Line
	14700 8900 14950 8900
Wire Wire Line
	14400 9350 15800 9350
Wire Wire Line
	15800 9350 15800 8900
Wire Wire Line
	15800 8900 15450 8900
$Comp
L power:GND #PWR?
U 1 1 61189633
P 14950 9500
F 0 "#PWR?" H 14950 9250 50  0001 C CNN
F 1 "GND" H 14955 9327 50  0000 C CNN
F 2 "" H 14950 9500 50  0001 C CNN
F 3 "" H 14950 9500 50  0001 C CNN
	1    14950 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 9000 14950 9100
Wire Wire Line
	15450 9000 15450 9100
Wire Wire Line
	15450 9100 14950 9100
Connection ~ 14950 9100
Wire Wire Line
	14950 9100 14950 9500
$Comp
L power:GND #PWR?
U 1 1 611BD17C
P 12850 9500
F 0 "#PWR?" H 12850 9250 50  0001 C CNN
F 1 "GND" H 12855 9327 50  0000 C CNN
F 2 "" H 12850 9500 50  0001 C CNN
F 3 "" H 12850 9500 50  0001 C CNN
	1    12850 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 9150 12850 9150
Wire Wire Line
	12850 9150 12850 9250
Wire Wire Line
	13000 9250 12850 9250
Connection ~ 12850 9250
Wire Wire Line
	12850 9250 12850 9350
Wire Wire Line
	13000 9350 12850 9350
Connection ~ 12850 9350
Wire Wire Line
	12850 9350 12850 9500
$Comp
L Connector:Screw_Terminal_01x08 J?
U 1 1 61088272
P 15600 2150
F 0 "J?" H 15680 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x08" H 15680 2051 50  0000 L CNN
F 2 "" H 15600 2150 50  0001 C CNN
F 3 "~" H 15600 2150 50  0001 C CNN
	1    15600 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J?
U 1 1 61089E77
P 15600 3700
F 0 "J?" H 15680 3692 50  0000 L CNN
F 1 "Screw_Terminal_01x08" H 15680 3601 50  0000 L CNN
F 2 "" H 15600 3700 50  0001 C CNN
F 3 "~" H 15600 3700 50  0001 C CNN
	1    15600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 610E9646
P 15250 1650
F 0 "#PWR?" H 15250 1500 50  0001 C CNN
F 1 "VCC" H 15265 1823 50  0000 C CNN
F 2 "" H 15250 1650 50  0001 C CNN
F 3 "" H 15250 1650 50  0001 C CNN
	1    15250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 610EA0BE
P 15250 3200
F 0 "#PWR?" H 15250 3050 50  0001 C CNN
F 1 "VCC" H 15265 3373 50  0000 C CNN
F 2 "" H 15250 3200 50  0001 C CNN
F 3 "" H 15250 3200 50  0001 C CNN
	1    15250 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610FBA41
P 15250 4250
F 0 "#PWR?" H 15250 4000 50  0001 C CNN
F 1 "GND" H 15255 4077 50  0000 C CNN
F 2 "" H 15250 4250 50  0001 C CNN
F 3 "" H 15250 4250 50  0001 C CNN
	1    15250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 610FC224
P 15250 2750
F 0 "#PWR?" H 15250 2500 50  0001 C CNN
F 1 "GND" H 15255 2577 50  0000 C CNN
F 2 "" H 15250 2750 50  0001 C CNN
F 3 "" H 15250 2750 50  0001 C CNN
	1    15250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15250 1650 15250 1850
Wire Wire Line
	15250 2150 15400 2150
Wire Wire Line
	15400 2050 15250 2050
Connection ~ 15250 2050
Wire Wire Line
	15250 2050 15250 2150
Wire Wire Line
	15400 1950 15250 1950
Connection ~ 15250 1950
Wire Wire Line
	15250 1950 15250 2050
Wire Wire Line
	15400 1850 15250 1850
Connection ~ 15250 1850
Wire Wire Line
	15250 1850 15250 1950
Wire Wire Line
	15250 2700 15250 2550
Wire Wire Line
	15250 2250 15400 2250
Wire Wire Line
	15400 2350 15250 2350
Connection ~ 15250 2350
Wire Wire Line
	15250 2350 15250 2250
Wire Wire Line
	15400 2450 15250 2450
Connection ~ 15250 2450
Wire Wire Line
	15250 2450 15250 2350
Wire Wire Line
	15400 2550 15250 2550
Connection ~ 15250 2550
Wire Wire Line
	15250 2550 15250 2450
Wire Wire Line
	15250 3200 15250 3400
Wire Wire Line
	15250 3700 15400 3700
Wire Wire Line
	15400 3600 15250 3600
Connection ~ 15250 3600
Wire Wire Line
	15250 3600 15250 3700
Wire Wire Line
	15400 3500 15250 3500
Connection ~ 15250 3500
Wire Wire Line
	15250 3500 15250 3600
Wire Wire Line
	15400 3400 15250 3400
Connection ~ 15250 3400
Wire Wire Line
	15250 3400 15250 3500
Wire Wire Line
	15250 4250 15250 4100
Wire Wire Line
	15250 3800 15400 3800
Wire Wire Line
	15400 3900 15250 3900
Connection ~ 15250 3900
Wire Wire Line
	15250 3900 15250 3800
Wire Wire Line
	15400 4000 15250 4000
Connection ~ 15250 4000
Wire Wire Line
	15250 4000 15250 3900
Wire Wire Line
	15400 4100 15250 4100
Connection ~ 15250 4100
Wire Wire Line
	15250 4100 15250 4000
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 611BA224
P 1250 3750
F 0 "J?" H 1168 3425 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1168 3516 50  0000 C CNN
F 2 "" H 1250 3750 50  0001 C CNN
F 3 "~" H 1250 3750 50  0001 C CNN
	1    1250 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x08 J?
U 1 1 611BBF0F
P 1250 4650
F 0 "J?" H 1168 4025 50  0000 C CNN
F 1 "Screw_Terminal_01x08" H 1168 4116 50  0000 C CNN
F 2 "" H 1250 4650 50  0001 C CNN
F 3 "~" H 1250 4650 50  0001 C CNN
	1    1250 4650
	-1   0    0    1   
$EndComp
Text GLabel 1450 4250 2    50   Input ~ 0
A0
Text GLabel 1450 4350 2    50   Input ~ 0
A1
Text GLabel 1450 4450 2    50   Input ~ 0
A2
Text GLabel 1450 4550 2    50   Input ~ 0
A3
Text GLabel 1450 4650 2    50   Input ~ 0
A4
Text GLabel 1450 4750 2    50   Input ~ 0
A5
Text GLabel 1450 4850 2    50   Input ~ 0
A6
Text GLabel 1450 4950 2    50   Input ~ 0
A7
$Comp
L power:VCC #PWR?
U 1 1 611C0F36
P 1550 3400
F 0 "#PWR?" H 1550 3250 50  0001 C CNN
F 1 "VCC" H 1565 3573 50  0000 C CNN
F 2 "" H 1550 3400 50  0001 C CNN
F 3 "" H 1550 3400 50  0001 C CNN
	1    1550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 611C1B25
P 1550 3900
F 0 "#PWR?" H 1550 3650 50  0001 C CNN
F 1 "GND" H 1555 3727 50  0000 C CNN
F 2 "" H 1550 3900 50  0001 C CNN
F 3 "" H 1550 3900 50  0001 C CNN
	1    1550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3650 1550 3650
Wire Wire Line
	1550 3650 1550 3400
Wire Wire Line
	1450 3750 1550 3750
Wire Wire Line
	1550 3750 1550 3900
NoConn ~ 3000 3550
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 6125FE91
P 9900 3650
F 0 "J?" H 9980 3642 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9980 3551 50  0000 L CNN
F 2 "" H 9900 3650 50  0001 C CNN
F 3 "~" H 9900 3650 50  0001 C CNN
	1    9900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x11 J?
U 1 1 61260C30
P 9900 4750
F 0 "J?" H 9980 4792 50  0000 L CNN
F 1 "Screw_Terminal_01x11" H 9980 4701 50  0000 L CNN
F 2 "" H 9900 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	1    0    0    -1  
$EndComp
Text GLabel 9700 4250 0    50   Input ~ 0
2
Text GLabel 9700 4350 0    50   Input ~ 0
3
Text GLabel 9700 4450 0    50   Input ~ 0
4
Text GLabel 9700 4550 0    50   Input ~ 0
5
Text GLabel 9700 4650 0    50   Input ~ 0
6
Text GLabel 9700 4750 0    50   Input ~ 0
7
Text GLabel 9700 4850 0    50   Input ~ 0
8
Text GLabel 9700 4950 0    50   Input ~ 0
9
Text GLabel 9700 5050 0    50   Input ~ 0
10
Text GLabel 9700 5150 0    50   Input ~ 0
11
Text GLabel 9700 5250 0    50   Input ~ 0
12
$Comp
L power:VCC #PWR?
U 1 1 61280808
P 9600 3450
F 0 "#PWR?" H 9600 3300 50  0001 C CNN
F 1 "VCC" H 9615 3623 50  0000 C CNN
F 2 "" H 9600 3450 50  0001 C CNN
F 3 "" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61280C6B
P 9600 3900
F 0 "#PWR?" H 9600 3650 50  0001 C CNN
F 1 "GND" H 9605 3727 50  0000 C CNN
F 2 "" H 9600 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0001 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3900 9600 3750
Wire Wire Line
	9600 3750 9700 3750
Wire Wire Line
	9700 3650 9600 3650
Wire Wire Line
	9600 3650 9600 3450
$Comp
L Connector:Screw_Terminal_01x12 J?
U 1 1 612BBE0C
P 9900 6250
F 0 "J?" H 9980 6242 50  0000 L CNN
F 1 "Screw_Terminal_01x12" H 9980 6151 50  0000 L CNN
F 2 "" H 9900 6250 50  0001 C CNN
F 3 "~" H 9900 6250 50  0001 C CNN
	1    9900 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612BD580
P 9550 7000
F 0 "#PWR?" H 9550 6750 50  0001 C CNN
F 1 "GND" H 9555 6827 50  0000 C CNN
F 2 "" H 9550 7000 50  0001 C CNN
F 3 "" H 9550 7000 50  0001 C CNN
	1    9550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 7000 9550 6850
Wire Wire Line
	9550 6750 9700 6750
Wire Wire Line
	9700 6850 9550 6850
Connection ~ 9550 6850
Wire Wire Line
	9550 6850 9550 6750
Text GLabel 9700 6650 0    50   Input ~ 0
53
Text GLabel 9700 6550 0    50   Input ~ 0
52
Text GLabel 9700 6450 0    50   Input ~ 0
51
Text GLabel 9700 6350 0    50   Input ~ 0
50
Text GLabel 9700 6250 0    50   Input ~ 0
49
Text GLabel 9700 6150 0    50   Input ~ 0
48
Text GLabel 9700 6050 0    50   Input ~ 0
47
Text GLabel 9700 5950 0    50   Input ~ 0
46
Text GLabel 9700 5850 0    50   Input ~ 0
45
Text GLabel 9700 5750 0    50   Input ~ 0
44
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 612E70E1
P 12450 1300
F 0 "J?" H 12530 1292 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 12530 1201 50  0000 L CNN
F 2 "" H 12450 1300 50  0001 C CNN
F 3 "~" H 12450 1300 50  0001 C CNN
	1    12450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 612E975F
P 12100 1050
F 0 "#PWR?" H 12100 900 50  0001 C CNN
F 1 "+12V" H 12115 1223 50  0000 C CNN
F 2 "" H 12100 1050 50  0001 C CNN
F 3 "" H 12100 1050 50  0001 C CNN
	1    12100 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 612E9E12
P 12100 1700
F 0 "#PWR?" H 12100 1450 50  0001 C CNN
F 1 "GND" H 12105 1527 50  0000 C CNN
F 2 "" H 12100 1700 50  0001 C CNN
F 3 "" H 12100 1700 50  0001 C CNN
	1    12100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 1700 12100 1500
Wire Wire Line
	12100 1400 12250 1400
Wire Wire Line
	12250 1500 12100 1500
Connection ~ 12100 1500
Wire Wire Line
	12100 1500 12100 1400
Wire Wire Line
	12250 1200 12100 1200
Wire Wire Line
	12100 1200 12100 1050
Wire Wire Line
	12250 1300 12100 1300
Wire Wire Line
	12100 1300 12100 1200
Connection ~ 12100 1200
$Comp
L Transistor_BJT:TIP120 Q?
U 1 1 61336F93
P 8650 9100
F 0 "Q?" H 8857 9146 50  0000 L CNN
F 1 "TIP120" H 8857 9055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8850 9025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/TIP120-D.PDF" H 8650 9100 50  0001 L CNN
	1    8650 9100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
