                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module seg
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _led_char
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
                                    131 	.globl _i
                                    132 	.globl _led_buff
                                    133 	.globl _seg_show_num
                                    134 	.globl _seg_init
                                    135 	.globl _seg_driver
                                    136 	.globl _seg_index
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0_0	=	0x0080
                           000081   174 _P0_1	=	0x0081
                           000082   175 _P0_2	=	0x0082
                           000083   176 _P0_3	=	0x0083
                           000084   177 _P0_4	=	0x0084
                           000085   178 _P0_5	=	0x0085
                           000086   179 _P0_6	=	0x0086
                           000087   180 _P0_7	=	0x0087
                           000088   181 _IT0	=	0x0088
                           000089   182 _IE0	=	0x0089
                           00008A   183 _IT1	=	0x008a
                           00008B   184 _IE1	=	0x008b
                           00008C   185 _TR0	=	0x008c
                           00008D   186 _TF0	=	0x008d
                           00008E   187 _TR1	=	0x008e
                           00008F   188 _TF1	=	0x008f
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           000098   197 _RI	=	0x0098
                           000099   198 _TI	=	0x0099
                           00009A   199 _RB8	=	0x009a
                           00009B   200 _TB8	=	0x009b
                           00009C   201 _REN	=	0x009c
                           00009D   202 _SM2	=	0x009d
                           00009E   203 _SM1	=	0x009e
                           00009F   204 _SM0	=	0x009f
                           0000A0   205 _P2_0	=	0x00a0
                           0000A1   206 _P2_1	=	0x00a1
                           0000A2   207 _P2_2	=	0x00a2
                           0000A3   208 _P2_3	=	0x00a3
                           0000A4   209 _P2_4	=	0x00a4
                           0000A5   210 _P2_5	=	0x00a5
                           0000A6   211 _P2_6	=	0x00a6
                           0000A7   212 _P2_7	=	0x00a7
                           0000A8   213 _EX0	=	0x00a8
                           0000A9   214 _ET0	=	0x00a9
                           0000AA   215 _EX1	=	0x00aa
                           0000AB   216 _ET1	=	0x00ab
                           0000AC   217 _ES	=	0x00ac
                           0000AF   218 _EA	=	0x00af
                           0000B0   219 _P3_0	=	0x00b0
                           0000B1   220 _P3_1	=	0x00b1
                           0000B2   221 _P3_2	=	0x00b2
                           0000B3   222 _P3_3	=	0x00b3
                           0000B4   223 _P3_4	=	0x00b4
                           0000B5   224 _P3_5	=	0x00b5
                           0000B6   225 _P3_6	=	0x00b6
                           0000B7   226 _P3_7	=	0x00b7
                           0000B0   227 _RXD	=	0x00b0
                           0000B1   228 _TXD	=	0x00b1
                           0000B2   229 _INT0	=	0x00b2
                           0000B3   230 _INT1	=	0x00b3
                           0000B4   231 _T0	=	0x00b4
                           0000B5   232 _T1	=	0x00b5
                           0000B6   233 _WR	=	0x00b6
                           0000B7   234 _RD	=	0x00b7
                           0000B8   235 _PX0	=	0x00b8
                           0000B9   236 _PT0	=	0x00b9
                           0000BA   237 _PX1	=	0x00ba
                           0000BB   238 _PT1	=	0x00bb
                           0000BC   239 _PS	=	0x00bc
                           0000D0   240 _P	=	0x00d0
                           0000D1   241 _F1	=	0x00d1
                           0000D2   242 _OV	=	0x00d2
                           0000D3   243 _RS0	=	0x00d3
                           0000D4   244 _RS1	=	0x00d4
                           0000D5   245 _F0	=	0x00d5
                           0000D6   246 _AC	=	0x00d6
                           0000D7   247 _CY	=	0x00d7
                           0000AD   248 _ET2	=	0x00ad
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable register banks
                                    268 ;--------------------------------------------------------
                                    269 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        270 	.ds 8
                                    271 ;--------------------------------------------------------
                                    272 ; internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area DSEG    (DATA)
      00000D                        275 _led_buff::
      00000D                        276 	.ds 6
      000013                        277 _i::
      000013                        278 	.ds 1
      000014                        279 _seg_index_i_65536_12:
      000014                        280 	.ds 1
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable items in internal ram 
                                    283 ;--------------------------------------------------------
                                    284 ;--------------------------------------------------------
                                    285 ; indirectly addressable internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area ISEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area IABS    (ABS,DATA)
                                    292 	.area IABS    (ABS,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; bit data
                                    295 ;--------------------------------------------------------
                                    296 	.area BSEG    (BIT)
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external initialized ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; global & static initialisations
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.area GSFINAL (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 ;------------------------------------------------------------
                                    331 ;Allocation info for local variables in function 'seg_index'
                                    332 ;------------------------------------------------------------
                                    333 ;i                         Allocated with name '_seg_index_i_65536_12'
                                    334 ;------------------------------------------------------------
                                    335 ;	seg.c:41: static char i = 0;
      000090 75 14 00         [24]  336 	mov	_seg_index_i_65536_12,#0x00
                                    337 ;	seg.c:8: unsigned char led_buff[6] = {    /* 数码管显示缓冲区，初始值0xFF确定启动不亮 */
      000093 75 0D FF         [24]  338 	mov	_led_buff,#0xff
      000096 75 0E FF         [24]  339 	mov	(_led_buff + 0x0001),#0xff
      000099 75 0F FF         [24]  340 	mov	(_led_buff + 0x0002),#0xff
      00009C 75 10 FF         [24]  341 	mov	(_led_buff + 0x0003),#0xff
      00009F 75 11 F9         [24]  342 	mov	(_led_buff + 0x0004),#0xf9
      0000A2 75 12 C0         [24]  343 	mov	(_led_buff + 0x0005),#0xc0
                                    344 ;	seg.c:12: char i = 0;
      0000A5 75 13 00         [24]  345 	mov	_i,#0x00
                                    346 ;--------------------------------------------------------
                                    347 ; Home
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area HOME    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; code
                                    353 ;--------------------------------------------------------
                                    354 	.area CSEG    (CODE)
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'seg_show_num'
                                    357 ;------------------------------------------------------------
                                    358 ;num                       Allocated to registers r6 r7 
                                    359 ;------------------------------------------------------------
                                    360 ;	seg.c:14: void seg_show_num(unsigned int num)
                                    361 ;	-----------------------------------------
                                    362 ;	 function seg_show_num
                                    363 ;	-----------------------------------------
      000353                        364 _seg_show_num:
                           000007   365 	ar7 = 0x07
                           000006   366 	ar6 = 0x06
                           000005   367 	ar5 = 0x05
                           000004   368 	ar4 = 0x04
                           000003   369 	ar3 = 0x03
                           000002   370 	ar2 = 0x02
                           000001   371 	ar1 = 0x01
                           000000   372 	ar0 = 0x00
                                    373 ;	seg.c:16: led_buff[4] = led_char[num / 10000];
      000353 AE 82            [24]  374 	mov	r6,dpl
      000355 AF 83            [24]  375 	mov	r7,dph
      000357 75 1A 10         [24]  376 	mov	__divuint_PARM_2,#0x10
      00035A 75 1B 27         [24]  377 	mov	(__divuint_PARM_2 + 1),#0x27
      00035D C0 07            [24]  378 	push	ar7
      00035F C0 06            [24]  379 	push	ar6
      000361 12 09 21         [24]  380 	lcall	__divuint
      000364 AC 82            [24]  381 	mov	r4,dpl
      000366 AD 83            [24]  382 	mov	r5,dph
      000368 D0 06            [24]  383 	pop	ar6
      00036A D0 07            [24]  384 	pop	ar7
      00036C EC               [12]  385 	mov	a,r4
      00036D 24 46            [12]  386 	add	a,#_led_char
      00036F F5 82            [12]  387 	mov	dpl,a
      000371 ED               [12]  388 	mov	a,r5
      000372 34 0C            [12]  389 	addc	a,#(_led_char >> 8)
      000374 F5 83            [12]  390 	mov	dph,a
      000376 E4               [12]  391 	clr	a
      000377 93               [24]  392 	movc	a,@a+dptr
      000378 FD               [12]  393 	mov	r5,a
      000379 8D 11            [24]  394 	mov	(_led_buff + 0x0004),r5
                                    395 ;	seg.c:17: led_buff[3] = led_char[num / 1000 % 10];
      00037B 75 1A E8         [24]  396 	mov	__divuint_PARM_2,#0xe8
      00037E 75 1B 03         [24]  397 	mov	(__divuint_PARM_2 + 1),#0x03
      000381 8E 82            [24]  398 	mov	dpl,r6
      000383 8F 83            [24]  399 	mov	dph,r7
      000385 C0 07            [24]  400 	push	ar7
      000387 C0 06            [24]  401 	push	ar6
      000389 12 09 21         [24]  402 	lcall	__divuint
      00038C 75 1A 0A         [24]  403 	mov	__moduint_PARM_2,#0x0a
      00038F 75 1B 00         [24]  404 	mov	(__moduint_PARM_2 + 1),#0x00
      000392 12 0A 4F         [24]  405 	lcall	__moduint
      000395 AC 82            [24]  406 	mov	r4,dpl
      000397 AD 83            [24]  407 	mov	r5,dph
      000399 D0 06            [24]  408 	pop	ar6
      00039B D0 07            [24]  409 	pop	ar7
      00039D EC               [12]  410 	mov	a,r4
      00039E 24 46            [12]  411 	add	a,#_led_char
      0003A0 F5 82            [12]  412 	mov	dpl,a
      0003A2 ED               [12]  413 	mov	a,r5
      0003A3 34 0C            [12]  414 	addc	a,#(_led_char >> 8)
      0003A5 F5 83            [12]  415 	mov	dph,a
      0003A7 E4               [12]  416 	clr	a
      0003A8 93               [24]  417 	movc	a,@a+dptr
      0003A9 FD               [12]  418 	mov	r5,a
      0003AA 8D 10            [24]  419 	mov	(_led_buff + 0x0003),r5
                                    420 ;	seg.c:18: led_buff[2] = led_char[num / 100 % 10];
      0003AC 75 1A 64         [24]  421 	mov	__divuint_PARM_2,#0x64
      0003AF 75 1B 00         [24]  422 	mov	(__divuint_PARM_2 + 1),#0x00
      0003B2 8E 82            [24]  423 	mov	dpl,r6
      0003B4 8F 83            [24]  424 	mov	dph,r7
      0003B6 C0 07            [24]  425 	push	ar7
      0003B8 C0 06            [24]  426 	push	ar6
      0003BA 12 09 21         [24]  427 	lcall	__divuint
      0003BD 75 1A 0A         [24]  428 	mov	__moduint_PARM_2,#0x0a
      0003C0 75 1B 00         [24]  429 	mov	(__moduint_PARM_2 + 1),#0x00
      0003C3 12 0A 4F         [24]  430 	lcall	__moduint
      0003C6 AC 82            [24]  431 	mov	r4,dpl
      0003C8 AD 83            [24]  432 	mov	r5,dph
      0003CA D0 06            [24]  433 	pop	ar6
      0003CC D0 07            [24]  434 	pop	ar7
      0003CE EC               [12]  435 	mov	a,r4
      0003CF 24 46            [12]  436 	add	a,#_led_char
      0003D1 F5 82            [12]  437 	mov	dpl,a
      0003D3 ED               [12]  438 	mov	a,r5
      0003D4 34 0C            [12]  439 	addc	a,#(_led_char >> 8)
      0003D6 F5 83            [12]  440 	mov	dph,a
      0003D8 E4               [12]  441 	clr	a
      0003D9 93               [24]  442 	movc	a,@a+dptr
      0003DA FD               [12]  443 	mov	r5,a
      0003DB 8D 0F            [24]  444 	mov	(_led_buff + 0x0002),r5
                                    445 ;	seg.c:19: led_buff[1] = led_char[num / 10 % 10];
      0003DD 75 1A 0A         [24]  446 	mov	__divuint_PARM_2,#0x0a
      0003E0 75 1B 00         [24]  447 	mov	(__divuint_PARM_2 + 1),#0x00
      0003E3 8E 82            [24]  448 	mov	dpl,r6
      0003E5 8F 83            [24]  449 	mov	dph,r7
      0003E7 C0 07            [24]  450 	push	ar7
      0003E9 C0 06            [24]  451 	push	ar6
      0003EB 12 09 21         [24]  452 	lcall	__divuint
      0003EE 75 1A 0A         [24]  453 	mov	__moduint_PARM_2,#0x0a
      0003F1 75 1B 00         [24]  454 	mov	(__moduint_PARM_2 + 1),#0x00
      0003F4 12 0A 4F         [24]  455 	lcall	__moduint
      0003F7 AC 82            [24]  456 	mov	r4,dpl
      0003F9 AD 83            [24]  457 	mov	r5,dph
      0003FB D0 06            [24]  458 	pop	ar6
      0003FD D0 07            [24]  459 	pop	ar7
      0003FF EC               [12]  460 	mov	a,r4
      000400 24 46            [12]  461 	add	a,#_led_char
      000402 F5 82            [12]  462 	mov	dpl,a
      000404 ED               [12]  463 	mov	a,r5
      000405 34 0C            [12]  464 	addc	a,#(_led_char >> 8)
      000407 F5 83            [12]  465 	mov	dph,a
      000409 E4               [12]  466 	clr	a
      00040A 93               [24]  467 	movc	a,@a+dptr
      00040B FD               [12]  468 	mov	r5,a
      00040C 8D 0E            [24]  469 	mov	(_led_buff + 0x0001),r5
                                    470 ;	seg.c:20: led_buff[0] = led_char[num % 10];
      00040E 75 1A 0A         [24]  471 	mov	__moduint_PARM_2,#0x0a
      000411 75 1B 00         [24]  472 	mov	(__moduint_PARM_2 + 1),#0x00
      000414 8E 82            [24]  473 	mov	dpl,r6
      000416 8F 83            [24]  474 	mov	dph,r7
      000418 12 0A 4F         [24]  475 	lcall	__moduint
      00041B AE 82            [24]  476 	mov	r6,dpl
      00041D AF 83            [24]  477 	mov	r7,dph
      00041F EE               [12]  478 	mov	a,r6
      000420 24 46            [12]  479 	add	a,#_led_char
      000422 F5 82            [12]  480 	mov	dpl,a
      000424 EF               [12]  481 	mov	a,r7
      000425 34 0C            [12]  482 	addc	a,#(_led_char >> 8)
      000427 F5 83            [12]  483 	mov	dph,a
      000429 E4               [12]  484 	clr	a
      00042A 93               [24]  485 	movc	a,@a+dptr
      00042B FF               [12]  486 	mov	r7,a
      00042C 8F 0D            [24]  487 	mov	_led_buff,r7
                                    488 ;	seg.c:21: }
      00042E 22               [24]  489 	ret
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'seg_init'
                                    492 ;------------------------------------------------------------
                                    493 ;	seg.c:23: void seg_init(void)
                                    494 ;	-----------------------------------------
                                    495 ;	 function seg_init
                                    496 ;	-----------------------------------------
      00042F                        497 _seg_init:
                                    498 ;	seg.c:25: ADDR3 = 1;                  /* 因为需要动态改变ADDR0-2的值 */
                                    499 ;	assignBit
      00042F D2 93            [12]  500 	setb	_P1_3
                                    501 ;	seg.c:26: LEDEN = 0;                  /* 是能U3，选择数码管 */
                                    502 ;	assignBit
      000431 C2 94            [12]  503 	clr	_P1_4
                                    504 ;	seg.c:27: }
      000433 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'seg_driver'
                                    508 ;------------------------------------------------------------
                                    509 ;sec                       Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	seg.c:29: void seg_driver(char sec)
                                    512 ;	-----------------------------------------
                                    513 ;	 function seg_driver
                                    514 ;	-----------------------------------------
      000434                        515 _seg_driver:
      000434 AF 82            [24]  516 	mov	r7,dpl
                                    517 ;	seg.c:31: led_buff[0] = led_char[sec%10];
      000436 8F 05            [24]  518 	mov	ar5,r7
      000438 7E 00            [12]  519 	mov	r6,#0x00
      00043A 75 1A 0A         [24]  520 	mov	__modsint_PARM_2,#0x0a
                                    521 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      00043D 8E 1B            [24]  522 	mov	(__modsint_PARM_2 + 1),r6
      00043F 8D 82            [24]  523 	mov	dpl,r5
      000441 8E 83            [24]  524 	mov	dph,r6
      000443 C0 07            [24]  525 	push	ar7
      000445 C0 06            [24]  526 	push	ar6
      000447 C0 05            [24]  527 	push	ar5
      000449 12 0B C7         [24]  528 	lcall	__modsint
      00044C AB 82            [24]  529 	mov	r3,dpl
      00044E AC 83            [24]  530 	mov	r4,dph
      000450 D0 05            [24]  531 	pop	ar5
      000452 D0 06            [24]  532 	pop	ar6
      000454 EB               [12]  533 	mov	a,r3
      000455 24 46            [12]  534 	add	a,#_led_char
      000457 F5 82            [12]  535 	mov	dpl,a
      000459 EC               [12]  536 	mov	a,r4
      00045A 34 0C            [12]  537 	addc	a,#(_led_char >> 8)
      00045C F5 83            [12]  538 	mov	dph,a
      00045E E4               [12]  539 	clr	a
      00045F 93               [24]  540 	movc	a,@a+dptr
      000460 FC               [12]  541 	mov	r4,a
      000461 8C 0D            [24]  542 	mov	_led_buff,r4
                                    543 ;	seg.c:32: led_buff[1] = led_char[sec/10%10];
      000463 75 1A 0A         [24]  544 	mov	__divsint_PARM_2,#0x0a
      000466 75 1B 00         [24]  545 	mov	(__divsint_PARM_2 + 1),#0x00
      000469 8D 82            [24]  546 	mov	dpl,r5
      00046B 8E 83            [24]  547 	mov	dph,r6
      00046D C0 06            [24]  548 	push	ar6
      00046F C0 05            [24]  549 	push	ar5
      000471 12 0B FD         [24]  550 	lcall	__divsint
      000474 75 1A 0A         [24]  551 	mov	__modsint_PARM_2,#0x0a
      000477 75 1B 00         [24]  552 	mov	(__modsint_PARM_2 + 1),#0x00
      00047A 12 0B C7         [24]  553 	lcall	__modsint
      00047D AB 82            [24]  554 	mov	r3,dpl
      00047F AC 83            [24]  555 	mov	r4,dph
      000481 D0 05            [24]  556 	pop	ar5
      000483 D0 06            [24]  557 	pop	ar6
      000485 EB               [12]  558 	mov	a,r3
      000486 24 46            [12]  559 	add	a,#_led_char
      000488 F5 82            [12]  560 	mov	dpl,a
      00048A EC               [12]  561 	mov	a,r4
      00048B 34 0C            [12]  562 	addc	a,#(_led_char >> 8)
      00048D F5 83            [12]  563 	mov	dph,a
      00048F E4               [12]  564 	clr	a
      000490 93               [24]  565 	movc	a,@a+dptr
      000491 FC               [12]  566 	mov	r4,a
      000492 8C 0E            [24]  567 	mov	(_led_buff + 0x0001),r4
                                    568 ;	seg.c:33: led_buff[2] = led_char[sec/100%10];
      000494 75 1A 64         [24]  569 	mov	__divsint_PARM_2,#0x64
      000497 75 1B 00         [24]  570 	mov	(__divsint_PARM_2 + 1),#0x00
      00049A 8D 82            [24]  571 	mov	dpl,r5
      00049C 8E 83            [24]  572 	mov	dph,r6
      00049E C0 06            [24]  573 	push	ar6
      0004A0 C0 05            [24]  574 	push	ar5
      0004A2 12 0B FD         [24]  575 	lcall	__divsint
      0004A5 75 1A 0A         [24]  576 	mov	__modsint_PARM_2,#0x0a
      0004A8 75 1B 00         [24]  577 	mov	(__modsint_PARM_2 + 1),#0x00
      0004AB 12 0B C7         [24]  578 	lcall	__modsint
      0004AE AB 82            [24]  579 	mov	r3,dpl
      0004B0 AC 83            [24]  580 	mov	r4,dph
      0004B2 D0 05            [24]  581 	pop	ar5
      0004B4 D0 06            [24]  582 	pop	ar6
      0004B6 EB               [12]  583 	mov	a,r3
      0004B7 24 46            [12]  584 	add	a,#_led_char
      0004B9 F5 82            [12]  585 	mov	dpl,a
      0004BB EC               [12]  586 	mov	a,r4
      0004BC 34 0C            [12]  587 	addc	a,#(_led_char >> 8)
      0004BE F5 83            [12]  588 	mov	dph,a
      0004C0 E4               [12]  589 	clr	a
      0004C1 93               [24]  590 	movc	a,@a+dptr
      0004C2 FC               [12]  591 	mov	r4,a
      0004C3 8C 0F            [24]  592 	mov	(_led_buff + 0x0002),r4
                                    593 ;	seg.c:34: led_buff[3] = led_char[sec/1000%10];
      0004C5 75 1A E8         [24]  594 	mov	__divsint_PARM_2,#0xe8
      0004C8 75 1B 03         [24]  595 	mov	(__divsint_PARM_2 + 1),#0x03
      0004CB 8D 82            [24]  596 	mov	dpl,r5
      0004CD 8E 83            [24]  597 	mov	dph,r6
      0004CF C0 06            [24]  598 	push	ar6
      0004D1 C0 05            [24]  599 	push	ar5
      0004D3 12 0B FD         [24]  600 	lcall	__divsint
      0004D6 75 1A 0A         [24]  601 	mov	__modsint_PARM_2,#0x0a
      0004D9 75 1B 00         [24]  602 	mov	(__modsint_PARM_2 + 1),#0x00
      0004DC 12 0B C7         [24]  603 	lcall	__modsint
      0004DF AB 82            [24]  604 	mov	r3,dpl
      0004E1 AC 83            [24]  605 	mov	r4,dph
      0004E3 D0 05            [24]  606 	pop	ar5
      0004E5 D0 06            [24]  607 	pop	ar6
      0004E7 EB               [12]  608 	mov	a,r3
      0004E8 24 46            [12]  609 	add	a,#_led_char
      0004EA F5 82            [12]  610 	mov	dpl,a
      0004EC EC               [12]  611 	mov	a,r4
      0004ED 34 0C            [12]  612 	addc	a,#(_led_char >> 8)
      0004EF F5 83            [12]  613 	mov	dph,a
      0004F1 E4               [12]  614 	clr	a
      0004F2 93               [24]  615 	movc	a,@a+dptr
      0004F3 FC               [12]  616 	mov	r4,a
      0004F4 8C 10            [24]  617 	mov	(_led_buff + 0x0003),r4
                                    618 ;	seg.c:35: led_buff[4] = led_char[sec/10000%10];
      0004F6 75 1A 10         [24]  619 	mov	__divsint_PARM_2,#0x10
      0004F9 75 1B 27         [24]  620 	mov	(__divsint_PARM_2 + 1),#0x27
      0004FC 8D 82            [24]  621 	mov	dpl,r5
      0004FE 8E 83            [24]  622 	mov	dph,r6
      000500 12 0B FD         [24]  623 	lcall	__divsint
      000503 75 1A 0A         [24]  624 	mov	__modsint_PARM_2,#0x0a
      000506 75 1B 00         [24]  625 	mov	(__modsint_PARM_2 + 1),#0x00
      000509 12 0B C7         [24]  626 	lcall	__modsint
      00050C AD 82            [24]  627 	mov	r5,dpl
      00050E AE 83            [24]  628 	mov	r6,dph
      000510 D0 07            [24]  629 	pop	ar7
      000512 ED               [12]  630 	mov	a,r5
      000513 24 46            [12]  631 	add	a,#_led_char
      000515 F5 82            [12]  632 	mov	dpl,a
      000517 EE               [12]  633 	mov	a,r6
      000518 34 0C            [12]  634 	addc	a,#(_led_char >> 8)
      00051A F5 83            [12]  635 	mov	dph,a
      00051C E4               [12]  636 	clr	a
      00051D 93               [24]  637 	movc	a,@a+dptr
      00051E FE               [12]  638 	mov	r6,a
      00051F 8E 11            [24]  639 	mov	(_led_buff + 0x0004),r6
                                    640 ;	seg.c:36: led_buff[5] = led_char[sec/100000%10];
      000521 7E 00            [12]  641 	mov	r6,#0x00
      000523 7D 00            [12]  642 	mov	r5,#0x00
      000525 7C 00            [12]  643 	mov	r4,#0x00
      000527 75 1A A0         [24]  644 	mov	__divslong_PARM_2,#0xa0
      00052A 75 1B 86         [24]  645 	mov	(__divslong_PARM_2 + 1),#0x86
      00052D 75 1C 01         [24]  646 	mov	(__divslong_PARM_2 + 2),#0x01
                                    647 ;	1-genFromRTrack replaced	mov	(__divslong_PARM_2 + 3),#0x00
      000530 8E 1D            [24]  648 	mov	(__divslong_PARM_2 + 3),r6
      000532 8F 82            [24]  649 	mov	dpl,r7
      000534 8E 83            [24]  650 	mov	dph,r6
      000536 8D F0            [24]  651 	mov	b,r5
      000538 EC               [12]  652 	mov	a,r4
      000539 12 0B 59         [24]  653 	lcall	__divslong
      00053C AC 82            [24]  654 	mov	r4,dpl
      00053E AD 83            [24]  655 	mov	r5,dph
      000540 AE F0            [24]  656 	mov	r6,b
      000542 FF               [12]  657 	mov	r7,a
      000543 75 1A 0A         [24]  658 	mov	__modslong_PARM_2,#0x0a
      000546 E4               [12]  659 	clr	a
      000547 F5 1B            [12]  660 	mov	(__modslong_PARM_2 + 1),a
      000549 F5 1C            [12]  661 	mov	(__modslong_PARM_2 + 2),a
      00054B F5 1D            [12]  662 	mov	(__modslong_PARM_2 + 3),a
      00054D 8C 82            [24]  663 	mov	dpl,r4
      00054F 8D 83            [24]  664 	mov	dph,r5
      000551 8E F0            [24]  665 	mov	b,r6
      000553 EF               [12]  666 	mov	a,r7
      000554 12 0B 0A         [24]  667 	lcall	__modslong
      000557 AC 82            [24]  668 	mov	r4,dpl
      000559 AD 83            [24]  669 	mov	r5,dph
      00055B EC               [12]  670 	mov	a,r4
      00055C 24 46            [12]  671 	add	a,#_led_char
      00055E F5 82            [12]  672 	mov	dpl,a
      000560 ED               [12]  673 	mov	a,r5
      000561 34 0C            [12]  674 	addc	a,#(_led_char >> 8)
      000563 F5 83            [12]  675 	mov	dph,a
      000565 E4               [12]  676 	clr	a
      000566 93               [24]  677 	movc	a,@a+dptr
      000567 FF               [12]  678 	mov	r7,a
      000568 8F 12            [24]  679 	mov	(_led_buff + 0x0005),r7
                                    680 ;	seg.c:37: }
      00056A 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'seg_index'
                                    684 ;------------------------------------------------------------
                                    685 ;i                         Allocated with name '_seg_index_i_65536_12'
                                    686 ;------------------------------------------------------------
                                    687 ;	seg.c:39: void seg_index(void)
                                    688 ;	-----------------------------------------
                                    689 ;	 function seg_index
                                    690 ;	-----------------------------------------
      00056B                        691 _seg_index:
                                    692 ;	seg.c:43: SEG = 0xFF;                  /* 显示消隐 */
      00056B 75 80 FF         [24]  693 	mov	_P0,#0xff
                                    694 ;	seg.c:45: switch (i)
      00056E E5 14            [12]  695 	mov	a,_seg_index_i_65536_12
      000570 24 FA            [12]  696 	add	a,#0xff - 0x05
      000572 40 64            [24]  697 	jc	00109$
      000574 E5 14            [12]  698 	mov	a,_seg_index_i_65536_12
      000576 75 F0 03         [24]  699 	mov	b,#0x03
      000579 A4               [48]  700 	mul	ab
      00057A 90 05 7E         [24]  701 	mov	dptr,#00116$
      00057D 73               [24]  702 	jmp	@a+dptr
      00057E                        703 00116$:
      00057E 02 05 90         [24]  704 	ljmp	00101$
      000581 02 05 9C         [24]  705 	ljmp	00102$
      000584 02 05 A8         [24]  706 	ljmp	00103$
      000587 02 05 B4         [24]  707 	ljmp	00104$
      00058A 02 05 C0         [24]  708 	ljmp	00105$
      00058D 02 05 CC         [24]  709 	ljmp	00106$
                                    710 ;	seg.c:47: case 0: ADDR2 = 0; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[0]; break;
      000590                        711 00101$:
                                    712 ;	assignBit
      000590 C2 92            [12]  713 	clr	_P1_2
                                    714 ;	assignBit
      000592 C2 91            [12]  715 	clr	_P1_1
                                    716 ;	assignBit
      000594 C2 90            [12]  717 	clr	_P1_0
      000596 05 14            [12]  718 	inc	_seg_index_i_65536_12
      000598 85 0D 80         [24]  719 	mov	_P0,_led_buff
                                    720 ;	seg.c:48: case 1: ADDR2 = 0; ADDR1 = 0; ADDR0 = 1; i++; SEG = led_buff[1]; break;
      00059B 22               [24]  721 	ret
      00059C                        722 00102$:
                                    723 ;	assignBit
      00059C C2 92            [12]  724 	clr	_P1_2
                                    725 ;	assignBit
      00059E C2 91            [12]  726 	clr	_P1_1
                                    727 ;	assignBit
      0005A0 D2 90            [12]  728 	setb	_P1_0
      0005A2 05 14            [12]  729 	inc	_seg_index_i_65536_12
      0005A4 85 0E 80         [24]  730 	mov	_P0,(_led_buff + 0x0001)
                                    731 ;	seg.c:49: case 2: ADDR2 = 0; ADDR1 = 1; ADDR0 = 0; i++; SEG = led_buff[2]; break;
      0005A7 22               [24]  732 	ret
      0005A8                        733 00103$:
                                    734 ;	assignBit
      0005A8 C2 92            [12]  735 	clr	_P1_2
                                    736 ;	assignBit
      0005AA D2 91            [12]  737 	setb	_P1_1
                                    738 ;	assignBit
      0005AC C2 90            [12]  739 	clr	_P1_0
      0005AE 05 14            [12]  740 	inc	_seg_index_i_65536_12
      0005B0 85 0F 80         [24]  741 	mov	_P0,(_led_buff + 0x0002)
                                    742 ;	seg.c:50: case 3: ADDR2 = 0; ADDR1 = 1; ADDR0 = 1; i++; SEG = led_buff[3]; break;
      0005B3 22               [24]  743 	ret
      0005B4                        744 00104$:
                                    745 ;	assignBit
      0005B4 C2 92            [12]  746 	clr	_P1_2
                                    747 ;	assignBit
      0005B6 D2 91            [12]  748 	setb	_P1_1
                                    749 ;	assignBit
      0005B8 D2 90            [12]  750 	setb	_P1_0
      0005BA 05 14            [12]  751 	inc	_seg_index_i_65536_12
      0005BC 85 10 80         [24]  752 	mov	_P0,(_led_buff + 0x0003)
                                    753 ;	seg.c:51: case 4: ADDR2 = 1; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[4]; break;
      0005BF 22               [24]  754 	ret
      0005C0                        755 00105$:
                                    756 ;	assignBit
      0005C0 D2 92            [12]  757 	setb	_P1_2
                                    758 ;	assignBit
      0005C2 C2 91            [12]  759 	clr	_P1_1
                                    760 ;	assignBit
      0005C4 C2 90            [12]  761 	clr	_P1_0
      0005C6 05 14            [12]  762 	inc	_seg_index_i_65536_12
      0005C8 85 11 80         [24]  763 	mov	_P0,(_led_buff + 0x0004)
                                    764 ;	seg.c:52: case 5: ADDR2 = 1; ADDR1 = 0; ADDR0 = 1; i = 0; SEG = led_buff[5]; break;
      0005CB 22               [24]  765 	ret
      0005CC                        766 00106$:
                                    767 ;	assignBit
      0005CC D2 92            [12]  768 	setb	_P1_2
                                    769 ;	assignBit
      0005CE C2 91            [12]  770 	clr	_P1_1
                                    771 ;	assignBit
      0005D0 D2 90            [12]  772 	setb	_P1_0
      0005D2 75 14 00         [24]  773 	mov	_seg_index_i_65536_12,#0x00
      0005D5 85 12 80         [24]  774 	mov	_P0,(_led_buff + 0x0005)
                                    775 ;	seg.c:54: }
      0005D8                        776 00109$:
                                    777 ;	seg.c:55: }
      0005D8 22               [24]  778 	ret
                                    779 	.area CSEG    (CODE)
                                    780 	.area CONST   (CODE)
      000C46                        781 _led_char:
      000C46 C0                     782 	.db #0xc0	; 192
      000C47 F9                     783 	.db #0xf9	; 249
      000C48 A4                     784 	.db #0xa4	; 164
      000C49 B0                     785 	.db #0xb0	; 176
      000C4A 99                     786 	.db #0x99	; 153
      000C4B 92                     787 	.db #0x92	; 146
      000C4C 82                     788 	.db #0x82	; 130
      000C4D F8                     789 	.db #0xf8	; 248
      000C4E 80                     790 	.db #0x80	; 128
      000C4F 90                     791 	.db #0x90	; 144
      000C50 88                     792 	.db #0x88	; 136
      000C51 83                     793 	.db #0x83	; 131
      000C52 C6                     794 	.db #0xc6	; 198
      000C53 A1                     795 	.db #0xa1	; 161
      000C54 86                     796 	.db #0x86	; 134
      000C55 8E                     797 	.db #0x8e	; 142
                                    798 	.area XINIT   (CODE)
                                    799 	.area CABS    (ABS,CODE)
