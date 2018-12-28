;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ds18b20
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_x10_us
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
	.globl _return_behind_data
	.globl _get_18b20_ack
	.globl _write_18b20
	.globl _read_18b20
	.globl _start_18b20
	.globl _get_18b20_temp
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
_read_18b20_dat_65536_19:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'delay_x10_us'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:4: void delay_x10_us(unsigned char t)
;	-----------------------------------------
;	 function delay_x10_us
;	-----------------------------------------
_delay_x10_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	ds18b20.c:6: do {
00101$:
;	ds18b20.c:7: _nop_(); _nop_(); _nop_(); _nop_();
	nop	
	nop	
	nop	
	nop	
;	ds18b20.c:8: _nop_(); _nop_(); _nop_(); _nop_();
	nop	
	nop	
	nop	
	nop	
;	ds18b20.c:9: } while (--t);
	mov	a,r7
	dec	a
	mov	r6,a
	mov	r7,a
	jnz	00101$
;	ds18b20.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'return_behind_data'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:12: unsigned char return_behind_data(unsigned char dat)
;	-----------------------------------------
;	 function return_behind_data
;	-----------------------------------------
_return_behind_data:
	mov	r7,dpl
;	ds18b20.c:14: if (dat == 0x01)
	cjne	r7,#0x01,00122$
;	ds18b20.c:15: return 0xFE;
	mov	dpl,#0xfe
	ret
00122$:
;	ds18b20.c:16: else if (dat == 0x02)
	cjne	r7,#0x02,00119$
;	ds18b20.c:17: return 0xFD;
	mov	dpl,#0xfd
	ret
00119$:
;	ds18b20.c:18: else if (dat == 0x04)
	cjne	r7,#0x04,00116$
;	ds18b20.c:19: return 0xFB;
	mov	dpl,#0xfb
	ret
00116$:
;	ds18b20.c:20: else if (dat == 0x08)
	cjne	r7,#0x08,00113$
;	ds18b20.c:21: return 0xF7;
	mov	dpl,#0xf7
	ret
00113$:
;	ds18b20.c:22: else if (dat == 0x10)
	cjne	r7,#0x10,00110$
;	ds18b20.c:23: return 0xEF;
	mov	dpl,#0xef
	ret
00110$:
;	ds18b20.c:24: else if (dat == 0x20)
	cjne	r7,#0x20,00107$
;	ds18b20.c:25: return 0xDF;
	mov	dpl,#0xdf
	ret
00107$:
;	ds18b20.c:26: else if (dat == 0x40)
	cjne	r7,#0x40,00104$
;	ds18b20.c:27: return 0xBF;
	mov	dpl,#0xbf
	ret
00104$:
;	ds18b20.c:28: else if (dat == 0x80)
	cjne	r7,#0x80,00124$
;	ds18b20.c:29: return 0x7F;
	mov	dpl,#0x7f
00124$:
;	ds18b20.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_18b20_ack'
;------------------------------------------------------------
;ack                       Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:33: unsigned char get_18b20_ack(void)
;	-----------------------------------------
;	 function get_18b20_ack
;	-----------------------------------------
_get_18b20_ack:
;	ds18b20.c:37: EA = 0;                     /* 禁止总中断 */
;	assignBit
	clr	_EA
;	ds18b20.c:38: IO_18B20 = 0;               /* 产生500us复位脉冲 */
;	assignBit
	clr	_P3_2
;	ds18b20.c:39: delay_x10_us(50);
	mov	dpl,#0x32
	lcall	_delay_x10_us
;	ds18b20.c:40: IO_18B20 = 1;
;	assignBit
	setb	_P3_2
;	ds18b20.c:41: delay_x10_us(6);            /* 延时60us */
	mov	dpl,#0x06
	lcall	_delay_x10_us
;	ds18b20.c:42: ack = IO_18B20;
	mov	c,_P3_2
	clr	a
	rlc	a
	mov	r7,a
;	ds18b20.c:43: while (!IO_18B20);
00101$:
	jnb	_P3_2,00101$
;	ds18b20.c:44: EA = 1;
;	assignBit
	setb	_EA
;	ds18b20.c:46: return ack;
	mov	dpl,r7
;	ds18b20.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_18b20'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	ds18b20.c:50: void write_18b20(unsigned char dat)
;	-----------------------------------------
;	 function write_18b20
;	-----------------------------------------
_write_18b20:
	mov	r7,dpl
;	ds18b20.c:54: EA = 0;
;	assignBit
	clr	_EA
;	ds18b20.c:55: for (mask = 0x01; mask != 0; mask <<= 1)
	mov	r6,#0x01
00105$:
;	ds18b20.c:57: IO_18B20 = 0;
;	assignBit
	clr	_P3_2
;	ds18b20.c:58: _nop_();
	nop	
;	ds18b20.c:59: _nop_();
	nop	
;	ds18b20.c:60: if ((mask & dat) == 0)
	mov	a,r7
	anl	a,r6
	jnz	00102$
;	ds18b20.c:61: IO_18B20 = 0;
;	assignBit
	clr	_P3_2
	sjmp	00103$
00102$:
;	ds18b20.c:63: IO_18B20 = 1;
;	assignBit
	setb	_P3_2
00103$:
;	ds18b20.c:64: delay_x10_us(6);
	mov	dpl,#0x06
	push	ar7
	push	ar6
	lcall	_delay_x10_us
	pop	ar6
	pop	ar7
