;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module infrared
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _ir_code
	.globl _ir_flag
	.globl _init_infrared
	.globl _get_high_time
	.globl _get_low_time
	.globl _infrared_scan
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
_ir_flag::
	.ds 1
_ir_code::
	.ds 4
_infrared_scan_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	infrared.c:4: unsigned char ir_flag = 0;      /* 红外接受标志，收到一段正确数据后置1 */
	mov	_ir_flag,#0x00
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
;Allocation info for local variables in function 'init_infrared'
;------------------------------------------------------------
;	infrared.c:8: void init_infrared(void)
;	-----------------------------------------
;	 function init_infrared
;	-----------------------------------------
_init_infrared:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	infrared.c:10: IR_INPUT = 1;               /* 确保红外接收引脚被释放 */
;	assignBit
	setb	_P3_3
;	infrared.c:11: TMOD &= 0x0F;               /* 清零T1的控制位 */
	anl	_TMOD,#0x0f
;	infrared.c:12: TMOD |= 0x10;               /* 配置T1为模式1 */
	mov	r6,_TMOD
	orl	ar6,#0x10
	mov	_TMOD,r6
;	infrared.c:13: TR1 = 0;                    /* 停止T1计数 */
;	assignBit
	clr	_TR1
;	infrared.c:14: ET1 = 0;                    /* 禁止T1中断 */
;	assignBit
	clr	_ET1
;	infrared.c:15: IT1 = 1;                    /* 设置INT1为负边沿触发 */
;	assignBit
	setb	_IT1
;	infrared.c:16: EX1 = 1;                    /* 使能INT1中断 */
;	assignBit
	setb	_EX1
;	infrared.c:17: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_high_time'
;------------------------------------------------------------
;	infrared.c:20: unsigned int get_high_time(void)
;	-----------------------------------------
;	 function get_high_time
;	-----------------------------------------
_get_high_time:
;	infrared.c:22: TH1 = 0;                    /* 清零T1计数初始值 */
	mov	_TH1,#0x00
;	infrared.c:23: TL1 = 0;
	mov	_TL1,#0x00
;	infrared.c:24: TR1 = 1;                    /* 启动T1计数 */
;	assignBit
	setb	_TR1
;	infrared.c:25: while (IR_INPUT)            /* 红外输入引脚为1时循环检测等待，变为0时则结束本循环 */
00103$:
	jnb	_P3_3,00105$
;	infrared.c:27: if (TH1 >= 0x40)
	mov	a,#0x100 - 0x40
	add	a,_TH1
	jnc	00103$
;	infrared.c:29: break;              /* 强制退出循环，是为了避免信号异常时，程序假死在这里 */
00105$:
;	infrared.c:32: TR1 = 0;
;	assignBit
	clr	_TR1
;	infrared.c:34: return (TH1 * 256 + TL1);     /* T1计数值合成16bit整型数，并返回该数 */
	mov	r7,_TH1
	mov	r6,#0x00
	mov	r4,_TL1
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
;	infrared.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_low_time'
;------------------------------------------------------------
;	infrared.c:38: unsigned int get_low_time(void)
;	-----------------------------------------
;	 function get_low_time
;	-----------------------------------------
_get_low_time:
;	infrared.c:40: TH1 = 0;                    /* 清零T1计数初值 */
	mov	_TH1,#0x00
;	infrared.c:41: TL1 = 0;
	mov	_TL1,#0x00
;	infrared.c:42: TR1 = 1;                    /* 启动T1计数 */
;	assignBit
	setb	_TR1
;	infrared.c:43: while (!IR_INPUT)       /* 红外输入引脚为0时循环检测等待，变为1则结束本循环 */
00103$:
	jb	_P3_3,00105$
;	infrared.c:45: if (TH1 >= 0x40)
	mov	a,#0x100 - 0x40
	add	a,_TH1
	jnc	00103$
;	infrared.c:47: break;              /* 强制退出循环，是为了避免信号异常时，程序假死在这里 */
00105$:
;	infrared.c:50: TR1 = 0;
;	assignBit
	clr	_TR1
;	infrared.c:52: return (TH1 * 256 + TL1);     /* T1计数值合成16bit整型数，并返回该数 */
	mov	r7,_TH1
	mov	r6,#0x00
	mov	r4,_TL1
	mov	r5,#0x00
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
;	infrared.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'infrared_scan'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;byt                       Allocated to registers r5 
;time                      Allocated to registers r4 r5 
;sloc0                     Allocated with name '_infrared_scan_sloc0_1_0'
;------------------------------------------------------------
;	infrared.c:55: void infrared_scan(void)
;	-----------------------------------------
;	 function infrared_scan
;	-----------------------------------------
_infrared_scan:
;	infrared.c:62: time = get_low_time();
	lcall	_get_low_time
	mov	r6,dpl
	mov	r7,dph
