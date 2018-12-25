;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXINT_ISR
	.globl _interrupt_timer
	.globl _main
	.globl _get_low_time
	.globl _get_high_time
	.globl _init_infrared
	.globl _time0_init
	.globl _seg_infrared_driver
	.globl _seg_show_num
	.globl _seg_index
	.globl _seg_init
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_EXINT_ISR_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_interrupt_timer
	.ds	5
	ljmp	_EXINT_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:6: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:8: seg_init();
	lcall	_seg_init
;	main.c:9: time0_init(1);
	mov	dptr,#0x0001
	lcall	_time0_init
;	main.c:10: init_infrared();
	lcall	_init_infrared
;	main.c:11: EA = 1;
;	assignBit
	setb	_EA
;	main.c:13: seg_show_num(25536);
	mov	dptr,#0x63c0
	lcall	_seg_show_num
;	main.c:15: while (1)
00102$:
;	main.c:17: seg_infrared_driver();
	lcall	_seg_infrared_driver
;	main.c:19: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_timer'
;------------------------------------------------------------
;	main.c:21: void interrupt_timer() __interrupt 1
;	-----------------------------------------
;	 function interrupt_timer
;	-----------------------------------------
_interrupt_timer:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:23: TH0 = T0RH;
	mov	_TH0,_T0RH
;	main.c:24: TL0 = T0RL;
	mov	_TL0,_T0RL
;	main.c:26: seg_index();
	lcall	_seg_index
;	main.c:27: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'EXINT_ISR'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;byt                       Allocated to registers r5 
;time                      Allocated to registers r4 r5 
;sloc0                     Allocated with name '_EXINT_ISR_sloc0_1_0'
;------------------------------------------------------------
;	main.c:30: void EXINT_ISR() __interrupt 2
;	-----------------------------------------
;	 function EXINT_ISR
;	-----------------------------------------
_EXINT_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:37: time = get_low_time();
	lcall	_get_low_time
	mov	r6,dpl
	mov	r7,dph
;	main.c:38: if ((time < 7833) || (time > 8755)) /* 时间判定范围为8.5～9.5ms, */
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
;	main.c:40: IE1 = 0;                /* 推出清零INT1终中断标志 */
;	assignBit
	clr	_IE1
;	main.c:41: return;
	ljmp	00124$
00102$:
;	main.c:44: time = get_high_time();
	lcall	_get_high_time
	mov	r6,dpl
	mov	r7,dph
;	main.c:45: if ((time < 3686) || (time > 4608))  /* 时间判定范围为4.0～5.0ms, */
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
	jnc	00134$
00104$:
;	main.c:47: IE1 = 0;
;	assignBit
	clr	_IE1
;	main.c:48: return;
	ljmp	00124$
;	main.c:51: for (i = 0; i < 4; i++)     /* 循环接受4个字节 */
00134$:
	mov	r7,#0x00
;	main.c:53: for (j = 0; j < 8; j++) /* 循环接受判定每个字节的8个bit */
00132$:
	mov	r6,#0x00
00120$:
;	main.c:56: time = get_low_time();
	push	ar7
	push	ar6
	lcall	_get_low_time
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	main.c:57: if ((time < 313) || (time > 718)) /* 时间判定范围为340～780us */
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
;	main.c:59: IE1 = 0;
;	assignBit
	clr	_IE1
;	main.c:60: return;
	sjmp	00124$
00108$:
;	main.c:64: time = get_high_time();
	push	ar7
	push	ar6
	lcall	_get_high_time
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	main.c:65: if ((time > 313) || (time < 718))  /* 时间判定范围为1460us~1900us */
	clr	c
	mov	a,#0x39
	subb	a,r4
	mov	a,#0x01
	subb	a,r5
	jc	00114$
	mov	a,r4
	subb	a,#0xce
	mov	a,r5
	subb	a,#0x02
	jnc	00115$
00114$:
;	main.c:67: byt >>= 1;                       /* 因低位在前，所以数据右移，高位为0 */
	mov	a,_EXINT_ISR_sloc0_1_0
	clr	c
	rrc	a
	mov	_EXINT_ISR_sloc0_1_0,a
	sjmp	00121$
00115$:
;	main.c:69: else if ((time > 1345) && (time < 1751))
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
;	main.c:71: byt >>= 1;                       /* 因低位在前，所以数据右移，高位为0 */
	mov	a,_EXINT_ISR_sloc0_1_0
	clr	c
	rrc	a
	mov	r5,a
;	main.c:72: byt |= 0x80;                     /* 高位置1 */
	mov	r4,#0x00
	orl	ar5,#0x80
	mov	_EXINT_ISR_sloc0_1_0,r5
	sjmp	00121$
00111$:
;	main.c:76: IE1 = 0;
;	assignBit
	clr	_IE1
;	main.c:77: return;
	sjmp	00124$
00121$:
;	main.c:53: for (j = 0; j < 8; j++) /* 循环接受判定每个字节的8个bit */
	inc	r6
	cjne	r6,#0x08,00186$
00186$:
	jc	00120$
;	main.c:80: ir_code[i] = byt;       /* 接受完一个字节后保存到缓存区 */
	mov	a,r7
	add	a,#_ir_code
	mov	r0,a
	mov	@r0,_EXINT_ISR_sloc0_1_0
;	main.c:51: for (i = 0; i < 4; i++)     /* 循环接受4个字节 */
	inc	r7
	cjne	r7,#0x04,00188$
00188$:
	jnc	00189$
	ljmp	00132$
00189$:
;	main.c:82: ir_flag = 1;                /* 接收完毕后设置标志 */
	mov	_ir_flag,#0x01
;	main.c:83: IE1 = 0;                    /* 退出前清零INT1中断标志 */
;	assignBit
	clr	_IE1
00124$:
;	main.c:84: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
