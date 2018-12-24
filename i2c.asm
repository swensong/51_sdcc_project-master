;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _i2c_write
	.globl _return_behind_data
	.globl _i2c_stop
	.globl _i2c_start
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
	.globl _e2_write_PARM_3
	.globl _e2_write_PARM_2
	.globl _e2_read_PARM_3
	.globl _e2_read_PARM_2
	.globl _e2_write_byte_PARM_2
	.globl _i2c_read_nak
	.globl _i2c_read_ack
	.globl _e2_read_byte
	.globl _e2_write_byte
	.globl _e2_read
	.globl _e2_write
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
_i2c_read_nak_dat_65536_27:
	.ds 1
_i2c_read_ack_dat_65536_35:
	.ds 1
_e2_write_byte_PARM_2:
	.ds 1
_e2_read_PARM_2:
	.ds 1
_e2_read_PARM_3:
	.ds 1
_e2_write_PARM_2:
	.ds 1
_e2_write_PARM_3:
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
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:3: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:5: I2C_SDA = 1;                /* 首先确保SDA，SCL都是高电平 */
;	assignBit
	setb	_P3_6
;	i2c.c:6: I2C_SCL = 1;
;	assignBit
	setb	_P3_7
;	i2c.c:7: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:8: I2C_SDA = 0;                /* 先拉低SDA */
;	assignBit
	clr	_P3_6
;	i2c.c:9: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:10: I2C_SCL = 0;                /* 再拉低SCL */
;	assignBit
	clr	_P3_7
;	i2c.c:11: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:13: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:15: I2C_SDA = 0;                /* 首先确保SDA，SCL都是低电平 */
;	assignBit
	clr	_P3_6
;	i2c.c:16: I2C_SCL = 0;
;	assignBit
	clr	_P3_7
;	i2c.c:17: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:18: I2C_SCL = 1;                /* 再拉低SDA */
;	assignBit
	setb	_P3_7
;	i2c.c:19: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:20: I2C_SDA = 1;                /* 先拉低SCL */
;	assignBit
	setb	_P3_6
;	i2c.c:21: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'return_behind_data'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:24: unsigned char return_behind_data(unsigned char dat)
;	-----------------------------------------
;	 function return_behind_data
;	-----------------------------------------
_return_behind_data:
	mov	r7,dpl
;	i2c.c:26: if (dat == 0x01)
	cjne	r7,#0x01,00122$
;	i2c.c:27: return 0xFE;
	mov	dpl,#0xfe
	ret
00122$:
;	i2c.c:28: else if (dat == 0x02)
	cjne	r7,#0x02,00119$
;	i2c.c:29: return 0xFD;
	mov	dpl,#0xfd
	ret
00119$:
;	i2c.c:30: else if (dat == 0x04)
	cjne	r7,#0x04,00116$
;	i2c.c:31: return 0xFB;
	mov	dpl,#0xfb
	ret
00116$:
;	i2c.c:32: else if (dat == 0x08)
	cjne	r7,#0x08,00113$
;	i2c.c:33: return 0xF7;
	mov	dpl,#0xf7
	ret
00113$:
;	i2c.c:34: else if (dat == 0x10)
	cjne	r7,#0x10,00110$
;	i2c.c:35: return 0xEF;
	mov	dpl,#0xef
	ret
00110$:
;	i2c.c:36: else if (dat == 0x20)
	cjne	r7,#0x20,00107$
;	i2c.c:37: return 0xDF;
	mov	dpl,#0xdf
	ret
00107$:
;	i2c.c:38: else if (dat == 0x40)
	cjne	r7,#0x40,00104$
;	i2c.c:39: return 0xBF;
	mov	dpl,#0xbf
	ret
00104$:
;	i2c.c:40: else if (dat == 0x80)
	cjne	r7,#0x80,00124$
;	i2c.c:41: return 0x7F;
	mov	dpl,#0x7f
