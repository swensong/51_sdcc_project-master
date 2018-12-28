;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (Linux)
;--------------------------------------------------------
	.module seg
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
	.globl _i
	.globl _led_buff
	.globl _led_char
	.globl _seg_show_num
	.globl _seg_init
	.globl _seg_driver
	.globl _seg_index
	.globl _seg_infrared_driver
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
_led_char::
	.ds 16
_led_buff::
	.ds 6
_i::
	.ds 1
_seg_index_i_65536_17:
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
;------------------------------------------------------------
;Allocation info for local variables in function 'seg_index'
;------------------------------------------------------------
;i                         Allocated with name '_seg_index_i_65536_17'
;------------------------------------------------------------
;	seg.c:42: static char i = 0;
	mov	_seg_index_i_65536_17,#0x00
;	seg.c:4: unsigned char led_char[16] = { /* 数码管显示字符转换表 */
	mov	_led_char,#0xc0
	mov	(_led_char + 0x0001),#0xf9
	mov	(_led_char + 0x0002),#0xa4
	mov	(_led_char + 0x0003),#0xb0
	mov	(_led_char + 0x0004),#0x99
	mov	(_led_char + 0x0005),#0x92
	mov	(_led_char + 0x0006),#0x82
	mov	(_led_char + 0x0007),#0xf8
	mov	(_led_char + 0x0008),#0x80
	mov	(_led_char + 0x0009),#0x90
	mov	(_led_char + 0x000a),#0x88
	mov	(_led_char + 0x000b),#0x83
	mov	(_led_char + 0x000c),#0xc6
	mov	(_led_char + 0x000d),#0xa1
	mov	(_led_char + 0x000e),#0x86
	mov	(_led_char + 0x000f),#0x8e
;	seg.c:9: unsigned char led_buff[6] = {    /* 数码管显示缓冲区，初始值0xFF确定启动不亮 */
	mov	_led_buff,#0xff
	mov	(_led_buff + 0x0001),#0xff
	mov	(_led_buff + 0x0002),#0xff
	mov	(_led_buff + 0x0003),#0xff
	mov	(_led_buff + 0x0004),#0xf9
	mov	(_led_buff + 0x0005),#0xc0
;	seg.c:13: char i = 0;
	mov	_i,#0x00
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
;Allocation info for local variables in function 'seg_show_num'
;------------------------------------------------------------
;num                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	seg.c:15: void seg_show_num(unsigned int num)
;	-----------------------------------------
;	 function seg_show_num
;	-----------------------------------------
_seg_show_num:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	seg.c:17: led_buff[4] = led_char[num / 10000];
	mov	r6,dpl
	mov	r7,dph
	mov	__divuint_PARM_2,#0x10
	mov	(__divuint_PARM_2 + 1),#0x27
	push	ar7
	push	ar6
	lcall	__divuint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_led_char
	mov	r1,a
	mov	ar5,@r1
	mov	(_led_buff + 0x0004),r5
;	seg.c:18: led_buff[3] = led_char[num / 1000 % 10];
	mov	__divuint_PARM_2,#0xe8
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_led_char
	mov	r1,a
	mov	ar5,@r1
	mov	(_led_buff + 0x0003),r5
;	seg.c:19: led_buff[2] = led_char[num / 100 % 10];
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_led_char
	mov	r1,a
	mov	ar5,@r1
	mov	(_led_buff + 0x0002),r5
;	seg.c:20: led_buff[1] = led_char[num / 10 % 10];
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_led_char
	mov	r1,a
	mov	ar5,@r1
	mov	(_led_buff + 0x0001),r5
;	seg.c:21: led_buff[0] = led_char[num % 10];
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	a,dpl
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	_led_buff,r7
;	seg.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seg_init'
;------------------------------------------------------------
;	seg.c:24: void seg_init(void)
;	-----------------------------------------
;	 function seg_init
;	-----------------------------------------
_seg_init:
;	seg.c:26: ADDR3 = 1;                  /* 因为需要动态改变ADDR0-2的值 */
;	assignBit
	setb	_P1_3
;	seg.c:27: LEDEN = 0;                  /* 是能U3，选择数码管 */
;	assignBit
	clr	_P1_4
;	seg.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seg_driver'
;------------------------------------------------------------
;sec                       Allocated to registers r7 
;------------------------------------------------------------
;	seg.c:30: void seg_driver(char sec)
;	-----------------------------------------
;	 function seg_driver
;	-----------------------------------------
_seg_driver:
	mov	r7,dpl
;	seg.c:32: led_buff[0] = led_char[sec%10];
	mov	ar5,r7
	mov	r6,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,#_led_char
	mov	r1,a
	mov	ar4,@r1
	mov	_led_buff,r4
;	seg.c:33: led_buff[1] = led_char[sec/10%10];
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,#_led_char
	mov	r1,a
	mov	ar4,@r1
	mov	(_led_buff + 0x0001),r4
;	seg.c:34: led_buff[2] = led_char[sec/100%10];
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,#_led_char
	mov	r1,a
	mov	ar4,@r1
	mov	(_led_buff + 0x0002),r4
;	seg.c:35: led_buff[3] = led_char[sec/1000%10];
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	a,r3
	add	a,#_led_char
	mov	r1,a
	mov	ar4,@r1
	mov	(_led_buff + 0x0003),r4
;	seg.c:36: led_buff[4] = led_char[sec/10000%10];
	mov	__divsint_PARM_2,#0x10
	mov	(__divsint_PARM_2 + 1),#0x27
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	add	a,#_led_char
	mov	r1,a
	mov	ar6,@r1
	mov	(_led_buff + 0x0004),r6
;	seg.c:37: led_buff[5] = led_char[sec/100000%10];
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	__divslong_PARM_2,#0xa0
	mov	(__divslong_PARM_2 + 1),#0x86
	mov	(__divslong_PARM_2 + 2),#0x01
;	1-genFromRTrack replaced	mov	(__divslong_PARM_2 + 3),#0x00
	mov	(__divslong_PARM_2 + 3),r6
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__modslong_PARM_2,#0x0a
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modslong
	mov	a,dpl
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	(_led_buff + 0x0005),r7
;	seg.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seg_index'
;------------------------------------------------------------
;i                         Allocated with name '_seg_index_i_65536_17'
;------------------------------------------------------------
;	seg.c:40: void seg_index(void)
;	-----------------------------------------
;	 function seg_index
;	-----------------------------------------
_seg_index:
;	seg.c:44: SEG = 0xFF;                  /* 显示消隐 */
	mov	_P0,#0xff
;	seg.c:46: switch (i)
	mov	a,_seg_index_i_65536_17
	add	a,#0xff - 0x05
	jc	00109$
	mov	a,_seg_index_i_65536_17
	mov	b,#0x03
	mul	ab
	mov	dptr,#00116$
	jmp	@a+dptr
00116$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
;	seg.c:48: case 0: ADDR2 = 0; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[0]; break;
00101$:
;	assignBit
	clr	_P1_2
;	assignBit
	clr	_P1_1
;	assignBit
	clr	_P1_0
	inc	_seg_index_i_65536_17
	mov	_P0,_led_buff
;	seg.c:49: case 1: ADDR2 = 0; ADDR1 = 0; ADDR0 = 1; i++; SEG = led_buff[1]; break;
	ret
00102$:
;	assignBit
	clr	_P1_2
;	assignBit
	clr	_P1_1
;	assignBit
	setb	_P1_0
	inc	_seg_index_i_65536_17
	mov	_P0,(_led_buff + 0x0001)
;	seg.c:50: case 2: ADDR2 = 0; ADDR1 = 1; ADDR0 = 0; i++; SEG = led_buff[2]; break;
	ret
00103$:
;	assignBit
	clr	_P1_2
;	assignBit
	setb	_P1_1
;	assignBit
	clr	_P1_0
	inc	_seg_index_i_65536_17
	mov	_P0,(_led_buff + 0x0002)
;	seg.c:51: case 3: ADDR2 = 0; ADDR1 = 1; ADDR0 = 1; i++; SEG = led_buff[3]; break;
	ret
00104$:
;	assignBit
	clr	_P1_2
;	assignBit
	setb	_P1_1
;	assignBit
	setb	_P1_0
	inc	_seg_index_i_65536_17
	mov	_P0,(_led_buff + 0x0003)
;	seg.c:52: case 4: ADDR2 = 1; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[4]; break;
	ret
00105$:
;	assignBit
	setb	_P1_2
;	assignBit
	clr	_P1_1
;	assignBit
	clr	_P1_0
	inc	_seg_index_i_65536_17
	mov	_P0,(_led_buff + 0x0004)
;	seg.c:53: case 5: ADDR2 = 1; ADDR1 = 0; ADDR0 = 1; i = 0; SEG = led_buff[5]; break;
	ret
00106$:
;	assignBit
	setb	_P1_2
;	assignBit
	clr	_P1_1
;	assignBit
	setb	_P1_0
	mov	_seg_index_i_65536_17,#0x00
	mov	_P0,(_led_buff + 0x0005)
;	seg.c:55: }
00109$:
;	seg.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'seg_infrared_driver'
;------------------------------------------------------------
;	seg.c:58: void seg_infrared_driver(void)
;	-----------------------------------------
;	 function seg_infrared_driver
;	-----------------------------------------
_seg_infrared_driver:
;	seg.c:60: if (ir_flag)
	mov	a,_ir_flag
	jz	00103$
;	seg.c:62: ir_flag = 0;
	mov	_ir_flag,#0x00
;	seg.c:63: led_buff[5] = led_char[ir_code[0] >> 4]; /* 用户码显示 */
	mov	a,_ir_code
	swap	a
	anl	a,#0x0f
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	(_led_buff + 0x0005),r7
;	seg.c:64: led_buff[4] = led_char[ir_code[0] & 0x0F];
	mov	r6,_ir_code
	anl	ar6,#0x0f
	mov	a,r6
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	(_led_buff + 0x0004),r7
;	seg.c:65: led_buff[1] = led_char[ir_code[2] >> 4]; /* 键吗显示 */
	mov	a,(_ir_code + 0x0002)
	swap	a
	anl	a,#0x0f
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	(_led_buff + 0x0001),r7
;	seg.c:66: led_buff[0] = led_char[ir_code[2] & 0x0F];
	mov	r6,(_ir_code + 0x0002)
	anl	ar6,#0x0f
	mov	a,r6
	add	a,#_led_char
	mov	r1,a
	mov	ar7,@r1
	mov	_led_buff,r7
00103$:
;	seg.c:68: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
