#ifndef __KEY_H
#define __KEY_H

#include <8052.h>
#include "stdint.h"

// 按键IO口设置
#define key0 P1_4
#define key1 P1_5
#define key2 P1_6
#define key3 P1_7

/* 按键功能查表 */
u8 __code  key_code_map[4] = {
    '1', '2', '3', '4'
};

void key_driver(void);
void key_debug(void);
void key_scan(void);

#endif