;	ds18b20.c:65: IO_18B20 = 1;           /* 拉高通信引脚 */
;	assignBit
	setb	_P3_2
;	ds18b20.c:55: for (mask = 0x01; mask != 0; mask <<= 1)
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	mov	r6,a
	jnz	00105$
;	ds18b20.c:67: EA = 1;
;	assignBit
	setb	_EA
;	ds18b20.c:68: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_18b20'
;------------------------------------------------------------
;dat                       Allocated with name '_read_18b20_dat_65536_19'
;mask                      Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:70: unsigned char read_18b20(void)
;	-----------------------------------------
;	 function read_18b20
;	-----------------------------------------
_read_18b20:
;	ds18b20.c:75: EA = 0;
;	assignBit
	clr	_EA
;	ds18b20.c:76: for (mask = 0x01; mask != 0; mask <<= 1)
	mov	r7,#0x01
00105$:
;	ds18b20.c:78: IO_18B20 = 0;
;	assignBit
	clr	_P3_2
;	ds18b20.c:79: _nop_();
	nop	
;	ds18b20.c:80: _nop_();
	nop	
;	ds18b20.c:81: IO_18B20 = 1;
;	assignBit
	setb	_P3_2
;	ds18b20.c:82: _nop_();
	nop	
;	ds18b20.c:83: _nop_();
	nop	
;	ds18b20.c:84: if (!IO_18B20)
	jb	_P3_2,00102$
;	ds18b20.c:85: dat &= return_behind_data(mask);
	mov	dpl,r7
	push	ar7
	lcall	_return_behind_data
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	anl	_read_18b20_dat_65536_19,a
	sjmp	00103$
00102$:
;	ds18b20.c:87: dat |= mask;
	mov	a,r7
	orl	_read_18b20_dat_65536_19,a
00103$:
;	ds18b20.c:88: delay_x10_us(6);
	mov	dpl,#0x06
	push	ar7
	lcall	_delay_x10_us
	pop	ar7
;	ds18b20.c:76: for (mask = 0x01; mask != 0; mask <<= 1)
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
	jnz	00105$
;	ds18b20.c:90: EA = 1;
;	assignBit
	setb	_EA
;	ds18b20.c:92: return dat;
	mov	dpl,_read_18b20_dat_65536_19
;	ds18b20.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_18b20'
;------------------------------------------------------------
;ack                       Allocated to registers r6 
;------------------------------------------------------------
;	ds18b20.c:95: unsigned char start_18b20(void)
;	-----------------------------------------
;	 function start_18b20
;	-----------------------------------------
_start_18b20:
;	ds18b20.c:99: ack = get_18b20_ack();
	lcall	_get_18b20_ack
;	ds18b20.c:100: if (ack == 0)               /* 如18B20正确应答，则启动一次转换 */
	mov	a,dpl
	mov	r6,a
	jnz	00102$
;	ds18b20.c:102: write_18b20(0xCC);      /* 跳过ROM操作 */
	mov	dpl,#0xcc
	push	ar6
	lcall	_write_18b20
;	ds18b20.c:103: write_18b20(0x44);      /* 启动一次温度转换 */
	mov	dpl,#0x44
	lcall	_write_18b20
	pop	ar6
00102$:
;	ds18b20.c:106: if (ack == 0)
	mov	a,r6
	jnz	00104$
;	ds18b20.c:107: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	ds18b20.c:109: return 0;
	mov	dpl,#0x00
;	ds18b20.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_18b20_temp'
;------------------------------------------------------------
;temp                      Allocated to registers r5 r6 r7 
;ack                       Allocated to registers r3 
;LSB                       Allocated to registers r4 
;MSB                       Allocated to registers r2 
;------------------------------------------------------------
;	ds18b20.c:112: unsigned char get_18b20_temp(int *temp)
;	-----------------------------------------
;	 function get_18b20_temp
;	-----------------------------------------
_get_18b20_temp:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	ds18b20.c:117: ack = get_18b20_ack();
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_18b20_ack
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	ds18b20.c:118: if (ack == 0)
	mov	a,r4
	mov	r3,a
	jnz	00102$
;	ds18b20.c:120: write_18b20(0xCC);      /* 跳过ROM操作 */
	mov	dpl,#0xcc
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_write_18b20
;	ds18b20.c:121: write_18b20(0xBE);      /* 发送读命令 */
	mov	dpl,#0xbe
	lcall	_write_18b20
;	ds18b20.c:122: LSB = read_18b20();     /* 读低8位 */
	lcall	_read_18b20
	mov	r4,dpl
	pop	ar3
;	ds18b20.c:123: MSB = read_18b20();     /* 读高8位 */
	push	ar4
	push	ar3
	lcall	_read_18b20
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ds18b20.c:124: *temp = ((int)MSB << 8) + LSB; /* 合并为16bit整数 */
	mov	ar1,r2
	mov	ar2,r1
	mov	r1,#0x00
	mov	ar0,r4
	mov	r4,#0x00
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r4
	addc	a,r2
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
00102$:
;	ds18b20.c:127: if (ack == 0)
	mov	a,r3
	jnz	00104$
;	ds18b20.c:128: return 1;
	mov	dpl,#0x01
	ret
00104$:
;	ds18b20.c:130: return 0;
	mov	dpl,#0x00
;	ds18b20.c:131: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
