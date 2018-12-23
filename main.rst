                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _interrupt_uart
                                     12 	.globl _interrupt_timer
                                     13 	.globl _main
                                     14 	.globl _uart_scan
                                     15 	.globl _config_uart
                                     16 	.globl _motor_scan
                                     17 	.globl _key_scan
                                     18 	.globl _key_driver
                                     19 	.globl _lcd_show_str
                                     20 	.globl _init_lcd1602
                                     21 	.globl _time0_init
                                     22 	.globl _seg_index
                                     23 	.globl _seg_init
                                     24 	.globl _TF2
                                     25 	.globl _EXF2
                                     26 	.globl _RCLK
                                     27 	.globl _TCLK
                                     28 	.globl _EXEN2
                                     29 	.globl _TR2
                                     30 	.globl _C_T2
                                     31 	.globl _CP_RL2
                                     32 	.globl _T2CON_7
                                     33 	.globl _T2CON_6
                                     34 	.globl _T2CON_5
                                     35 	.globl _T2CON_4
                                     36 	.globl _T2CON_3
                                     37 	.globl _T2CON_2
                                     38 	.globl _T2CON_1
                                     39 	.globl _T2CON_0
                                     40 	.globl _PT2
                                     41 	.globl _ET2
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _P
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2CON
                                    122 	.globl _B
                                    123 	.globl _ACC
                                    124 	.globl _PSW
                                    125 	.globl _IP
                                    126 	.globl _P3
                                    127 	.globl _IE
                                    128 	.globl _P2
                                    129 	.globl _SBUF
                                    130 	.globl _SCON
                                    131 	.globl _P1
                                    132 	.globl _TH1
                                    133 	.globl _TH0
                                    134 	.globl _TL1
                                    135 	.globl _TL0
                                    136 	.globl _TMOD
                                    137 	.globl _TCON
                                    138 	.globl _PCON
                                    139 	.globl _DPH
                                    140 	.globl _DPL
                                    141 	.globl _SP
                                    142 	.globl _P0
                                    143 	.globl _flag1s
                                    144 	.globl _delay_ms
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                           0000C8   171 _T2CON	=	0x00c8
                           0000CA   172 _RCAP2L	=	0x00ca
                           0000CB   173 _RCAP2H	=	0x00cb
                           0000CC   174 _TL2	=	0x00cc
                           0000CD   175 _TH2	=	0x00cd
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000098   205 _RI	=	0x0098
                           000099   206 _TI	=	0x0099
                           00009A   207 _RB8	=	0x009a
                           00009B   208 _TB8	=	0x009b
                           00009C   209 _REN	=	0x009c
                           00009D   210 _SM2	=	0x009d
                           00009E   211 _SM1	=	0x009e
                           00009F   212 _SM0	=	0x009f
                           0000A0   213 _P2_0	=	0x00a0
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 _P2_4	=	0x00a4
                           0000A5   218 _P2_5	=	0x00a5
                           0000A6   219 _P2_6	=	0x00a6
                           0000A7   220 _P2_7	=	0x00a7
                           0000A8   221 _EX0	=	0x00a8
                           0000A9   222 _ET0	=	0x00a9
                           0000AA   223 _EX1	=	0x00aa
                           0000AB   224 _ET1	=	0x00ab
                           0000AC   225 _ES	=	0x00ac
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000D0   248 _P	=	0x00d0
                           0000D1   249 _F1	=	0x00d1
                           0000D2   250 _OV	=	0x00d2
                           0000D3   251 _RS0	=	0x00d3
                           0000D4   252 _RS1	=	0x00d4
                           0000D5   253 _F0	=	0x00d5
                           0000D6   254 _AC	=	0x00d6
                           0000D7   255 _CY	=	0x00d7
                           0000AD   256 _ET2	=	0x00ad
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable register banks
                                    276 ;--------------------------------------------------------
                                    277 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        278 	.ds 8
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable bit register bank
                                    281 ;--------------------------------------------------------
                                    282 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        283 bits:
      000020                        284 	.ds 1
                           008000   285 	b0 = bits[0]
                           008100   286 	b1 = bits[1]
                           008200   287 	b2 = bits[2]
                           008300   288 	b3 = bits[3]
                           008400   289 	b4 = bits[4]
                           008500   290 	b5 = bits[5]
                           008600   291 	b6 = bits[6]
                           008700   292 	b7 = bits[7]
                                    293 ;--------------------------------------------------------
                                    294 ; internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area DSEG    (DATA)
      000008                        297 _flag1s::
      000008                        298 	.ds 1
      000009                        299 _interrupt_timer_cnt_65536_23:
      000009                        300 	.ds 2
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable items in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	OSEG    (OVR,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      000073                        309 __start__stack:
      000073                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area IABS    (ABS,DATA)
                                    320 	.area IABS    (ABS,DATA)
                                    321 ;--------------------------------------------------------
                                    322 ; bit data
                                    323 ;--------------------------------------------------------
                                    324 	.area BSEG    (BIT)
                                    325 ;--------------------------------------------------------
                                    326 ; paged external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area PSEG    (PAG,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XSEG    (XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; absolute external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XABS    (ABS,XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; external initialized ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XISEG   (XDATA)
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      000000                        355 __interrupt_vect:
      000000 02 00 29         [24]  356 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  357 	reti
      000004                        358 	.ds	7
      00000B 02 01 D0         [24]  359 	ljmp	_interrupt_timer
      00000E                        360 	.ds	5
      000013 32               [24]  361 	reti
      000014                        362 	.ds	7
      00001B 32               [24]  363 	reti
      00001C                        364 	.ds	7
      000023 02 02 3A         [24]  365 	ljmp	_interrupt_uart
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.globl __sdcc_gsinit_startup
                                    374 	.globl __sdcc_program_startup
                                    375 	.globl __start__stack
                                    376 	.globl __mcs51_genXINIT
                                    377 	.globl __mcs51_genXRAMCLEAR
                                    378 	.globl __mcs51_genRAMCLEAR
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'interrupt_timer'
                                    381 ;------------------------------------------------------------
                                    382 ;cnt                       Allocated with name '_interrupt_timer_cnt_65536_23'
                                    383 ;------------------------------------------------------------
                                    384 ;	main.c:51: static int cnt = 0;
      000082 E4               [12]  385 	clr	a
      000083 F5 09            [12]  386 	mov	_interrupt_timer_cnt_65536_23,a
      000085 F5 0A            [12]  387 	mov	(_interrupt_timer_cnt_65536_23 + 1),a
                                    388 ;	main.c:9: char flag1s = 0;
      000087 75 08 00         [24]  389 	mov	_flag1s,#0x00
                                    390 	.area GSFINAL (CODE)
      000194 02 00 26         [24]  391 	ljmp	__sdcc_program_startup
                                    392 ;--------------------------------------------------------
                                    393 ; Home
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area HOME    (CODE)
      000026                        397 __sdcc_program_startup:
      000026 02 01 97         [24]  398 	ljmp	_main
                                    399 ;	return from main will return to caller
                                    400 ;--------------------------------------------------------
                                    401 ; code
                                    402 ;--------------------------------------------------------
                                    403 	.area CSEG    (CODE)
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'main'
                                    406 ;------------------------------------------------------------
                                    407 ;cnt                       Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	main.c:15: void main(void)
                                    410 ;	-----------------------------------------
                                    411 ;	 function main
                                    412 ;	-----------------------------------------
      000197                        413 _main:
                           000007   414 	ar7 = 0x07
                           000006   415 	ar6 = 0x06
                           000005   416 	ar5 = 0x05
                           000004   417 	ar4 = 0x04
                           000003   418 	ar3 = 0x03
                           000002   419 	ar2 = 0x02
                           000001   420 	ar1 = 0x01
                           000000   421 	ar0 = 0x00
                                    422 ;	main.c:19: init_lcd1602();
      000197 12 06 5A         [24]  423 	lcall	_init_lcd1602
                                    424 ;	main.c:20: seg_init();
      00019A 12 04 2F         [24]  425 	lcall	_seg_init
                                    426 ;	main.c:21: time0_init(1);
      00019D 90 00 01         [24]  427 	mov	dptr,#0x0001
      0001A0 12 02 E6         [24]  428 	lcall	_time0_init
                                    429 ;	main.c:22: config_uart(9600);
      0001A3 90 25 80         [24]  430 	mov	dptr,#0x2580
      0001A6 12 08 BE         [24]  431 	lcall	_config_uart
                                    432 ;	main.c:23: EA = 1;
                                    433 ;	assignBit
      0001A9 D2 AF            [12]  434 	setb	_EA
                                    435 ;	main.c:26: delay_ms(100);
      0001AB 90 00 64         [24]  436 	mov	dptr,#0x0064
      0001AE 12 02 79         [24]  437 	lcall	_delay_ms
                                    438 ;	main.c:27: lcd_show_str(0, 1, "hello world!");
      0001B1 75 17 39         [24]  439 	mov	_lcd_show_str_PARM_3,#___str_0
      0001B4 75 18 0C         [24]  440 	mov	(_lcd_show_str_PARM_3 + 1),#(___str_0 >> 8)
      0001B7 75 19 80         [24]  441 	mov	(_lcd_show_str_PARM_3 + 2),#0x80
      0001BA 75 16 01         [24]  442 	mov	_lcd_show_str_PARM_2,#0x01
      0001BD 75 82 00         [24]  443 	mov	dpl,#0x00
      0001C0 12 06 29         [24]  444 	lcall	_lcd_show_str
                                    445 ;	main.c:29: while (1)
      0001C3                        446 00104$:
                                    447 ;	main.c:31: key_driver();
      0001C3 12 07 04         [24]  448 	lcall	_key_driver
                                    449 ;	main.c:32: if (flag1s == 1)
      0001C6 74 01            [12]  450 	mov	a,#0x01
      0001C8 B5 08 F8         [24]  451 	cjne	a,_flag1s,00104$
                                    452 ;	main.c:34: flag1s = 0;
      0001CB 75 08 00         [24]  453 	mov	_flag1s,#0x00
                                    454 ;	main.c:47: }
      0001CE 80 F3            [24]  455 	sjmp	00104$
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'interrupt_timer'
                                    458 ;------------------------------------------------------------
                                    459 ;cnt                       Allocated with name '_interrupt_timer_cnt_65536_23'
                                    460 ;------------------------------------------------------------
                                    461 ;	main.c:49: void interrupt_timer() __interrupt 1
                                    462 ;	-----------------------------------------
                                    463 ;	 function interrupt_timer
                                    464 ;	-----------------------------------------
      0001D0                        465 _interrupt_timer:
      0001D0 C0 20            [24]  466 	push	bits
      0001D2 C0 E0            [24]  467 	push	acc
      0001D4 C0 F0            [24]  468 	push	b
      0001D6 C0 82            [24]  469 	push	dpl
      0001D8 C0 83            [24]  470 	push	dph
      0001DA C0 07            [24]  471 	push	(0+7)
      0001DC C0 06            [24]  472 	push	(0+6)
      0001DE C0 05            [24]  473 	push	(0+5)
      0001E0 C0 04            [24]  474 	push	(0+4)
      0001E2 C0 03            [24]  475 	push	(0+3)
      0001E4 C0 02            [24]  476 	push	(0+2)
      0001E6 C0 01            [24]  477 	push	(0+1)
      0001E8 C0 00            [24]  478 	push	(0+0)
      0001EA C0 D0            [24]  479 	push	psw
      0001EC 75 D0 00         [24]  480 	mov	psw,#0x00
                                    481 ;	main.c:53: TH0 = T0RH;
      0001EF 85 0B 8C         [24]  482 	mov	_TH0,_T0RH
                                    483 ;	main.c:54: TL0 = T0RL;
      0001F2 85 0C 8A         [24]  484 	mov	_TL0,_T0RL
                                    485 ;	main.c:56: key_scan();
      0001F5 12 07 75         [24]  486 	lcall	_key_scan
                                    487 ;	main.c:57: seg_index();
      0001F8 12 05 6B         [24]  488 	lcall	_seg_index
                                    489 ;	main.c:58: motor_scan();
      0001FB 12 08 85         [24]  490 	lcall	_motor_scan
                                    491 ;	main.c:60: if (cnt++ >= 1000)
      0001FE AE 09            [24]  492 	mov	r6,_interrupt_timer_cnt_65536_23
      000200 AF 0A            [24]  493 	mov	r7,(_interrupt_timer_cnt_65536_23 + 1)
      000202 05 09            [12]  494 	inc	_interrupt_timer_cnt_65536_23
      000204 E4               [12]  495 	clr	a
      000205 B5 09 02         [24]  496 	cjne	a,_interrupt_timer_cnt_65536_23,00109$
      000208 05 0A            [12]  497 	inc	(_interrupt_timer_cnt_65536_23 + 1)
      00020A                        498 00109$:
      00020A C3               [12]  499 	clr	c
      00020B EE               [12]  500 	mov	a,r6
      00020C 94 E8            [12]  501 	subb	a,#0xe8
      00020E EF               [12]  502 	mov	a,r7
      00020F 64 80            [12]  503 	xrl	a,#0x80
      000211 94 83            [12]  504 	subb	a,#0x83
      000213 40 08            [24]  505 	jc	00103$
                                    506 ;	main.c:62: cnt = 0;
      000215 E4               [12]  507 	clr	a
      000216 F5 09            [12]  508 	mov	_interrupt_timer_cnt_65536_23,a
      000218 F5 0A            [12]  509 	mov	(_interrupt_timer_cnt_65536_23 + 1),a
                                    510 ;	main.c:63: flag1s = 1;
      00021A 75 08 01         [24]  511 	mov	_flag1s,#0x01
      00021D                        512 00103$:
                                    513 ;	main.c:66: }
      00021D D0 D0            [24]  514 	pop	psw
      00021F D0 00            [24]  515 	pop	(0+0)
      000221 D0 01            [24]  516 	pop	(0+1)
      000223 D0 02            [24]  517 	pop	(0+2)
      000225 D0 03            [24]  518 	pop	(0+3)
      000227 D0 04            [24]  519 	pop	(0+4)
      000229 D0 05            [24]  520 	pop	(0+5)
      00022B D0 06            [24]  521 	pop	(0+6)
      00022D D0 07            [24]  522 	pop	(0+7)
      00022F D0 83            [24]  523 	pop	dph
      000231 D0 82            [24]  524 	pop	dpl
      000233 D0 F0            [24]  525 	pop	b
      000235 D0 E0            [24]  526 	pop	acc
      000237 D0 20            [24]  527 	pop	bits
      000239 32               [24]  528 	reti
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'interrupt_uart'
                                    531 ;------------------------------------------------------------
                                    532 ;	main.c:68: void interrupt_uart() __interrupt 4
                                    533 ;	-----------------------------------------
                                    534 ;	 function interrupt_uart
                                    535 ;	-----------------------------------------
      00023A                        536 _interrupt_uart:
      00023A C0 20            [24]  537 	push	bits
      00023C C0 E0            [24]  538 	push	acc
      00023E C0 F0            [24]  539 	push	b
      000240 C0 82            [24]  540 	push	dpl
      000242 C0 83            [24]  541 	push	dph
      000244 C0 07            [24]  542 	push	(0+7)
      000246 C0 06            [24]  543 	push	(0+6)
      000248 C0 05            [24]  544 	push	(0+5)
      00024A C0 04            [24]  545 	push	(0+4)
      00024C C0 03            [24]  546 	push	(0+3)
      00024E C0 02            [24]  547 	push	(0+2)
      000250 C0 01            [24]  548 	push	(0+1)
      000252 C0 00            [24]  549 	push	(0+0)
      000254 C0 D0            [24]  550 	push	psw
      000256 75 D0 00         [24]  551 	mov	psw,#0x00
                                    552 ;	main.c:70: uart_scan();
      000259 12 09 19         [24]  553 	lcall	_uart_scan
                                    554 ;	main.c:71: }
      00025C D0 D0            [24]  555 	pop	psw
      00025E D0 00            [24]  556 	pop	(0+0)
      000260 D0 01            [24]  557 	pop	(0+1)
      000262 D0 02            [24]  558 	pop	(0+2)
      000264 D0 03            [24]  559 	pop	(0+3)
      000266 D0 04            [24]  560 	pop	(0+4)
      000268 D0 05            [24]  561 	pop	(0+5)
      00026A D0 06            [24]  562 	pop	(0+6)
      00026C D0 07            [24]  563 	pop	(0+7)
      00026E D0 83            [24]  564 	pop	dph
      000270 D0 82            [24]  565 	pop	dpl
      000272 D0 F0            [24]  566 	pop	b
      000274 D0 E0            [24]  567 	pop	acc
      000276 D0 20            [24]  568 	pop	bits
      000278 32               [24]  569 	reti
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'delay_ms'
                                    572 ;------------------------------------------------------------
                                    573 ;xms                       Allocated to registers r6 r7 
                                    574 ;i                         Allocated to registers r4 r5 
                                    575 ;j                         Allocated to registers r2 r3 
                                    576 ;------------------------------------------------------------
                                    577 ;	main.c:76: void delay_ms(int xms)
                                    578 ;	-----------------------------------------
                                    579 ;	 function delay_ms
                                    580 ;	-----------------------------------------
      000279                        581 _delay_ms:
      000279 AE 82            [24]  582 	mov	r6,dpl
      00027B AF 83            [24]  583 	mov	r7,dph
                                    584 ;	main.c:80: for (i = 0; i < xms; i++)
      00027D 7C 00            [12]  585 	mov	r4,#0x00
      00027F 7D 00            [12]  586 	mov	r5,#0x00
      000281                        587 00107$:
      000281 C3               [12]  588 	clr	c
      000282 EC               [12]  589 	mov	a,r4
      000283 9E               [12]  590 	subb	a,r6
      000284 ED               [12]  591 	mov	a,r5
      000285 64 80            [12]  592 	xrl	a,#0x80
      000287 8F F0            [24]  593 	mov	b,r7
      000289 63 F0 80         [24]  594 	xrl	b,#0x80
      00028C 95 F0            [12]  595 	subb	a,b
      00028E 50 1B            [24]  596 	jnc	00109$
                                    597 ;	main.c:82: for (j = 0; j < 110; j++);
      000290 7A 6E            [12]  598 	mov	r2,#0x6e
      000292 7B 00            [12]  599 	mov	r3,#0x00
      000294                        600 00105$:
      000294 EA               [12]  601 	mov	a,r2
      000295 24 FF            [12]  602 	add	a,#0xff
      000297 F8               [12]  603 	mov	r0,a
      000298 EB               [12]  604 	mov	a,r3
      000299 34 FF            [12]  605 	addc	a,#0xff
      00029B F9               [12]  606 	mov	r1,a
      00029C 88 02            [24]  607 	mov	ar2,r0
      00029E 89 03            [24]  608 	mov	ar3,r1
      0002A0 E8               [12]  609 	mov	a,r0
      0002A1 49               [12]  610 	orl	a,r1
      0002A2 70 F0            [24]  611 	jnz	00105$
                                    612 ;	main.c:80: for (i = 0; i < xms; i++)
      0002A4 0C               [12]  613 	inc	r4
      0002A5 BC 00 D9         [24]  614 	cjne	r4,#0x00,00107$
      0002A8 0D               [12]  615 	inc	r5
      0002A9 80 D6            [24]  616 	sjmp	00107$
      0002AB                        617 00109$:
                                    618 ;	main.c:84: }
      0002AB 22               [24]  619 	ret
                                    620 	.area CSEG    (CODE)
                                    621 	.area CONST   (CODE)
      000C39                        622 ___str_0:
      000C39 68 65 6C 6C 6F 20 77   623 	.ascii "hello world!"
             6F 72 6C 64 21
      000C45 00                     624 	.db 0x00
                                    625 	.area XINIT   (CODE)
                                    626 	.area CABS    (ABS,CODE)