00124$:
;	i2c.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;ack                       Allocated to registers r7 
;mask                      Allocated to registers r6 
;------------------------------------------------------------
;	i2c.c:46: unsigned char i2c_write(unsigned char dat)
;	-----------------------------------------
;	 function i2c_write
;	-----------------------------------------
_i2c_write:
	mov	r7,dpl
;	i2c.c:51: for (mask = 0x80; mask != 0; mask >>= 1) /* 从高位到低位依次进行 */
	mov	r6,#0x80
00108$:
;	i2c.c:53: if ((mask & dat) == 0)
	mov	a,r7
	anl	a,r6
	jnz	00102$
;	i2c.c:54: I2C_SDA = 0;
;	assignBit
	clr	_P3_6
	sjmp	00103$
00102$:
;	i2c.c:56: I2C_SDA = 1;
;	assignBit
	setb	_P3_6
00103$:
;	i2c.c:57: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:58: I2C_SCL = 1;            /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:59: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:60: I2C_SCL = 0;            /* 再拉低SCL，完成一个位周期 */
;	assignBit
	clr	_P3_7
;	i2c.c:51: for (mask = 0x80; mask != 0; mask >>= 1) /* 从高位到低位依次进行 */
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	jnz	00108$
;	i2c.c:62: I2C_SDA = 1;                /* 8位数据发送完成后，主机释放SDA，以检测从机应答 */
;	assignBit
	setb	_P3_6
;	i2c.c:63: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:64: I2C_SCL = 1;                /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:65: ack = I2C_SDA;              /* 读取此时的SDA的值，即为从机的应答值 */
	mov	c,_P3_6
	clr	a
	rlc	a
	mov	r7,a
;	i2c.c:66: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:67: I2C_SCL = 0;                /* 再拉低SCL完成应答位，并保持住总线 */
;	assignBit
	clr	_P3_7
;	i2c.c:69: if (ack == 1)
	cjne	r7,#0x01,00106$
;	i2c.c:70: return 0;
	mov	dpl,#0x00
	ret
00106$:
;	i2c.c:72: return 1;
	mov	dpl,#0x01
;	i2c.c:74: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_nak'
;------------------------------------------------------------
;mask                      Allocated to registers r7 
;dat                       Allocated with name '_i2c_read_nak_dat_65536_27'
;------------------------------------------------------------
;	i2c.c:77: unsigned char i2c_read_nak(void)
;	-----------------------------------------
;	 function i2c_read_nak
;	-----------------------------------------
_i2c_read_nak:
;	i2c.c:82: I2C_SDA = 1;                /* 首先确保主机释放SDA */
;	assignBit
	setb	_P3_6
;	i2c.c:83: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	r7,#0x80
00105$:
;	i2c.c:85: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:86: I2C_SCL = 1;            /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:87: if (I2C_SDA == 0)       /* 读取SDA的值 */
	jb	_P3_6,00102$
;	i2c.c:88: dat &= return_behind_data(mask);       /* 为0时，dat中对应位清零 */
	mov	dpl,r7
	push	ar7
	lcall	_return_behind_data
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	anl	_i2c_read_nak_dat_65536_27,a
	sjmp	00103$
00102$:
;	i2c.c:90: dat |= mask;        /* 为1时，dat中对应位置1 */
	mov	a,r7
	orl	_i2c_read_nak_dat_65536_27,a
00103$:
;	i2c.c:91: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:92: I2C_SCL = 0;            /* 再拉低SCL，以使从机发送出下一位 */
;	assignBit
	clr	_P3_7
;	i2c.c:83: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	jnz	00105$
;	i2c.c:94: I2C_SDA = 1;                /* 8位数据发送完后，拉高SDA，发送非应答信号 */
;	assignBit
	setb	_P3_6
;	i2c.c:95: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:96: I2C_SCL = 1;                /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:97: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:98: I2C_SCL = 0;                /* 再拉低SCL完成非应答位，并保持住总线 */
;	assignBit
	clr	_P3_7
;	i2c.c:100: return dat;
	mov	dpl,_i2c_read_nak_dat_65536_27