;	infrared.c:64: if ((time < 7833) || (time > 8755))
	clr	c
	mov	a,r6
	subb	a,#0x99
	mov	a,r7
	subb	a,#0x1e
	jc	00101$
	mov	a,#0x33
	subb	a,r6
	mov	a,#0x22
	subb	a,r7
	jnc	00102$
00101$:
;	infrared.c:66: IE1 = 0;                /* 退出前清零INT1中断标志位 */
;	assignBit
	clr	_IE1
;	infrared.c:67: return;
	ret
00102$:
;	infrared.c:71: time = get_high_time();
	lcall	_get_high_time
	mov	r6,dpl
	mov	r7,dph
;	infrared.c:72: if ((time < 3686) || (time > 4608))
	clr	c
	mov	a,r6
	subb	a,#0x66
	mov	a,r7
	subb	a,#0x0e
	jc	00104$
	clr	a
	subb	a,r6
	mov	a,#0x12
	subb	a,r7
	jnc	00135$
00104$:
;	infrared.c:74: IE1 = 0;
;	assignBit
	clr	_IE1
;	infrared.c:75: return;
	ret
;	infrared.c:79: for (i = 0; i < 4; i++)     /* 循环接收4个字节 */
00135$:
	mov	r7,#0x00
;	infrared.c:81: for (j = 0; j < 8; j++)
00133$:
	mov	r6,#0x00
00120$:
;	infrared.c:84: time = get_low_time();
	push	ar7
	push	ar6
	lcall	_get_low_time
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	infrared.c:85: if ((time < 313) || (time > 718))
	clr	c
	mov	a,r4
	subb	a,#0x39
	mov	a,r5
	subb	a,#0x01
	jc	00107$
	mov	a,#0xce
	subb	a,r4
	mov	a,#0x02
	subb	a,r5
	jnc	00108$
00107$:
;	infrared.c:87: IE1 = 0;
;	assignBit
	clr	_IE1
;	infrared.c:88: return;
	ret
00108$:
;	infrared.c:91: time = get_high_time();
	push	ar7
	push	ar6
	lcall	_get_high_time
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	infrared.c:92: if ((time > 313) && (time < 718))
	clr	c
	mov	a,#0x39
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	jnc	00115$
	clr	c
	mov	a,r4
	subb	a,#0xce
	mov	a,r5
	subb	a,#0x02
	jnc	00115$
;	infrared.c:94: byt >>= 1;
	mov	a,_infrared_scan_sloc0_1_0
	clr	c
	rrc	a
	mov	_infrared_scan_sloc0_1_0,a
	sjmp	00121$
00115$:
;	infrared.c:96: else if ((time > 1345) && (time < 1751))
	clr	c
	mov	a,#0x41
	subb	a,r4
	mov	a,#0x05
	subb	a,r5
	jnc	00111$
	clr	c
	mov	a,r4
	subb	a,#0xd7
	mov	a,r5
	subb	a,#0x06
	jnc	00111$
;	infrared.c:98: byt >>= 1;
	mov	a,_infrared_scan_sloc0_1_0
	clr	c
	rrc	a
	mov	r5,a
;	infrared.c:99: byt |= 0x80;
	mov	r4,#0x00
	orl	ar5,#0x80
	mov	_infrared_scan_sloc0_1_0,r5
	sjmp	00121$
00111$:
;	infrared.c:103: IE1 = 0;
;	assignBit
	clr	_IE1
;	infrared.c:104: return;
	ret
00121$:
;	infrared.c:81: for (j = 0; j < 8; j++)
	inc	r6
	cjne	r6,#0x08,00191$
00191$:
	jc	00120$
;	infrared.c:107: ir_code[i] = byt;
	mov	a,r7
	add	a,#_ir_code
	mov	r0,a
	mov	@r0,_infrared_scan_sloc0_1_0
;	infrared.c:79: for (i = 0; i < 4; i++)     /* 循环接收4个字节 */
	inc	r7
	cjne	r7,#0x04,00193$
00193$:
	jnc	00194$
	ljmp	00133$
00194$:
;	infrared.c:109: ir_flag = 1;
	mov	_ir_flag,#0x01
;	infrared.c:110: IE1 = 0;
;	assignBit
	clr	_IE1
;	infrared.c:111: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
