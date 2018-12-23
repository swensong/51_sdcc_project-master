;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module key
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_send
	.globl _seg_show_num
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _key_sta
	.globl _key_code_map
	.globl _key_action
	.globl _key_driver
	.globl _key_scan
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_key_code_map::
	.ds 16
_key_sta::
	.ds 16
_key_action_show_num_65536_12:
	.ds 2
_key_driver_back_up_65536_21:
	.ds 16
_key_driver_i_65536_21:
	.ds 1
_key_driver_j_65536_21:
	.ds 1
_key_scan_key_out_65536_28:
	.ds 1
_key_scan_key_buf_65536_28:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'key_action'
;------------------------------------------------------------
;show_num                  Allocated with name '_key_action_show_num_65536_12'
;key_code                  Allocated to registers r7 
;------------------------------------------------------------
;	key.c:18: static unsigned int show_num = 0;
	clr	a
	mov	_key_action_show_num_65536_12,a
	mov	(_key_action_show_num_65536_12 + 1),a
;------------------------------------------------------------
;Allocation info for local variables in function 'key_driver'
;------------------------------------------------------------
;back_up                   Allocated with name '_key_driver_back_up_65536_21'
;i                         Allocated with name '_key_driver_i_65536_21'
;j                         Allocated with name '_key_driver_j_65536_21'
;------------------------------------------------------------
;	key.c:56: static unsigned char back_up[4][4] = { /* 按键值备份，保留前一次的值 */
	mov	_key_driver_back_up_65536_21,#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0001),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0002),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0003),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0004),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0005),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0006),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0007),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0008),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x0009),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000a),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000b),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000c),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000d),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000e),#0x01
	mov	(_key_driver_back_up_65536_21 + 0x000f),#0x01
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key_out                   Allocated with name '_key_scan_key_out_65536_28'
;key_buf                   Allocated with name '_key_scan_key_buf_65536_28'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	key.c:77: static unsigned char key_out = 0;
	mov	_key_scan_key_out_65536_28,#0x00
;	key.c:78: static unsigned char key_buf[4][4] = {
	mov	_key_scan_key_buf_65536_28,#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0001),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0002),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0003),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0004),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0005),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0006),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0007),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0008),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x0009),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000a),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000b),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000c),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000d),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000e),#0xff
	mov	(_key_scan_key_buf_65536_28 + 0x000f),#0xff
;	key.c:5: unsigned char key_code_map[4][4] = {
	mov	_key_code_map,#0x31
	mov	(_key_code_map + 0x0001),#0x32
	mov	(_key_code_map + 0x0002),#0x33
	mov	(_key_code_map + 0x0003),#0x24
	mov	(_key_code_map + 0x0004),#0x34
	mov	(_key_code_map + 0x0005),#0x35
	mov	(_key_code_map + 0x0006),#0x36
	mov	(_key_code_map + 0x0007),#0x25
	mov	(_key_code_map + 0x0008),#0x37
	mov	(_key_code_map + 0x0009),#0x38
	mov	(_key_code_map + 0x000a),#0x39
	mov	(_key_code_map + 0x000b),#0x28
	mov	(_key_code_map + 0x000c),#0x30
	mov	(_key_code_map + 0x000d),#0x1b
	mov	(_key_code_map + 0x000e),#0x0d
	mov	(_key_code_map + 0x000f),#0x27
;	key.c:12: unsigned char key_sta[4][4] = { /* 全部矩阵按键的当前状态 */
	mov	_key_sta,#0x01
	mov	(_key_sta + 0x0001),#0x01
	mov	(_key_sta + 0x0002),#0x01
	mov	(_key_sta + 0x0003),#0x01
	mov	(_key_sta + 0x0004),#0x01
	mov	(_key_sta + 0x0005),#0x01
	mov	(_key_sta + 0x0006),#0x01
	mov	(_key_sta + 0x0007),#0x01
	mov	(_key_sta + 0x0008),#0x01
	mov	(_key_sta + 0x0009),#0x01
	mov	(_key_sta + 0x000a),#0x01
	mov	(_key_sta + 0x000b),#0x01
	mov	(_key_sta + 0x000c),#0x01
	mov	(_key_sta + 0x000d),#0x01
	mov	(_key_sta + 0x000e),#0x01
	mov	(_key_sta + 0x000f),#0x01
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'key_action'
;------------------------------------------------------------
;show_num                  Allocated with name '_key_action_show_num_65536_12'
;key_code                  Allocated to registers r7 
;------------------------------------------------------------
;	key.c:16: void key_action(unsigned char key_code)
;	-----------------------------------------
;	 function key_action
;	-----------------------------------------
_key_action:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	key.c:20: if ((key_code >= 0x30) && (key_code <= 0x39)) /* 输入0～9 */
	cjne	r7,#0x30,00156$
00156$:
	jc	00119$
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00119$
;	key.c:22: show_num = key_code - 0x30;
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,#0xd0
	mov	_key_action_show_num_65536_12,a
	mov	a,r6
	addc	a,#0xff
	mov	(_key_action_show_num_65536_12 + 1),a
	ljmp	00120$
00119$:
;	key.c:24: else if (key_code == 0x24)
	cjne	r7,#0x24,00116$
;	key.c:26: show_num++;
	inc	_key_action_show_num_65536_12
	clr	a
	cjne	a,_key_action_show_num_65536_12,00161$
	inc	(_key_action_show_num_65536_12 + 1)
00161$:
	ljmp	00120$
00116$:
;	key.c:28: else if (key_code == 0x25)
	cjne	r7,#0x25,00113$
;	key.c:30: show_num = show_num*10;
	mov	__mulint_PARM_2,_key_action_show_num_65536_12
	mov	(__mulint_PARM_2 + 1),(_key_action_show_num_65536_12 + 1)
	mov	dptr,#0x000a
	lcall	__mulint
	mov	_key_action_show_num_65536_12,dpl
	mov	(_key_action_show_num_65536_12 + 1),dph
	sjmp	00120$
00113$:
;	key.c:32: else if (key_code == 0x28)
	cjne	r7,#0x28,00110$
;	key.c:34: show_num--;
	dec	_key_action_show_num_65536_12
	mov	a,#0xff
	cjne	a,_key_action_show_num_65536_12,00166$
	dec	(_key_action_show_num_65536_12 + 1)
00166$:
	sjmp	00120$
00110$:
;	key.c:36: else if (key_code == 0x27)
	cjne	r7,#0x27,00107$
;	key.c:38: show_num = show_num/10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_key_action_show_num_65536_12
	mov	dph,(_key_action_show_num_65536_12 + 1)
	lcall	__divuint
	mov	_key_action_show_num_65536_12,dpl
	mov	(_key_action_show_num_65536_12 + 1),dph
	sjmp	00120$
00107$:
;	key.c:40: else if (key_code == 0x0D)
	cjne	r7,#0x0d,00104$
;	key.c:42: show_num = 5120;
	mov	_key_action_show_num_65536_12,#0x00
	mov	(_key_action_show_num_65536_12 + 1),#0x14
	sjmp	00120$
00104$:
;	key.c:44: else if (key_code == 0x1B)  /* ESC按键，电机控制按键 */
	cjne	r7,#0x1b,00120$
;	key.c:46: show_num = 0;
	clr	a
	mov	_key_action_show_num_65536_12,a
	mov	(_key_action_show_num_65536_12 + 1),a
;	key.c:47: uart_send("123", 3);
	mov	_uart_send_PARM_2,#0x03
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_uart_send
00120$:
;	key.c:50: seg_show_num(show_num);
	mov	dpl,_key_action_show_num_65536_12
	mov	dph,(_key_action_show_num_65536_12 + 1)
;	key.c:51: }
	ljmp	_seg_show_num
;------------------------------------------------------------
;Allocation info for local variables in function 'key_driver'
;------------------------------------------------------------
;back_up                   Allocated with name '_key_driver_back_up_65536_21'
;i                         Allocated with name '_key_driver_i_65536_21'
;j                         Allocated with name '_key_driver_j_65536_21'
;------------------------------------------------------------
;	key.c:53: void key_driver(void)
;	-----------------------------------------
;	 function key_driver
;	-----------------------------------------
_key_driver:
;	key.c:60: for (i = 0; i < 4; i++)
	mov	_key_driver_i_65536_21,#0x00
;	key.c:62: for (j = 0; j < 4; j++)
00115$:
	mov	a,_key_driver_i_65536_21
	add	a,_key_driver_i_65536_21
	add	a,acc
	mov	r6,a
	mov	r5,a
	add	a,#_key_driver_back_up_65536_21
	mov	r4,a
	mov	a,r6
	add	a,#_key_sta
	mov	r3,a
	mov	_key_driver_j_65536_21,#0x00
00107$:
;	key.c:64: if (back_up[i][j] != key_sta[i][j])
	mov	a,_key_driver_j_65536_21
	add	a,r4
	mov	r1,a
	mov	a,_key_driver_j_65536_21
	add	a,r3
	mov	r0,a
	mov	ar7,@r1
	mov	ar2,@r0
	mov	a,r7
	cjne	a,ar2,00135$
	sjmp	00104$
00135$:
;	key.c:66: if (key_sta[i][j] == 1)
	mov	a,r5
	add	a,#_key_sta
	add	a,_key_driver_j_65536_21
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x01,00104$
;	key.c:67: key_action(key_code_map[i][j]);
	mov	a,r5
	add	a,#_key_code_map
	add	a,_key_driver_j_65536_21
	mov	r1,a
	mov	dpl,@r1
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_key_action
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
00104$:
;	key.c:69: back_up[i][j] = key_sta[i][j];
	mov	a,r6
	add	a,#_key_driver_back_up_65536_21
	add	a,_key_driver_j_65536_21
	mov	r1,a
	mov	a,r6
	add	a,#_key_sta
	add	a,_key_driver_j_65536_21
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
;	key.c:62: for (j = 0; j < 4; j++)
	inc	_key_driver_j_65536_21
	mov	a,#0x100 - 0x04
	add	a,_key_driver_j_65536_21
	jnc	00107$
;	key.c:60: for (i = 0; i < 4; i++)
	inc	_key_driver_i_65536_21
	mov	a,#0x100 - 0x04
	add	a,_key_driver_i_65536_21
	jc	00139$
	ljmp	00115$
00139$:
;	key.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_scan'
;------------------------------------------------------------
;key_out                   Allocated with name '_key_scan_key_out_65536_28'
;key_buf                   Allocated with name '_key_scan_key_buf_65536_28'
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	key.c:74: void key_scan(void)
;	-----------------------------------------
;	 function key_scan
;	-----------------------------------------
_key_scan:
;	key.c:84: key_buf[key_out][0] = (key_buf[key_out][0] << 1) | KEY_IN_1;
	mov	a,_key_scan_key_out_65536_28
	add	a,_key_scan_key_out_65536_28
	add	a,acc
	add	a,#_key_scan_key_buf_65536_28
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_4
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	key.c:85: key_buf[key_out][1] = (key_buf[key_out][1] << 1) | KEY_IN_2;
	mov	a,_key_scan_key_out_65536_28
	add	a,_key_scan_key_out_65536_28
	add	a,acc
	add	a,#_key_scan_key_buf_65536_28
	inc	a
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_5
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	key.c:86: key_buf[key_out][2] = (key_buf[key_out][2] << 1) | KEY_IN_3;
	mov	a,_key_scan_key_out_65536_28
	add	a,_key_scan_key_out_65536_28
	add	a,acc
	add	a,#_key_scan_key_buf_65536_28
	add	a,#0x02
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_6
	clr	a
	rlc	a
	orl	a,r7
	mov	@r1,a
;	key.c:87: key_buf[key_out][3] = (key_buf[key_out][3] << 1) | KEY_IN_4;
	mov	a,_key_scan_key_out_65536_28
	add	a,_key_scan_key_out_65536_28
	add	a,acc
	add	a,#_key_scan_key_buf_65536_28
	add	a,#0x03
	mov	r1,a
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	c,_P2_7
	clr	a
	rlc	a
	mov	r6,a
	orl	a,r7
	mov	@r1,a
;	key.c:89: for (i = 0; i < 4; i++)
	mov	r7,#0x00
00113$:
;	key.c:91: if ((key_buf[key_out][i] & 0x0F) == 0x00)
	mov	a,_key_scan_key_out_65536_28
	add	a,_key_scan_key_out_65536_28
	add	a,acc
	mov	r6,a
	add	a,#_key_scan_key_buf_65536_28
	add	a,r7
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	anl	a,#0x0f
	jz	00139$
	sjmp	00104$
00139$:
;	key.c:93: key_sta[key_out][i] = 0;
	mov	a,r6
	add	a,#_key_sta
	mov	r5,a
	add	a,r7
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00114$
00104$:
;	key.c:95: else if ((key_buf[key_out][i] & 0x0F) == 0x0F)
	mov	a,r6
	add	a,#_key_scan_key_buf_65536_28
	add	a,r7
	mov	r1,a
	mov	ar5,@r1
	anl	ar5,#0x0f
	mov	r4,#0x00
	cjne	r5,#0x0f,00114$
	cjne	r4,#0x00,00114$
;	key.c:97: key_sta[key_out][i] = 1;
	mov	a,r6
	add	a,#_key_sta
	mov	r6,a
	add	a,r7
	mov	r0,a
	mov	@r0,#0x01
00114$:
;	key.c:89: for (i = 0; i < 4; i++)
	inc	r7
	cjne	r7,#0x04,00142$
00142$:
	jc	00113$
;	key.c:101: key_out++;
	inc	_key_scan_key_out_65536_28
;	key.c:102: key_out = key_out & 0x03;
	anl	_key_scan_key_out_65536_28,#0x03
;	key.c:103: switch (key_out)
	mov	a,_key_scan_key_out_65536_28
	add	a,#0xff - 0x03
	jc	00115$
	mov	a,_key_scan_key_out_65536_28
	mov	b,#0x03
	mul	ab
	mov	dptr,#00145$
	jmp	@a+dptr
00145$:
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
	ljmp	00110$
;	key.c:105: case 0: KEY_OUT_4 = 1; KEY_OUT_1 = 0; break;
00107$:
;	assignBit
	setb	_P2_0
;	assignBit
	clr	_P2_3
;	key.c:106: case 1: KEY_OUT_1 = 1; KEY_OUT_2 = 0; break;
	ret
00108$:
;	assignBit
	setb	_P2_3
;	assignBit
	clr	_P2_2
;	key.c:107: case 2: KEY_OUT_2 = 1; KEY_OUT_3 = 0; break;
	ret
00109$:
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_1
;	key.c:108: case 3: KEY_OUT_3 = 1; KEY_OUT_4 = 0; break;
	ret
00110$:
;	assignBit
	setb	_P2_1
;	assignBit
	clr	_P2_0
;	key.c:110: }
00115$:
;	key.c:111: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "123"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)