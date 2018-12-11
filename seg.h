#ifndef _SEG_H

#include <8052.h>

#define ADDR0 P1_0
#define ADDR1 P1_1
#define ADDR2 P1_2
#define ADDR3 P1_3
#define LEDEN P1_4

#define SEG	P0

void seg_init(void);
void seg_index(void);
void seg_driver(char sec);

#endif