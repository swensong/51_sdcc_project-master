#ifndef __LED_H__
#define __LED_H__

#include <8052.h>

#define led0 P0_0
#define led1 P0_1
#define led2 P0_2
#define led3 P0_3
#define led4 P0_4
#define led5 P0_5
#define led6 P0_6
#define led7 P0_7

#define addr0 P1_0
#define addr1 P1_1
#define addr2 P1_2
#define addr3 P1_3
#define leden P1_4

#define	HIGH	1
#define	LOW		0

void led_init(int data);

#endif
