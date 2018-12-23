                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module key
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart_send
                                     12 	.globl _seg_show_num
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 	.globl _key_sta
                                    133 	.globl _key_code_map
                                    134 	.globl _key_action
                                    135 	.globl _key_driver
                                    136 	.globl _key_scan
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
      000021                        275 _key_code_map::
      000021                        276 	.ds 16
      000031                        277 _key_sta::
      000031                        278 	.ds 16
      000041                        279 _key_action_show_num_65536_12:
      000041                        280 	.ds 2
      000043                        281 _key_driver_back_up_65536_21:
      000043                        282 	.ds 16
      000053                        283 _key_driver_i_65536_21:
      000053                        284 	.ds 1
      000054                        285 _key_driver_j_65536_21:
      000054                        286 	.ds 1
      000055                        287 _key_scan_key_out_65536_28:
      000055                        288 	.ds 1
      000056                        289 _key_scan_key_buf_65536_28:
      000056                        290 	.ds 16
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable items in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 	.area	OSEG    (OVR,DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; indirectly addressable internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area ISEG    (DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area IABS    (ABS,DATA)
                                    303 	.area IABS    (ABS,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; bit data
                                    306 ;--------------------------------------------------------
                                    307 	.area BSEG    (BIT)
                                    308 ;--------------------------------------------------------
                                    309 ; paged external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area PSEG    (PAG,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XABS    (ABS,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external initialized ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XISEG   (XDATA)
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT0 (CODE)
                                    326 	.area GSINIT1 (CODE)
                                    327 	.area GSINIT2 (CODE)
                                    328 	.area GSINIT3 (CODE)
                                    329 	.area GSINIT4 (CODE)
                                    330 	.area GSINIT5 (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area CSEG    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; global & static initialisations
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'key_action'
                                    343 ;------------------------------------------------------------
                                    344 ;show_num                  Allocated with name '_key_action_show_num_65536_12'
                                    345 ;key_code                  Allocated to registers r7 
                                    346 ;------------------------------------------------------------
                                    347 ;	key.c:18: static unsigned int show_num = 0;
      0000A8 E4               [12]  348 	clr	a
      0000A9 F5 41            [12]  349 	mov	_key_action_show_num_65536_12,a
      0000AB F5 42            [12]  350 	mov	(_key_action_show_num_65536_12 + 1),a
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'key_driver'
                                    353 ;------------------------------------------------------------
                                    354 ;back_up                   Allocated with name '_key_driver_back_up_65536_21'
                                    355 ;i                         Allocated with name '_key_driver_i_65536_21'
                                    356 ;j                         Allocated with name '_key_driver_j_65536_21'
                                    357 ;------------------------------------------------------------
                                    358 ;	key.c:56: static unsigned char back_up[4][4] = { /* 按键值备份，保留前一次的值 */
      0000AD 75 43 01         [24]  359 	mov	_key_driver_back_up_65536_21,#0x01
      0000B0 75 44 01         [24]  360 	mov	(_key_driver_back_up_65536_21 + 0x0001),#0x01
      0000B3 75 45 01         [24]  361 	mov	(_key_driver_back_up_65536_21 + 0x0002),#0x01
      0000B6 75 46 01         [24]  362 	mov	(_key_driver_back_up_65536_21 + 0x0003),#0x01
      0000B9 75 47 01         [24]  363 	mov	(_key_driver_back_up_65536_21 + 0x0004),#0x01
      0000BC 75 48 01         [24]  364 	mov	(_key_driver_back_up_65536_21 + 0x0005),#0x01
      0000BF 75 49 01         [24]  365 	mov	(_key_driver_back_up_65536_21 + 0x0006),#0x01
      0000C2 75 4A 01         [24]  366 	mov	(_key_driver_back_up_65536_21 + 0x0007),#0x01
      0000C5 75 4B 01         [24]  367 	mov	(_key_driver_back_up_65536_21 + 0x0008),#0x01
      0000C8 75 4C 01         [24]  368 	mov	(_key_driver_back_up_65536_21 + 0x0009),#0x01
      0000CB 75 4D 01         [24]  369 	mov	(_key_driver_back_up_65536_21 + 0x000a),#0x01
      0000CE 75 4E 01         [24]  370 	mov	(_key_driver_back_up_65536_21 + 0x000b),#0x01
      0000D1 75 4F 01         [24]  371 	mov	(_key_driver_back_up_65536_21 + 0x000c),#0x01
      0000D4 75 50 01         [24]  372 	mov	(_key_driver_back_up_65536_21 + 0x000d),#0x01
      0000D7 75 51 01         [24]  373 	mov	(_key_driver_back_up_65536_21 + 0x000e),#0x01
      0000DA 75 52 01         [24]  374 	mov	(_key_driver_back_up_65536_21 + 0x000f),#0x01
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'key_scan'
                                    377 ;------------------------------------------------------------
                                    378 ;key_out                   Allocated with name '_key_scan_key_out_65536_28'
                                    379 ;key_buf                   Allocated with name '_key_scan_key_buf_65536_28'
                                    380 ;i                         Allocated to registers r7 
                                    381 ;------------------------------------------------------------
                                    382 ;	key.c:77: static unsigned char key_out = 0;
      0000DD 75 55 00         [24]  383 	mov	_key_scan_key_out_65536_28,#0x00
                                    384 ;	key.c:78: static unsigned char key_buf[4][4] = {
      0000E0 75 56 FF         [24]  385 	mov	_key_scan_key_buf_65536_28,#0xff
      0000E3 75 57 FF         [24]  386 	mov	(_key_scan_key_buf_65536_28 + 0x0001),#0xff
      0000E6 75 58 FF         [24]  387 	mov	(_key_scan_key_buf_65536_28 + 0x0002),#0xff
      0000E9 75 59 FF         [24]  388 	mov	(_key_scan_key_buf_65536_28 + 0x0003),#0xff
      0000EC 75 5A FF         [24]  389 	mov	(_key_scan_key_buf_65536_28 + 0x0004),#0xff
      0000EF 75 5B FF         [24]  390 	mov	(_key_scan_key_buf_65536_28 + 0x0005),#0xff
      0000F2 75 5C FF         [24]  391 	mov	(_key_scan_key_buf_65536_28 + 0x0006),#0xff
      0000F5 75 5D FF         [24]  392 	mov	(_key_scan_key_buf_65536_28 + 0x0007),#0xff
      0000F8 75 5E FF         [24]  393 	mov	(_key_scan_key_buf_65536_28 + 0x0008),#0xff
      0000FB 75 5F FF         [24]  394 	mov	(_key_scan_key_buf_65536_28 + 0x0009),#0xff
      0000FE 75 60 FF         [24]  395 	mov	(_key_scan_key_buf_65536_28 + 0x000a),#0xff
      000101 75 61 FF         [24]  396 	mov	(_key_scan_key_buf_65536_28 + 0x000b),#0xff
      000104 75 62 FF         [24]  397 	mov	(_key_scan_key_buf_65536_28 + 0x000c),#0xff
      000107 75 63 FF         [24]  398 	mov	(_key_scan_key_buf_65536_28 + 0x000d),#0xff
      00010A 75 64 FF         [24]  399 	mov	(_key_scan_key_buf_65536_28 + 0x000e),#0xff
      00010D 75 65 FF         [24]  400 	mov	(_key_scan_key_buf_65536_28 + 0x000f),#0xff
                                    401 ;	key.c:5: unsigned char key_code_map[4][4] = {
      000110 75 21 31         [24]  402 	mov	_key_code_map,#0x31
      000113 75 22 32         [24]  403 	mov	(_key_code_map + 0x0001),#0x32
      000116 75 23 33         [24]  404 	mov	(_key_code_map + 0x0002),#0x33
      000119 75 24 24         [24]  405 	mov	(_key_code_map + 0x0003),#0x24
      00011C 75 25 34         [24]  406 	mov	(_key_code_map + 0x0004),#0x34
      00011F 75 26 35         [24]  407 	mov	(_key_code_map + 0x0005),#0x35
      000122 75 27 36         [24]  408 	mov	(_key_code_map + 0x0006),#0x36
      000125 75 28 25         [24]  409 	mov	(_key_code_map + 0x0007),#0x25
      000128 75 29 37         [24]  410 	mov	(_key_code_map + 0x0008),#0x37
      00012B 75 2A 38         [24]  411 	mov	(_key_code_map + 0x0009),#0x38
      00012E 75 2B 39         [24]  412 	mov	(_key_code_map + 0x000a),#0x39
      000131 75 2C 28         [24]  413 	mov	(_key_code_map + 0x000b),#0x28
      000134 75 2D 30         [24]  414 	mov	(_key_code_map + 0x000c),#0x30
      000137 75 2E 1B         [24]  415 	mov	(_key_code_map + 0x000d),#0x1b
      00013A 75 2F 0D         [24]  416 	mov	(_key_code_map + 0x000e),#0x0d
      00013D 75 30 27         [24]  417 	mov	(_key_code_map + 0x000f),#0x27
                                    418 ;	key.c:12: unsigned char key_sta[4][4] = { /* 全部矩阵按键的当前状态 */
      000140 75 31 01         [24]  419 	mov	_key_sta,#0x01
      000143 75 32 01         [24]  420 	mov	(_key_sta + 0x0001),#0x01
      000146 75 33 01         [24]  421 	mov	(_key_sta + 0x0002),#0x01
      000149 75 34 01         [24]  422 	mov	(_key_sta + 0x0003),#0x01
      00014C 75 35 01         [24]  423 	mov	(_key_sta + 0x0004),#0x01
      00014F 75 36 01         [24]  424 	mov	(_key_sta + 0x0005),#0x01
      000152 75 37 01         [24]  425 	mov	(_key_sta + 0x0006),#0x01
      000155 75 38 01         [24]  426 	mov	(_key_sta + 0x0007),#0x01
      000158 75 39 01         [24]  427 	mov	(_key_sta + 0x0008),#0x01
      00015B 75 3A 01         [24]  428 	mov	(_key_sta + 0x0009),#0x01
      00015E 75 3B 01         [24]  429 	mov	(_key_sta + 0x000a),#0x01
      000161 75 3C 01         [24]  430 	mov	(_key_sta + 0x000b),#0x01
      000164 75 3D 01         [24]  431 	mov	(_key_sta + 0x000c),#0x01
      000167 75 3E 01         [24]  432 	mov	(_key_sta + 0x000d),#0x01
      00016A 75 3F 01         [24]  433 	mov	(_key_sta + 0x000e),#0x01
      00016D 75 40 01         [24]  434 	mov	(_key_sta + 0x000f),#0x01
                                    435 ;--------------------------------------------------------
                                    436 ; Home
                                    437 ;--------------------------------------------------------
                                    438 	.area HOME    (CODE)
                                    439 	.area HOME    (CODE)
                                    440 ;--------------------------------------------------------
                                    441 ; code
                                    442 ;--------------------------------------------------------
                                    443 	.area CSEG    (CODE)
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'key_action'
                                    446 ;------------------------------------------------------------
                                    447 ;show_num                  Allocated with name '_key_action_show_num_65536_12'
                                    448 ;key_code                  Allocated to registers r7 
                                    449 ;------------------------------------------------------------
                                    450 ;	key.c:16: void key_action(unsigned char key_code)
                                    451 ;	-----------------------------------------
                                    452 ;	 function key_action
                                    453 ;	-----------------------------------------
      000672                        454 _key_action:
                           000007   455 	ar7 = 0x07
                           000006   456 	ar6 = 0x06
                           000005   457 	ar5 = 0x05
                           000004   458 	ar4 = 0x04
                           000003   459 	ar3 = 0x03
                           000002   460 	ar2 = 0x02
                           000001   461 	ar1 = 0x01
                           000000   462 	ar0 = 0x00
      000672 AF 82            [24]  463 	mov	r7,dpl
                                    464 ;	key.c:20: if ((key_code >= 0x30) && (key_code <= 0x39)) /* 输入0～9 */
      000674 BF 30 00         [24]  465 	cjne	r7,#0x30,00156$
      000677                        466 00156$:
      000677 40 16            [24]  467 	jc	00119$
      000679 EF               [12]  468 	mov	a,r7
      00067A 24 C6            [12]  469 	add	a,#0xff - 0x39
      00067C 40 11            [24]  470 	jc	00119$
                                    471 ;	key.c:22: show_num = key_code - 0x30;
      00067E 8F 05            [24]  472 	mov	ar5,r7
      000680 7E 00            [12]  473 	mov	r6,#0x00
      000682 ED               [12]  474 	mov	a,r5
      000683 24 D0            [12]  475 	add	a,#0xd0
      000685 F5 41            [12]  476 	mov	_key_action_show_num_65536_12,a
      000687 EE               [12]  477 	mov	a,r6
      000688 34 FF            [12]  478 	addc	a,#0xff
      00068A F5 42            [12]  479 	mov	(_key_action_show_num_65536_12 + 1),a
      00068C 02 06 FB         [24]  480 	ljmp	00120$
      00068F                        481 00119$:
                                    482 ;	key.c:24: else if (key_code == 0x24)
      00068F BF 24 0B         [24]  483 	cjne	r7,#0x24,00116$
                                    484 ;	key.c:26: show_num++;
      000692 05 41            [12]  485 	inc	_key_action_show_num_65536_12
      000694 E4               [12]  486 	clr	a
      000695 B5 41 02         [24]  487 	cjne	a,_key_action_show_num_65536_12,00161$
      000698 05 42            [12]  488 	inc	(_key_action_show_num_65536_12 + 1)
      00069A                        489 00161$:
      00069A 02 06 FB         [24]  490 	ljmp	00120$
      00069D                        491 00116$:
                                    492 ;	key.c:28: else if (key_code == 0x25)
      00069D BF 25 14         [24]  493 	cjne	r7,#0x25,00113$
                                    494 ;	key.c:30: show_num = show_num*10;
      0006A0 85 41 1A         [24]  495 	mov	__mulint_PARM_2,_key_action_show_num_65536_12
      0006A3 85 42 1B         [24]  496 	mov	(__mulint_PARM_2 + 1),(_key_action_show_num_65536_12 + 1)
      0006A6 90 00 0A         [24]  497 	mov	dptr,#0x000a
      0006A9 12 0A 32         [24]  498 	lcall	__mulint
      0006AC 85 82 41         [24]  499 	mov	_key_action_show_num_65536_12,dpl
      0006AF 85 83 42         [24]  500 	mov	(_key_action_show_num_65536_12 + 1),dph
      0006B2 80 47            [24]  501 	sjmp	00120$
      0006B4                        502 00113$:
                                    503 ;	key.c:32: else if (key_code == 0x28)
      0006B4 BF 28 0B         [24]  504 	cjne	r7,#0x28,00110$
                                    505 ;	key.c:34: show_num--;
      0006B7 15 41            [12]  506 	dec	_key_action_show_num_65536_12
      0006B9 74 FF            [12]  507 	mov	a,#0xff
      0006BB B5 41 02         [24]  508 	cjne	a,_key_action_show_num_65536_12,00166$
      0006BE 15 42            [12]  509 	dec	(_key_action_show_num_65536_12 + 1)
      0006C0                        510 00166$:
      0006C0 80 39            [24]  511 	sjmp	00120$
      0006C2                        512 00110$:
                                    513 ;	key.c:36: else if (key_code == 0x27)
      0006C2 BF 27 17         [24]  514 	cjne	r7,#0x27,00107$
                                    515 ;	key.c:38: show_num = show_num/10;
      0006C5 75 1A 0A         [24]  516 	mov	__divuint_PARM_2,#0x0a
      0006C8 75 1B 00         [24]  517 	mov	(__divuint_PARM_2 + 1),#0x00
      0006CB 85 41 82         [24]  518 	mov	dpl,_key_action_show_num_65536_12
      0006CE 85 42 83         [24]  519 	mov	dph,(_key_action_show_num_65536_12 + 1)
      0006D1 12 09 21         [24]  520 	lcall	__divuint
      0006D4 85 82 41         [24]  521 	mov	_key_action_show_num_65536_12,dpl
      0006D7 85 83 42         [24]  522 	mov	(_key_action_show_num_65536_12 + 1),dph
      0006DA 80 1F            [24]  523 	sjmp	00120$
      0006DC                        524 00107$:
                                    525 ;	key.c:40: else if (key_code == 0x0D)
      0006DC BF 0D 08         [24]  526 	cjne	r7,#0x0d,00104$
                                    527 ;	key.c:42: show_num = 5120;
      0006DF 75 41 00         [24]  528 	mov	_key_action_show_num_65536_12,#0x00
      0006E2 75 42 14         [24]  529 	mov	(_key_action_show_num_65536_12 + 1),#0x14
      0006E5 80 14            [24]  530 	sjmp	00120$
      0006E7                        531 00104$:
                                    532 ;	key.c:44: else if (key_code == 0x1B)  /* ESC按键，电机控制按键 */
      0006E7 BF 1B 11         [24]  533 	cjne	r7,#0x1b,00120$
                                    534 ;	key.c:46: show_num = 0;
      0006EA E4               [12]  535 	clr	a
      0006EB F5 41            [12]  536 	mov	_key_action_show_num_65536_12,a
      0006ED F5 42            [12]  537 	mov	(_key_action_show_num_65536_12 + 1),a
                                    538 ;	key.c:47: uart_send("123", 3);
      0006EF 75 1A 03         [24]  539 	mov	_uart_send_PARM_2,#0x03
      0006F2 90 0C 56         [24]  540 	mov	dptr,#___str_0
      0006F5 75 F0 80         [24]  541 	mov	b,#0x80
      0006F8 12 08 F3         [24]  542 	lcall	_uart_send
      0006FB                        543 00120$:
                                    544 ;	key.c:50: seg_show_num(show_num);
      0006FB 85 41 82         [24]  545 	mov	dpl,_key_action_show_num_65536_12
      0006FE 85 42 83         [24]  546 	mov	dph,(_key_action_show_num_65536_12 + 1)
                                    547 ;	key.c:51: }
      000701 02 03 53         [24]  548 	ljmp	_seg_show_num
                                    549 ;------------------------------------------------------------
                                    550 ;Allocation info for local variables in function 'key_driver'
                                    551 ;------------------------------------------------------------
                                    552 ;back_up                   Allocated with name '_key_driver_back_up_65536_21'
                                    553 ;i                         Allocated with name '_key_driver_i_65536_21'
                                    554 ;j                         Allocated with name '_key_driver_j_65536_21'
                                    555 ;------------------------------------------------------------
                                    556 ;	key.c:53: void key_driver(void)
                                    557 ;	-----------------------------------------
                                    558 ;	 function key_driver
                                    559 ;	-----------------------------------------
      000704                        560 _key_driver:
                                    561 ;	key.c:60: for (i = 0; i < 4; i++)
      000704 75 53 00         [24]  562 	mov	_key_driver_i_65536_21,#0x00
                                    563 ;	key.c:62: for (j = 0; j < 4; j++)
      000707                        564 00115$:
      000707 E5 53            [12]  565 	mov	a,_key_driver_i_65536_21
      000709 25 53            [12]  566 	add	a,_key_driver_i_65536_21
      00070B 25 E0            [12]  567 	add	a,acc
      00070D FE               [12]  568 	mov	r6,a
      00070E FD               [12]  569 	mov	r5,a
      00070F 24 43            [12]  570 	add	a,#_key_driver_back_up_65536_21
      000711 FC               [12]  571 	mov	r4,a
      000712 EE               [12]  572 	mov	a,r6
      000713 24 31            [12]  573 	add	a,#_key_sta
      000715 FB               [12]  574 	mov	r3,a
      000716 75 54 00         [24]  575 	mov	_key_driver_j_65536_21,#0x00
      000719                        576 00107$:
                                    577 ;	key.c:64: if (back_up[i][j] != key_sta[i][j])
      000719 E5 54            [12]  578 	mov	a,_key_driver_j_65536_21
      00071B 2C               [12]  579 	add	a,r4
      00071C F9               [12]  580 	mov	r1,a
      00071D E5 54            [12]  581 	mov	a,_key_driver_j_65536_21
      00071F 2B               [12]  582 	add	a,r3
      000720 F8               [12]  583 	mov	r0,a
      000721 87 07            [24]  584 	mov	ar7,@r1
      000723 86 02            [24]  585 	mov	ar2,@r0
      000725 EF               [12]  586 	mov	a,r7
      000726 B5 02 02         [24]  587 	cjne	a,ar2,00135$
      000729 80 26            [24]  588 	sjmp	00104$
      00072B                        589 00135$:
                                    590 ;	key.c:66: if (key_sta[i][j] == 1)
      00072B ED               [12]  591 	mov	a,r5
      00072C 24 31            [12]  592 	add	a,#_key_sta
      00072E 25 54            [12]  593 	add	a,_key_driver_j_65536_21
      000730 F9               [12]  594 	mov	r1,a
      000731 87 07            [24]  595 	mov	ar7,@r1
      000733 BF 01 1B         [24]  596 	cjne	r7,#0x01,00104$
                                    597 ;	key.c:67: key_action(key_code_map[i][j]);
      000736 ED               [12]  598 	mov	a,r5
      000737 24 21            [12]  599 	add	a,#_key_code_map
      000739 25 54            [12]  600 	add	a,_key_driver_j_65536_21
      00073B F9               [12]  601 	mov	r1,a
      00073C 87 82            [24]  602 	mov	dpl,@r1
      00073E C0 06            [24]  603 	push	ar6
      000740 C0 05            [24]  604 	push	ar5
      000742 C0 04            [24]  605 	push	ar4
      000744 C0 03            [24]  606 	push	ar3
      000746 12 06 72         [24]  607 	lcall	_key_action
      000749 D0 03            [24]  608 	pop	ar3
      00074B D0 04            [24]  609 	pop	ar4
      00074D D0 05            [24]  610 	pop	ar5
      00074F D0 06            [24]  611 	pop	ar6
      000751                        612 00104$:
                                    613 ;	key.c:69: back_up[i][j] = key_sta[i][j];
      000751 EE               [12]  614 	mov	a,r6
      000752 24 43            [12]  615 	add	a,#_key_driver_back_up_65536_21
      000754 25 54            [12]  616 	add	a,_key_driver_j_65536_21
      000756 F9               [12]  617 	mov	r1,a
      000757 EE               [12]  618 	mov	a,r6
      000758 24 31            [12]  619 	add	a,#_key_sta
      00075A 25 54            [12]  620 	add	a,_key_driver_j_65536_21
      00075C F8               [12]  621 	mov	r0,a
      00075D 86 07            [24]  622 	mov	ar7,@r0
      00075F A7 07            [24]  623 	mov	@r1,ar7
                                    624 ;	key.c:62: for (j = 0; j < 4; j++)
      000761 05 54            [12]  625 	inc	_key_driver_j_65536_21
      000763 74 FC            [12]  626 	mov	a,#0x100 - 0x04
      000765 25 54            [12]  627 	add	a,_key_driver_j_65536_21
      000767 50 B0            [24]  628 	jnc	00107$
                                    629 ;	key.c:60: for (i = 0; i < 4; i++)
      000769 05 53            [12]  630 	inc	_key_driver_i_65536_21
      00076B 74 FC            [12]  631 	mov	a,#0x100 - 0x04
      00076D 25 53            [12]  632 	add	a,_key_driver_i_65536_21
      00076F 40 03            [24]  633 	jc	00139$
      000771 02 07 07         [24]  634 	ljmp	00115$
      000774                        635 00139$:
                                    636 ;	key.c:72: }
      000774 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'key_scan'
                                    640 ;------------------------------------------------------------
                                    641 ;key_out                   Allocated with name '_key_scan_key_out_65536_28'
                                    642 ;key_buf                   Allocated with name '_key_scan_key_buf_65536_28'
                                    643 ;i                         Allocated to registers r7 
                                    644 ;------------------------------------------------------------
                                    645 ;	key.c:74: void key_scan(void)
                                    646 ;	-----------------------------------------
                                    647 ;	 function key_scan
                                    648 ;	-----------------------------------------
      000775                        649 _key_scan:
                                    650 ;	key.c:84: key_buf[key_out][0] = (key_buf[key_out][0] << 1) | KEY_IN_1;
      000775 E5 55            [12]  651 	mov	a,_key_scan_key_out_65536_28
      000777 25 55            [12]  652 	add	a,_key_scan_key_out_65536_28
      000779 25 E0            [12]  653 	add	a,acc
      00077B 24 56            [12]  654 	add	a,#_key_scan_key_buf_65536_28
      00077D F9               [12]  655 	mov	r1,a
      00077E E7               [12]  656 	mov	a,@r1
      00077F 27               [12]  657 	add	a,@r1
      000780 FF               [12]  658 	mov	r7,a
      000781 A2 A4            [12]  659 	mov	c,_P2_4
      000783 E4               [12]  660 	clr	a
      000784 33               [12]  661 	rlc	a
      000785 4F               [12]  662 	orl	a,r7
      000786 F7               [12]  663 	mov	@r1,a
                                    664 ;	key.c:85: key_buf[key_out][1] = (key_buf[key_out][1] << 1) | KEY_IN_2;
      000787 E5 55            [12]  665 	mov	a,_key_scan_key_out_65536_28
      000789 25 55            [12]  666 	add	a,_key_scan_key_out_65536_28
      00078B 25 E0            [12]  667 	add	a,acc
      00078D 24 56            [12]  668 	add	a,#_key_scan_key_buf_65536_28
      00078F 04               [12]  669 	inc	a
      000790 F9               [12]  670 	mov	r1,a
      000791 E7               [12]  671 	mov	a,@r1
      000792 27               [12]  672 	add	a,@r1
      000793 FF               [12]  673 	mov	r7,a
      000794 A2 A5            [12]  674 	mov	c,_P2_5
      000796 E4               [12]  675 	clr	a
      000797 33               [12]  676 	rlc	a
      000798 4F               [12]  677 	orl	a,r7
      000799 F7               [12]  678 	mov	@r1,a
                                    679 ;	key.c:86: key_buf[key_out][2] = (key_buf[key_out][2] << 1) | KEY_IN_3;
      00079A E5 55            [12]  680 	mov	a,_key_scan_key_out_65536_28
      00079C 25 55            [12]  681 	add	a,_key_scan_key_out_65536_28
      00079E 25 E0            [12]  682 	add	a,acc
      0007A0 24 56            [12]  683 	add	a,#_key_scan_key_buf_65536_28
      0007A2 24 02            [12]  684 	add	a,#0x02
      0007A4 F9               [12]  685 	mov	r1,a
      0007A5 E7               [12]  686 	mov	a,@r1
      0007A6 27               [12]  687 	add	a,@r1
      0007A7 FF               [12]  688 	mov	r7,a
      0007A8 A2 A6            [12]  689 	mov	c,_P2_6
      0007AA E4               [12]  690 	clr	a
      0007AB 33               [12]  691 	rlc	a
      0007AC 4F               [12]  692 	orl	a,r7
      0007AD F7               [12]  693 	mov	@r1,a
                                    694 ;	key.c:87: key_buf[key_out][3] = (key_buf[key_out][3] << 1) | KEY_IN_4;
      0007AE E5 55            [12]  695 	mov	a,_key_scan_key_out_65536_28
      0007B0 25 55            [12]  696 	add	a,_key_scan_key_out_65536_28
      0007B2 25 E0            [12]  697 	add	a,acc
      0007B4 24 56            [12]  698 	add	a,#_key_scan_key_buf_65536_28
      0007B6 24 03            [12]  699 	add	a,#0x03
      0007B8 F9               [12]  700 	mov	r1,a
      0007B9 E7               [12]  701 	mov	a,@r1
      0007BA 27               [12]  702 	add	a,@r1
      0007BB FF               [12]  703 	mov	r7,a
      0007BC A2 A7            [12]  704 	mov	c,_P2_7
      0007BE E4               [12]  705 	clr	a
      0007BF 33               [12]  706 	rlc	a
      0007C0 FE               [12]  707 	mov	r6,a
      0007C1 4F               [12]  708 	orl	a,r7
      0007C2 F7               [12]  709 	mov	@r1,a
                                    710 ;	key.c:89: for (i = 0; i < 4; i++)
      0007C3 7F 00            [12]  711 	mov	r7,#0x00
      0007C5                        712 00113$:
                                    713 ;	key.c:91: if ((key_buf[key_out][i] & 0x0F) == 0x00)
      0007C5 E5 55            [12]  714 	mov	a,_key_scan_key_out_65536_28
      0007C7 25 55            [12]  715 	add	a,_key_scan_key_out_65536_28
      0007C9 25 E0            [12]  716 	add	a,acc
      0007CB FE               [12]  717 	mov	r6,a
      0007CC 24 56            [12]  718 	add	a,#_key_scan_key_buf_65536_28
      0007CE 2F               [12]  719 	add	a,r7
      0007CF F9               [12]  720 	mov	r1,a
      0007D0 E7               [12]  721 	mov	a,@r1
      0007D1 FD               [12]  722 	mov	r5,a
      0007D2 54 0F            [12]  723 	anl	a,#0x0f
      0007D4 60 02            [24]  724 	jz	00139$
      0007D6 80 0A            [24]  725 	sjmp	00104$
      0007D8                        726 00139$:
                                    727 ;	key.c:93: key_sta[key_out][i] = 0;
      0007D8 EE               [12]  728 	mov	a,r6
      0007D9 24 31            [12]  729 	add	a,#_key_sta
      0007DB FD               [12]  730 	mov	r5,a
      0007DC 2F               [12]  731 	add	a,r7
      0007DD F8               [12]  732 	mov	r0,a
      0007DE 76 00            [12]  733 	mov	@r0,#0x00
      0007E0 80 1A            [24]  734 	sjmp	00114$
      0007E2                        735 00104$:
                                    736 ;	key.c:95: else if ((key_buf[key_out][i] & 0x0F) == 0x0F)
      0007E2 EE               [12]  737 	mov	a,r6
      0007E3 24 56            [12]  738 	add	a,#_key_scan_key_buf_65536_28
      0007E5 2F               [12]  739 	add	a,r7
      0007E6 F9               [12]  740 	mov	r1,a
      0007E7 87 05            [24]  741 	mov	ar5,@r1
      0007E9 53 05 0F         [24]  742 	anl	ar5,#0x0f
      0007EC 7C 00            [12]  743 	mov	r4,#0x00
      0007EE BD 0F 0B         [24]  744 	cjne	r5,#0x0f,00114$
      0007F1 BC 00 08         [24]  745 	cjne	r4,#0x00,00114$
                                    746 ;	key.c:97: key_sta[key_out][i] = 1;
      0007F4 EE               [12]  747 	mov	a,r6
      0007F5 24 31            [12]  748 	add	a,#_key_sta
      0007F7 FE               [12]  749 	mov	r6,a
      0007F8 2F               [12]  750 	add	a,r7
      0007F9 F8               [12]  751 	mov	r0,a
      0007FA 76 01            [12]  752 	mov	@r0,#0x01
      0007FC                        753 00114$:
                                    754 ;	key.c:89: for (i = 0; i < 4; i++)
      0007FC 0F               [12]  755 	inc	r7
      0007FD BF 04 00         [24]  756 	cjne	r7,#0x04,00142$
      000800                        757 00142$:
      000800 40 C3            [24]  758 	jc	00113$
                                    759 ;	key.c:101: key_out++;
      000802 05 55            [12]  760 	inc	_key_scan_key_out_65536_28
                                    761 ;	key.c:102: key_out = key_out & 0x03;
      000804 53 55 03         [24]  762 	anl	_key_scan_key_out_65536_28,#0x03
                                    763 ;	key.c:103: switch (key_out)
      000807 E5 55            [12]  764 	mov	a,_key_scan_key_out_65536_28
      000809 24 FC            [12]  765 	add	a,#0xff - 0x03
      00080B 40 29            [24]  766 	jc	00115$
      00080D E5 55            [12]  767 	mov	a,_key_scan_key_out_65536_28
      00080F 75 F0 03         [24]  768 	mov	b,#0x03
      000812 A4               [48]  769 	mul	ab
      000813 90 08 17         [24]  770 	mov	dptr,#00145$
      000816 73               [24]  771 	jmp	@a+dptr
      000817                        772 00145$:
      000817 02 08 23         [24]  773 	ljmp	00107$
      00081A 02 08 28         [24]  774 	ljmp	00108$
      00081D 02 08 2D         [24]  775 	ljmp	00109$
      000820 02 08 32         [24]  776 	ljmp	00110$
                                    777 ;	key.c:105: case 0: KEY_OUT_4 = 1; KEY_OUT_1 = 0; break;
      000823                        778 00107$:
                                    779 ;	assignBit
      000823 D2 A0            [12]  780 	setb	_P2_0
                                    781 ;	assignBit
      000825 C2 A3            [12]  782 	clr	_P2_3
                                    783 ;	key.c:106: case 1: KEY_OUT_1 = 1; KEY_OUT_2 = 0; break;
      000827 22               [24]  784 	ret
      000828                        785 00108$:
                                    786 ;	assignBit
      000828 D2 A3            [12]  787 	setb	_P2_3
                                    788 ;	assignBit
      00082A C2 A2            [12]  789 	clr	_P2_2
                                    790 ;	key.c:107: case 2: KEY_OUT_2 = 1; KEY_OUT_3 = 0; break;
      00082C 22               [24]  791 	ret
      00082D                        792 00109$:
                                    793 ;	assignBit
      00082D D2 A2            [12]  794 	setb	_P2_2
                                    795 ;	assignBit
      00082F C2 A1            [12]  796 	clr	_P2_1
                                    797 ;	key.c:108: case 3: KEY_OUT_3 = 1; KEY_OUT_4 = 0; break;
      000831 22               [24]  798 	ret
      000832                        799 00110$:
                                    800 ;	assignBit
      000832 D2 A1            [12]  801 	setb	_P2_1
                                    802 ;	assignBit
      000834 C2 A0            [12]  803 	clr	_P2_0
                                    804 ;	key.c:110: }
      000836                        805 00115$:
                                    806 ;	key.c:111: }
      000836 22               [24]  807 	ret
                                    808 	.area CSEG    (CODE)
                                    809 	.area CONST   (CODE)
      000C56                        810 ___str_0:
      000C56 31 32 33               811 	.ascii "123"
      000C59 00                     812 	.db 0x00
                                    813 	.area XINIT   (CODE)
                                    814 	.area CABS    (ABS,CODE)
