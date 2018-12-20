#ifndef _KEY_H
#define _KEY_H

#include <8052.h>

#define KEY_IN_1 P2_4
#define KEY_IN_2 P2_5
#define KEY_IN_3 P2_6
#define KEY_IN_4 P2_7
#define KEY_OUT_1 P2_3
#define KEY_OUT_2 P2_2
#define KEY_OUT_3 P2_1
#define KEY_OUT_4 P2_0

void key_driver(void);
void key_scan(void);
void key_action(unsigned char key_code);

#endif
