;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module motor
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
	.globl _beats
	.globl _beat_code
	.globl _start_motor
	.globl _stop_motor
	.globl _motor_scan
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
_beat_code::
	.ds 8
_beats::
	.ds 4
_motor_scan_index_65536_9:
	.ds 1
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
;Allocation info for local variables in function 'motor_scan'
;------------------------------------------------------------
;index                     Allocated with name '_motor_scan_index_65536_9'
;tmp                       Allocated to registers r7 
;------------------------------------------------------------
;	motor.c:24: static unsigned char index = 0; /* 节拍输出索引 */
	mov	_motor_scan_index_65536_9,#0x00
;	motor.c:3: unsigned char beat_code[8] = {  /* 步进电机节拍对应的IO控制代码 */
	mov	_beat_code,#0x0e
	mov	(_beat_code + 0x0001),#0x0c
	mov	(_beat_code + 0x0002),#0x0d
	mov	(_beat_code + 0x0003),#0x09
	mov	(_beat_code + 0x0004),#0x0b
	mov	(_beat_code + 0x0005),#0x03
	mov	(_beat_code + 0x0006),#0x07
	mov	(_beat_code + 0x0007),#0x06
;	motor.c:7: unsigned long beats = 0;        /* 电机转动节拍总数 */
	clr	a
	mov	_beats,a
	mov	(_beats + 1),a
	mov	(_beats + 2),a
	mov	(_beats + 3),a
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
;Allocation info for local variables in function 'start_motor'
;------------------------------------------------------------
;angle                     Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	motor.c:9: void start_motor(unsigned long angle)
;	-----------------------------------------
;	 function start_motor
;	-----------------------------------------
_start_motor:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	motor.c:11: EA = 0;
;	assignBit
	clr	_EA
;	motor.c:12: beats = (angle * 4076) / 360;
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
	mov	dptr,#0x0fec
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__divulong_PARM_2,#0x68
	mov	(__divulong_PARM_2 + 1),#0x01
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	_beats,dpl
	mov	(_beats + 1),dph
	mov	(_beats + 2),b
	mov	(_beats + 3),a
;	motor.c:13: EA = 1;
;	assignBit
	setb	_EA
;	motor.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_motor'
;------------------------------------------------------------
;	motor.c:16: void stop_motor(void)
;	-----------------------------------------
;	 function stop_motor
;	-----------------------------------------
_stop_motor:
;	motor.c:18: beats = 0;
	clr	a
	mov	_beats,a
	mov	(_beats + 1),a
	mov	(_beats + 2),a
	mov	(_beats + 3),a
;	motor.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'motor_scan'
;------------------------------------------------------------
;index                     Allocated with name '_motor_scan_index_65536_9'
;tmp                       Allocated to registers r7 
;------------------------------------------------------------
;	motor.c:21: void motor_scan(void)
;	-----------------------------------------
;	 function motor_scan
;	-----------------------------------------
_motor_scan:
;	motor.c:25: if (beats != 0)             /* 节拍数不为0则产生一个驱动节拍 */
	mov	a,_beats
	orl	a,(_beats + 1)
	orl	a,(_beats + 2)
	orl	a,(_beats + 3)
	jz	00102$
;	motor.c:27: tmp = P1;               /* 用tmp把P1口当前值缓存 */
	mov	a,_P1
;	motor.c:28: tmp = tmp & 0xF0;       /* 用＆操作清零低4位 */
	anl	a,#0xf0
	mov	r7,a
;	motor.c:29: tmp = tmp | beat_code[index]; /* 用｜操作把节拍写到低4位 */
	mov	a,_motor_scan_index_65536_9
	add	a,#_beat_code
	mov	r1,a
	mov	a,@r1
	orl	a,r7
	mov	_P1,a
;	motor.c:31: index++;                      /* 节拍输出索引递增 */
	inc	_motor_scan_index_65536_9
;	motor.c:32: index = index & 0x07;         /* 用＆操作实现到8归零 */
	anl	_motor_scan_index_65536_9,#0x07
;	motor.c:33: beats--;
	dec	_beats
	mov	a,#0xff
	cjne	a,_beats,00112$
	dec	(_beats + 1)
	cjne	a,(_beats + 1),00112$
	dec	(_beats + 2)
	cjne	a,(_beats + 2),00112$
	dec	(_beats + 3)
00112$:
	ret
00102$:
;	motor.c:37: P1 = P1 | 0x0F;
	mov	r6,_P1
	orl	ar6,#0x0f
	mov	_P1,r6
;	motor.c:39: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
