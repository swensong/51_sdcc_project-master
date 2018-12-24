;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module ds1302
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_ds1302_init_time_65536_20
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
	.globl _ds1302_single_write_PARM_2
	.globl _ds1302_byte_write
	.globl _ds1302_byte_read
	.globl _ds1302_single_write
	.globl _ds1302_single_read
	.globl _init_ds1302
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
_ds1302_single_write_PARM_2:
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
;Allocation info for local variables in function 'ds1302_byte_write'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	ds1302.c:4: void ds1302_byte_write(unsigned char dat)
;	-----------------------------------------
;	 function ds1302_byte_write
;	-----------------------------------------
_ds1302_byte_write:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	ds1302.c:8: for (mask = 0x01; mask != 0; mask <<= 1) /* 低位在前，逐位移出 */
	mov	r6,#0x01
00105$:
;	ds1302.c:10: if ((mask & dat) != 0)  /* 首先输出该位的数据 */
	mov	a,r7
	anl	a,r6
	jz	00102$
;	ds1302.c:11: DS1302_IO = 1;
;	assignBit
	setb	_P3_4
	sjmp	00103$
00102$:
;	ds1302.c:13: DS1302_IO = 0;
;	assignBit
	clr	_P3_4
00103$:
;	ds1302.c:14: DS1302_CK = 1;          /* 然后拉高时钟 */
;	assignBit
	setb	_P3_5
;	ds1302.c:15: DS1302_CK = 0;          /* 在拉低时钟，a完成一个位的操作 */
;	assignBit
	clr	_P3_5
;	ds1302.c:8: for (mask = 0x01; mask != 0; mask <<= 1) /* 低位在前，逐位移出 */
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	mov	r6,a
	jnz	00105$
;	ds1302.c:18: DS1302_IO = 1;              /* 最好确保释放IO引脚 */
;	assignBit
	setb	_P3_4
;	ds1302.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_byte_read'
;------------------------------------------------------------
;mask                      Allocated to registers r6 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:22: unsigned char ds1302_byte_read(void)
;	-----------------------------------------
;	 function ds1302_byte_read
;	-----------------------------------------
_ds1302_byte_read:
;	ds1302.c:25: unsigned char dat = 0;
	mov	r7,#0x00
;	ds1302.c:27: for (mask = 0x01; mask != 0; mask <<= 1) /* 地位在前，逐位读取 */
	mov	r6,#0x01
00104$:
;	ds1302.c:29: if (DS1302_IO != 0)     /* 首先读取此时的IO引脚，并设置dat中的反应位 */
	jnb	_P3_4,00102$
;	ds1302.c:31: dat |= mask;
	mov	a,r6
	orl	ar7,a
00102$:
;	ds1302.c:33: DS1302_CK = 1;          /* 然后拉高时钟 */
;	assignBit
	setb	_P3_5
;	ds1302.c:34: DS1302_CK = 0;          /* 再拉低时钟，完成一个位的操作 */
;	assignBit
	clr	_P3_5
;	ds1302.c:27: for (mask = 0x01; mask != 0; mask <<= 1) /* 地位在前，逐位读取 */
	mov	ar5,r6
	mov	a,r5
	add	a,r5
	mov	r6,a
	jnz	00104$
;	ds1302.c:37: return dat;                 /* 最后返回读到的字节数据 */
	mov	dpl,r7
;	ds1302.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_single_write'
;------------------------------------------------------------
;dat                       Allocated with name '_ds1302_single_write_PARM_2'
;reg                       Allocated to registers r7 
;------------------------------------------------------------
;	ds1302.c:41: void ds1302_single_write(unsigned char reg, unsigned char dat)
;	-----------------------------------------
;	 function ds1302_single_write
;	-----------------------------------------
_ds1302_single_write:
	mov	r7,dpl
;	ds1302.c:43: DS1302_CE = 1;              /* 使能片选信号 */
;	assignBit
	setb	_P1_7
;	ds1302.c:44: ds1302_byte_write((reg << 1) | 0x80); /* 发送写寄存器指令 */
	mov	a,r7
	add	a,r7
	mov	r7,a
	rlc	a
	subb	a,acc
	orl	ar7,#0x80
	mov	dpl,r7
	lcall	_ds1302_byte_write
;	ds1302.c:45: ds1302_byte_write(dat);               /* 写入字节数据 */
	mov	dpl,_ds1302_single_write_PARM_2
	lcall	_ds1302_byte_write
;	ds1302.c:46: DS1302_CE = 0;                        /* 使能片选信号 */
;	assignBit
	clr	_P1_7
;	ds1302.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ds1302_single_read'
;------------------------------------------------------------
;reg                       Allocated to registers r7 
;dat                       Allocated to registers 
;------------------------------------------------------------
;	ds1302.c:51: unsigned char ds1302_single_read(unsigned char reg)
;	-----------------------------------------
;	 function ds1302_single_read
;	-----------------------------------------
_ds1302_single_read:
	mov	r7,dpl
;	ds1302.c:55: DS1302_CE = 1;              /* 使能片选信号 */
;	assignBit
	setb	_P1_7
;	ds1302.c:56: ds1302_byte_write((reg << 1)|0x81); /* 发送读寄存器指令 */
	mov	a,r7
	add	a,r7
	mov	r7,a
	rlc	a
	subb	a,acc
	orl	ar7,#0x81
	mov	dpl,r7
	lcall	_ds1302_byte_write
;	ds1302.c:57: dat = ds1302_byte_read();           /* 读取字节数据 */
	lcall	_ds1302_byte_read
;	ds1302.c:58: DS1302_CE = 0;                      /* 除能片选信号 */
;	assignBit
	clr	_P1_7
;	ds1302.c:60: return dat;
;	ds1302.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_ds1302'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	ds1302.c:64: void init_ds1302(void)
;	-----------------------------------------
;	 function init_ds1302
;	-----------------------------------------
_init_ds1302:
;	ds1302.c:71: DS1302_CE = 0;              /* 初始化DS1302通信引脚 */
;	assignBit
	clr	_P1_7
;	ds1302.c:72: DS1302_CK = 0;
;	assignBit
	clr	_P3_5
;	ds1302.c:73: i = ds1302_single_read(0);   /* 读取秒寄存器 */
	mov	dpl,#0x00
	lcall	_ds1302_single_read
	mov	a,dpl
;	ds1302.c:74: if ((i & 0x80) != 0)        /* 由秒寄存器最高位CH的值判断DS1302是否已停止 */
	jnb	acc.7,00106$
;	ds1302.c:76: ds1302_single_write(7, 0x00); /* 撤销写保护以允许写入数据 */
	mov	_ds1302_single_write_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_ds1302_single_write
;	ds1302.c:77: for (i = 0; i < 7; i++)
	mov	r7,#0x00
00104$:
;	ds1302.c:79: ds1302_single_write(i, init_time[i]);
	mov	a,r7
	mov	dptr,#_init_ds1302_init_time_65536_20
	movc	a,@a+dptr
	mov	_ds1302_single_write_PARM_2,a
	mov	dpl,r7
	push	ar7
	lcall	_ds1302_single_write
	pop	ar7
;	ds1302.c:77: for (i = 0; i < 7; i++)
	inc	r7
	cjne	r7,#0x07,00118$
00118$:
	jc	00104$
00106$:
;	ds1302.c:82: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_init_ds1302_init_time_65536_20:
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x12	; 18
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x13	; 19
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)