;	i2c.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_ack'
;------------------------------------------------------------
;mask                      Allocated to registers r7 
;dat                       Allocated with name '_i2c_read_ack_dat_65536_35'
;------------------------------------------------------------
;	i2c.c:104: unsigned char i2c_read_ack(void)
;	-----------------------------------------
;	 function i2c_read_ack
;	-----------------------------------------
_i2c_read_ack:
;	i2c.c:109: I2C_SDA = 1;                /* 首先确保主机释放SDA */
;	assignBit
	setb	_P3_6
;	i2c.c:110: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	r7,#0x80
00105$:
;	i2c.c:112: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:113: I2C_SCL = 1;            /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:114: if (I2C_SDA == 0)       /* 读取SDA的值 */
	jb	_P3_6,00102$
;	i2c.c:115: dat &= return_behind_data(mask);       /* 为0时，dat中对应位清零 */
	mov	dpl,r7
	push	ar7
	lcall	_return_behind_data
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	anl	_i2c_read_ack_dat_65536_35,a
	sjmp	00103$
00102$:
;	i2c.c:117: dat |= mask;        /* 为1时，dat中对应位置1 */
	mov	a,r7
	orl	_i2c_read_ack_dat_65536_35,a
00103$:
;	i2c.c:118: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:119: I2C_SCL = 0;            /* 再拉低SCL，以使从机发送出下一位 */
;	assignBit
	clr	_P3_7
;	i2c.c:110: for (mask = 0x80; mask != 0; mask >>= 1)
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	jnz	00105$
;	i2c.c:121: I2C_SDA = 0;                /* 8位数据发送完后，拉高SDA，发送非应答信号 */
;	assignBit
	clr	_P3_6
;	i2c.c:122: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:123: I2C_SCL = 1;                /* 拉高SCL */
;	assignBit
	setb	_P3_7
;	i2c.c:124: I2CDelay();
	nop	
	nop	
	nop	
	nop	
;	i2c.c:125: I2C_SCL = 0;                /* 再拉低SCL完成非应答位，并保持住总线 */
;	assignBit
	clr	_P3_7
;	i2c.c:127: return dat;
	mov	dpl,_i2c_read_ack_dat_65536_35
;	i2c.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'e2_read_byte'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:131: unsigned char e2_read_byte(unsigned char addr)
;	-----------------------------------------
;	 function e2_read_byte
;	-----------------------------------------
_e2_read_byte:
	mov	r7,dpl
;	i2c.c:135: i2c_start();
	push	ar7
	lcall	_i2c_start
;	i2c.c:136: i2c_write(0x50 << 1);       /* 寻址器件，后续为写操作 */
	mov	dpl,#0xa0
	lcall	_i2c_write
	pop	ar7
;	i2c.c:137: i2c_write(addr);            /* 写入存储地址 */
	mov	dpl,r7
	lcall	_i2c_write
;	i2c.c:138: i2c_start();                /* 发送重复启动信号 */
	lcall	_i2c_start
;	i2c.c:139: i2c_write((0x50 << 1) | 0x01); /* 寻址器件，后续为读操作 */
	mov	dpl,#0xa1
	lcall	_i2c_write
;	i2c.c:140: dat = i2c_read_nak();          /* 读取一个字节数据 */
	lcall	_i2c_read_nak
	mov	r7,dpl
;	i2c.c:141: i2c_stop();
	push	ar7
	lcall	_i2c_stop
	pop	ar7
;	i2c.c:143: return dat;
	mov	dpl,r7
;	i2c.c:144: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'e2_write_byte'
;------------------------------------------------------------
;dat                       Allocated with name '_e2_write_byte_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:146: void e2_write_byte(unsigned char addr, unsigned char dat)
;	-----------------------------------------
;	 function e2_write_byte
;	-----------------------------------------
_e2_write_byte:
	mov	r7,dpl
;	i2c.c:148: i2c_start();
	push	ar7
	lcall	_i2c_start
