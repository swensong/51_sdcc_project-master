#ifndef __LED_H__
#define __LED_H__

#include <8052.h>

#define LED0 P0_0
#define LED1 P0_1
#define LED2 P0_2
#define LED3 P0_3
#define LED4 P0_4
#define LED5 P0_5
#define LED6 P0_6
#define LED7 P0_7

#define ADDR0 P1_0
#define ADDR1 P1_1
#define ADDR2 P1_2
#define ADDR3 P1_3
#define LEDEN P1_4

#define	HIGH	1
#define	LOW		0

void led_init(int data);

#endif
