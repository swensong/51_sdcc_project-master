#ifndef _INFRARED_H
#define _INFRARED_H

#include <8052.h>

#define IR_INPUT 	P3_3
#define ENLED 		P1_4

extern unsigned char ir_flag;      /* 红外接受标志，收到一段正确数据后置1 */
extern unsigned char ir_code[4];       /* 红外代码接收缓冲区 */

void init_infrared(void);
unsigned int get_high_time(void);
unsigned int get_low_time(void);

#endif
