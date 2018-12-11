#ifndef _LCD1602_H
#define _LCD1602_H

#include <8052.h>

#define LCD1602_DB P0
#define LCD1602_RS P1_0
#define LCD1602_RW P1_1
#define LCD1602_E P1_5

void init_lcd1602(void);
void lcd_show_str(unsigned char x, unsigned char y, unsigned char *str);

#endif