;	i2c.c:149: i2c_write(0x50 << 1);       /* 寻址器件，后续为写操作 */
	mov	dpl,#0xa0
	lcall	_i2c_write
	pop	ar7
;	i2c.c:150: i2c_write(addr);            /* 写入存储地址 */
	mov	dpl,r7
	lcall	_i2c_write
;	i2c.c:151: i2c_write(dat);             /* 写入一个字节数据 */
	mov	dpl,_e2_write_byte_PARM_2
	lcall	_i2c_write
;	i2c.c:152: i2c_stop();
;	i2c.c:153: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'e2_read'
;------------------------------------------------------------
;addr                      Allocated with name '_e2_read_PARM_2'
;len                       Allocated with name '_e2_read_PARM_3'
;buf                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	i2c.c:156: void e2_read(unsigned char *buf, unsigned char addr, unsigned char len)
;	-----------------------------------------
;	 function e2_read
;	-----------------------------------------
_e2_read:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	i2c.c:158: do {                        /* 用寻址操作查询当前是否可进行读写操作 */
00103$:
;	i2c.c:159: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_start
;	i2c.c:160: if (i2c_write(0x50 << 1)) /* 应答则跳出循环，非应答则进行下一次查询 */
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00105$
;	i2c.c:164: i2c_stop();
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_stop
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:165: } while (1);
	sjmp	00103$
00105$:
;	i2c.c:166: i2c_write(addr);            /* 写入起始地址 */
	mov	dpl,_e2_read_PARM_2
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_write
;	i2c.c:167: i2c_start();                /* 发送重复启动信号 */
	lcall	_i2c_start
;	i2c.c:168: i2c_write((0x50 << 1) | 0x01); /* 寻址器件，后续为读信号 */
	mov	dpl,#0xa1
	lcall	_i2c_write
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:169: while (len > 1)                /* 连续读取len-1个字节 */
	mov	r4,_e2_read_PARM_3
00106$:
	mov	a,r4
	add	a,#0xff - 0x01
	jnc	00108$
;	i2c.c:171: *buf++ = i2c_read_ack(); /* 最后字节之前为读取操作+应答 */
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_read_ack
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	i2c.c:172: len--;
	dec	r4
	sjmp	00106$
00108$:
;	i2c.c:174: *buf = i2c_read_nak();      /* 最后一个字节为读取操作+非应答 */
	push	ar7
	push	ar6
	push	ar5
	lcall	_i2c_read_nak
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	i2c.c:175: i2c_stop();
;	i2c.c:176: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'e2_write'
;------------------------------------------------------------
;addr                      Allocated with name '_e2_write_PARM_2'
;len                       Allocated with name '_e2_write_PARM_3'
;buf                       Allocated to registers 
;------------------------------------------------------------
;	i2c.c:179: void e2_write(unsigned char *buf, unsigned char addr, unsigned char len)
;	-----------------------------------------
;	 function e2_write
;	-----------------------------------------
_e2_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	i2c.c:181: while (len--)
	mov	r4,_e2_write_PARM_2
	mov	r3,_e2_write_PARM_3
00106$:
	mov	ar2,r3
	dec	r3
	mov	a,r2
	jnz	00124$
	ret
00124$:
;	i2c.c:183: do {                    /* 用寻址操作查询当前是否可进行读写操作 */
00103$:
;	i2c.c:184: i2c_start();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_start
;	i2c.c:185: if (i2c_write(0x50 << 1)) /* 应答则跳出循环，非应答则进行下一次查询 */
	mov	dpl,#0xa0
	lcall	_i2c_write
	mov	a,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00103$
;	i2c.c:190: i2c_write(addr++);      /* 写入起始地址 */
	mov	dpl,r4
	inc	r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:191: i2c_write(*buf++);      /* 写入一个字节数据 */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2c_write
;	i2c.c:192: i2c_stop();             /* 结束写操作，以等待写入完成 */
	lcall	_i2c_stop
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:194: }
	ljmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
