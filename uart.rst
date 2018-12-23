                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart_send_PARM_2
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _config_uart
                                    132 	.globl _uart_send
                                    133 	.globl _uart_scan
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 _B	=	0x00f0
                           0000C8   160 _T2CON	=	0x00c8
                           0000CA   161 _RCAP2L	=	0x00ca
                           0000CB   162 _RCAP2H	=	0x00cb
                           0000CC   163 _TL2	=	0x00cc
                           0000CD   164 _TH2	=	0x00cd
                                    165 ;--------------------------------------------------------
                                    166 ; special function bits
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0_0	=	0x0080
                           000081   171 _P0_1	=	0x0081
                           000082   172 _P0_2	=	0x0082
                           000083   173 _P0_3	=	0x0083
                           000084   174 _P0_4	=	0x0084
                           000085   175 _P0_5	=	0x0085
                           000086   176 _P0_6	=	0x0086
                           000087   177 _P0_7	=	0x0087
                           000088   178 _IT0	=	0x0088
                           000089   179 _IE0	=	0x0089
                           00008A   180 _IT1	=	0x008a
                           00008B   181 _IE1	=	0x008b
                           00008C   182 _TR0	=	0x008c
                           00008D   183 _TF0	=	0x008d
                           00008E   184 _TR1	=	0x008e
                           00008F   185 _TF1	=	0x008f
                           000090   186 _P1_0	=	0x0090
                           000091   187 _P1_1	=	0x0091
                           000092   188 _P1_2	=	0x0092
                           000093   189 _P1_3	=	0x0093
                           000094   190 _P1_4	=	0x0094
                           000095   191 _P1_5	=	0x0095
                           000096   192 _P1_6	=	0x0096
                           000097   193 _P1_7	=	0x0097
                           000098   194 _RI	=	0x0098
                           000099   195 _TI	=	0x0099
                           00009A   196 _RB8	=	0x009a
                           00009B   197 _TB8	=	0x009b
                           00009C   198 _REN	=	0x009c
                           00009D   199 _SM2	=	0x009d
                           00009E   200 _SM1	=	0x009e
                           00009F   201 _SM0	=	0x009f
                           0000A0   202 _P2_0	=	0x00a0
                           0000A1   203 _P2_1	=	0x00a1
                           0000A2   204 _P2_2	=	0x00a2
                           0000A3   205 _P2_3	=	0x00a3
                           0000A4   206 _P2_4	=	0x00a4
                           0000A5   207 _P2_5	=	0x00a5
                           0000A6   208 _P2_6	=	0x00a6
                           0000A7   209 _P2_7	=	0x00a7
                           0000A8   210 _EX0	=	0x00a8
                           0000A9   211 _ET0	=	0x00a9
                           0000AA   212 _EX1	=	0x00aa
                           0000AB   213 _ET1	=	0x00ab
                           0000AC   214 _ES	=	0x00ac
                           0000AF   215 _EA	=	0x00af
                           0000B0   216 _P3_0	=	0x00b0
                           0000B1   217 _P3_1	=	0x00b1
                           0000B2   218 _P3_2	=	0x00b2
                           0000B3   219 _P3_3	=	0x00b3
                           0000B4   220 _P3_4	=	0x00b4
                           0000B5   221 _P3_5	=	0x00b5
                           0000B6   222 _P3_6	=	0x00b6
                           0000B7   223 _P3_7	=	0x00b7
                           0000B0   224 _RXD	=	0x00b0
                           0000B1   225 _TXD	=	0x00b1
                           0000B2   226 _INT0	=	0x00b2
                           0000B3   227 _INT1	=	0x00b3
                           0000B4   228 _T0	=	0x00b4
                           0000B5   229 _T1	=	0x00b5
                           0000B6   230 _WR	=	0x00b6
                           0000B7   231 _RD	=	0x00b7
                           0000B8   232 _PX0	=	0x00b8
                           0000B9   233 _PT0	=	0x00b9
                           0000BA   234 _PX1	=	0x00ba
                           0000BB   235 _PT1	=	0x00bb
                           0000BC   236 _PS	=	0x00bc
                           0000D0   237 _P	=	0x00d0
                           0000D1   238 _F1	=	0x00d1
                           0000D2   239 _OV	=	0x00d2
                           0000D3   240 _RS0	=	0x00d3
                           0000D4   241 _RS1	=	0x00d4
                           0000D5   242 _F0	=	0x00d5
                           0000D6   243 _AC	=	0x00d6
                           0000D7   244 _CY	=	0x00d7
                           0000AD   245 _ET2	=	0x00ad
                           0000BD   246 _PT2	=	0x00bd
                           0000C8   247 _T2CON_0	=	0x00c8
                           0000C9   248 _T2CON_1	=	0x00c9
                           0000CA   249 _T2CON_2	=	0x00ca
                           0000CB   250 _T2CON_3	=	0x00cb
                           0000CC   251 _T2CON_4	=	0x00cc
                           0000CD   252 _T2CON_5	=	0x00cd
                           0000CE   253 _T2CON_6	=	0x00ce
                           0000CF   254 _T2CON_7	=	0x00cf
                           0000C8   255 _CP_RL2	=	0x00c8
                           0000C9   256 _C_T2	=	0x00c9
                           0000CA   257 _TR2	=	0x00ca
                           0000CB   258 _EXEN2	=	0x00cb
                           0000CC   259 _TCLK	=	0x00cc
                           0000CD   260 _RCLK	=	0x00cd
                           0000CE   261 _EXF2	=	0x00ce
                           0000CF   262 _TF2	=	0x00cf
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable register banks
                                    265 ;--------------------------------------------------------
                                    266 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        267 	.ds 8
                                    268 ;--------------------------------------------------------
                                    269 ; internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area DSEG    (DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 	.area	OSEG    (OVR,DATA)
      00001A                        276 _uart_send_PARM_2:
      00001A                        277 	.ds 1
                                    278 ;--------------------------------------------------------
                                    279 ; indirectly addressable internal ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area ISEG    (DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; absolute internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area IABS    (ABS,DATA)
                                    286 	.area IABS    (ABS,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; bit data
                                    289 ;--------------------------------------------------------
                                    290 	.area BSEG    (BIT)
                                    291 ;--------------------------------------------------------
                                    292 ; paged external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area PSEG    (PAG,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XSEG    (XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XABS    (ABS,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; external initialized ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XISEG   (XDATA)
                                    307 	.area HOME    (CODE)
                                    308 	.area GSINIT0 (CODE)
                                    309 	.area GSINIT1 (CODE)
                                    310 	.area GSINIT2 (CODE)
                                    311 	.area GSINIT3 (CODE)
                                    312 	.area GSINIT4 (CODE)
                                    313 	.area GSINIT5 (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area CSEG    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; global & static initialisations
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.area GSFINAL (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 ;--------------------------------------------------------
                                    325 ; Home
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
                                    328 	.area HOME    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; code
                                    331 ;--------------------------------------------------------
                                    332 	.area CSEG    (CODE)
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'config_uart'
                                    335 ;------------------------------------------------------------
                                    336 ;baud                      Allocated to registers r6 r7 
                                    337 ;------------------------------------------------------------
                                    338 ;	uart.c:3: void config_uart(unsigned int baud)
                                    339 ;	-----------------------------------------
                                    340 ;	 function config_uart
                                    341 ;	-----------------------------------------
      0008BE                        342 _config_uart:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
      0008BE AE 82            [24]  351 	mov	r6,dpl
      0008C0 AF 83            [24]  352 	mov	r7,dph
                                    353 ;	uart.c:5: SCON = 0x50;
      0008C2 75 98 50         [24]  354 	mov	_SCON,#0x50
                                    355 ;	uart.c:6: TMOD &= 0x0F;
      0008C5 53 89 0F         [24]  356 	anl	_TMOD,#0x0f
                                    357 ;	uart.c:7: TMOD |= 0x20;
      0008C8 AC 89            [24]  358 	mov	r4,_TMOD
      0008CA 43 04 20         [24]  359 	orl	ar4,#0x20
      0008CD 8C 89            [24]  360 	mov	_TMOD,r4
                                    361 ;	uart.c:8: TH1 = 256 - (11059200/12/32)/baud;
      0008CF 8E 1A            [24]  362 	mov	__divslong_PARM_2,r6
      0008D1 8F 1B            [24]  363 	mov	(__divslong_PARM_2 + 1),r7
      0008D3 75 1C 00         [24]  364 	mov	(__divslong_PARM_2 + 2),#0x00
      0008D6 75 1D 00         [24]  365 	mov	(__divslong_PARM_2 + 3),#0x00
      0008D9 90 70 80         [24]  366 	mov	dptr,#0x7080
      0008DC E4               [12]  367 	clr	a
      0008DD F5 F0            [12]  368 	mov	b,a
      0008DF 12 0B 59         [24]  369 	lcall	__divslong
      0008E2 AC 82            [24]  370 	mov	r4,dpl
      0008E4 C3               [12]  371 	clr	c
      0008E5 E4               [12]  372 	clr	a
      0008E6 9C               [12]  373 	subb	a,r4
      0008E7 F5 8D            [12]  374 	mov	_TH1,a
                                    375 ;	uart.c:9: TL1 = TH1;
      0008E9 85 8D 8B         [24]  376 	mov	_TL1,_TH1
                                    377 ;	uart.c:10: ET1 = 0;
                                    378 ;	assignBit
      0008EC C2 AB            [12]  379 	clr	_ET1
                                    380 ;	uart.c:11: ES = 1;
                                    381 ;	assignBit
      0008EE D2 AC            [12]  382 	setb	_ES
                                    383 ;	uart.c:12: TR1 = 1;
                                    384 ;	assignBit
      0008F0 D2 8E            [12]  385 	setb	_TR1
                                    386 ;	uart.c:13: }
      0008F2 22               [24]  387 	ret
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'uart_send'
                                    390 ;------------------------------------------------------------
                                    391 ;len                       Allocated with name '_uart_send_PARM_2'
                                    392 ;buf                       Allocated to registers 
                                    393 ;------------------------------------------------------------
                                    394 ;	uart.c:15: void uart_send(unsigned char *buf, unsigned char len)
                                    395 ;	-----------------------------------------
                                    396 ;	 function uart_send
                                    397 ;	-----------------------------------------
      0008F3                        398 _uart_send:
      0008F3 AD 82            [24]  399 	mov	r5,dpl
      0008F5 AE 83            [24]  400 	mov	r6,dph
      0008F7 AF F0            [24]  401 	mov	r7,b
                                    402 ;	uart.c:17: while (len--)
      0008F9 AC 1A            [24]  403 	mov	r4,_uart_send_PARM_2
      0008FB                        404 00104$:
      0008FB 8C 03            [24]  405 	mov	ar3,r4
      0008FD 1C               [12]  406 	dec	r4
      0008FE EB               [12]  407 	mov	a,r3
      0008FF 60 17            [24]  408 	jz	00107$
                                    409 ;	uart.c:19: TI = 0;
                                    410 ;	assignBit
      000901 C2 99            [12]  411 	clr	_TI
                                    412 ;	uart.c:20: SBUF = *buf++;          /* 发送一个字节数据 */
      000903 8D 82            [24]  413 	mov	dpl,r5
      000905 8E 83            [24]  414 	mov	dph,r6
      000907 8F F0            [24]  415 	mov	b,r7
      000909 12 0B AB         [24]  416 	lcall	__gptrget
      00090C F5 99            [12]  417 	mov	_SBUF,a
      00090E A3               [24]  418 	inc	dptr
      00090F AD 82            [24]  419 	mov	r5,dpl
      000911 AE 83            [24]  420 	mov	r6,dph
                                    421 ;	uart.c:21: while (!TI);           /* 等待该字节发送完成 */
      000913                        422 00101$:
      000913 20 99 E5         [24]  423 	jb	_TI,00104$
      000916 80 FB            [24]  424 	sjmp	00101$
      000918                        425 00107$:
                                    426 ;	uart.c:23: }
      000918 22               [24]  427 	ret
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'uart_scan'
                                    430 ;------------------------------------------------------------
                                    431 ;	uart.c:25: void uart_scan(void)
                                    432 ;	-----------------------------------------
                                    433 ;	 function uart_scan
                                    434 ;	-----------------------------------------
      000919                        435 _uart_scan:
                                    436 ;	uart.c:27: if (RI)
                                    437 ;	uart.c:29: RI = 0;
                                    438 ;	assignBit
      000919 10 98 02         [24]  439 	jbc	_RI,00109$
      00091C 80 00            [24]  440 	sjmp	00102$
      00091E                        441 00109$:
      00091E                        442 00102$:
                                    443 ;	uart.c:31: if (TI)
      00091E A2 99            [12]  444 	mov	c,_TI
                                    445 ;	uart.c:34: }
      000920 22               [24]  446 	ret
                                    447 	.area CSEG    (CODE)
                                    448 	.area CONST   (CODE)
                                    449 	.area XINIT   (CODE)
                                    450 	.area CABS    (ABS,CODE)
