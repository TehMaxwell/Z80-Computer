EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Zilog
LIBS:modular_z80-cache
EELAYER 25 0
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
L Z80CPU U2
U 1 1 59FD0D4C
P 6200 3075
F 0 "U2" H 5650 4475 50  0000 L CNN
F 1 "Z80CPU" H 6450 4475 50  0000 L CNN
F 2 "" H 6200 3475 50  0000 C CNN
F 3 "" H 6200 3475 50  0000 C CNN
	1    6200 3075
	1    0    0    -1  
$EndComp
$Comp
L MC7805ABD2TG U1
U 1 1 59FE8409
P 1825 1000
F 0 "U1" H 1825 1110 60  0000 C CNN
F 1 "MC7805ABD2TG" H 1815 1200 60  0000 C CNN
F 2 "kicad-open-modules-master:D2PAK" H 1825 1000 60  0001 C CNN
F 3 "" H 1825 1000 60  0001 C CNN
	1    1825 1000
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 59FE853D
P 1075 1350
F 0 "C1" H 1100 1450 50  0000 L CNN
F 1 "0.33uF" H 1100 1250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 1113 1200 50  0001 C CNN
F 3 "" H 1075 1350 50  0000 C CNN
	1    1075 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2595 1200 2595 1000
Wire Wire Line
	2475 1000 2745 1000
Wire Wire Line
	895  1000 1175 1000
$Comp
L VCC #PWR1
U 1 1 59FE9251
P 895 950
F 0 "#PWR1" H 895 800 50  0001 C CNN
F 1 "VCC" H 895 1100 50  0000 C CNN
F 2 "" H 895 950 50  0000 C CNN
F 3 "" H 895 950 50  0000 C CNN
	1    895  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	895  950  895  1000
Wire Wire Line
	1075 1200 1075 1000
Connection ~ 1075 1000
Wire Wire Line
	1075 1500 1075 1560
Wire Wire Line
	2595 1560 2595 1500
$Comp
L GND #PWR2
U 1 1 59FE9C01
P 910 1560
F 0 "#PWR2" H 910 1310 50  0001 C CNN
F 1 "GND" H 910 1410 50  0000 C CNN
F 2 "" H 910 1560 50  0000 C CNN
F 3 "" H 910 1560 50  0000 C CNN
	1    910  1560
	1    0    0    -1  
$EndComp
Wire Wire Line
	910  1560 2595 1560
Connection ~ 1075 1560
Wire Wire Line
	1825 1480 1825 1560
Connection ~ 1825 1560
Connection ~ 2595 1000
Text GLabel 2745 1000 2    60   Input ~ 0
5V
Text Notes 850  640  0    60   ~ 0
System 5V Regulator
$Comp
L CP C2
U 1 1 59FE85B9
P 2595 1350
F 0 "C2" H 2620 1450 50  0000 L CNN
F 1 "1uF" H 2620 1250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 2633 1200 50  0001 C CNN
F 3 "" H 2595 1350 50  0000 C CNN
	1    2595 1350
	1    0    0    -1  
$EndComp
$Comp
L 5H14ET-4.000 O1
U 1 1 59FEF1EB
P 1675 2275
F 0 "O1" H 1675 2375 60  0000 C CNN
F 1 "5H14ET-4.000" H 1675 2455 60  0000 C CNN
F 2 "" H 1675 2125 60  0001 C CNN
F 3 "" H 1675 2125 60  0001 C CNN
	1    1675 2275
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 59FFA1D2
P 920 2275
F 0 "#PWR?" H 920 2125 50  0001 C CNN
F 1 "VCC" H 920 2425 50  0000 C CNN
F 2 "" H 920 2275 50  0000 C CNN
F 3 "" H 920 2275 50  0000 C CNN
	1    920  2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	920  2275 1115 2275
$Comp
L GND #PWR?
U 1 1 59FFA687
P 1675 2790
F 0 "#PWR?" H 1675 2540 50  0001 C CNN
F 1 "GND" H 1675 2640 50  0000 C CNN
F 2 "" H 1675 2790 50  0000 C CNN
F 3 "" H 1675 2790 50  0000 C CNN
	1    1675 2790
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 2715 1675 2790
Text GLabel 2410 2275 2    60   Input ~ 0
CLK
Wire Wire Line
	2235 2275 2410 2275
Text Notes 1930 1955 2    60   ~ 0
System Clock Generator
$EndSCHEMATC
