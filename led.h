#ifndef __LED_H__
#define __LED_H__

#include <8052.h>

#define led0 P2_6
#define led1 P2_7
#define led2 P0_7
#define led3 P0_6
#define led4 P1_1
#define led5 P1_2
#define led6 P1_3
#define led7 P1_0

void motor1_up(void);
void motor1_low(void);
void motor1_stop(void);
void motor2_left(void);
void motor2_right(void);
void motor2_stop(void);

#endif
