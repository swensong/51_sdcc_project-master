#include "lcd1602.h"

void lcd_wait_ready(void)
{
    unsigned char sta;

    LCD1602_DB = 0xFF;
    LCD1602_RS = 0;
    LCD1602_RW = 1;
    do {
        LCD1602_E = 1;
        sta = LCD1602_DB;       /* 读取状态字 */
        LCD1602_E = 0;
    } while (sta & 0x80);       /* bit7等于1表示液晶很忙 */
}

/* 向LCD1602液晶写入一字节命令，cmd-待写入命令 */
void lcd_write_cmd(unsigned char cmd)
{
    lcd_wait_ready();
    LCD1602_RS = 0;
    LCD1602_RW = 0;
    LCD1602_DB = cmd;
    LCD1602_E = 1;
    LCD1602_E = 0;
}

/* 向LCD1602液晶写入一字节数据，dat-待写入数据值 */
void lcd_write_dat(unsigned char dat)
{
    lcd_wait_ready();
    LCD1602_RS = 1;
    LCD1602_RW = 0;
    LCD1602_DB = dat;
    LCD1602_E = 1;
    LCD1602_E = 0;
}

/* 设置显示RAM起始地址，即为光标位置，(x,y)-对应屏幕上的字符坐标 */
void lcd_set_cursor(unsigned char x, unsigned char y)
{
    unsigned char addr;

    if (y == 0)                 /* 由输入的屏幕坐标计算显示RAM的地址 */
        addr = 0x00 + x;        /* 第一行地址从0x00开始 */
    else
        addr = 0x40 + x;        /* 第二行地址从0x40开始 */
    lcd_write_cmd(addr | 0x80); /* 设置RAM地址 */
}

/* 在液晶上显示字符串，(x,y)-对应屏幕上的开始坐标，str-代表显示字符指针 */
void lcd_show_str(unsigned char x, unsigned char y, unsigned char *str)
{
    lcd_set_cursor(x, y);       /* 设置开始的地址 */
    while (*str != '\0')        /* 连续写入字符串数据，直到检测到结束符 */
    {
        lcd_write_dat(*str++);  /* 先取str指向的数据，然后str自加1 */
    }
}

void init_lcd1602(void)
{
    lcd_write_cmd(0x38);        /* 16*2显示，5＊7点阵，8位数据接口 */
    lcd_write_cmd(0x0C);        /* 显示器开，光标关闭 */
    lcd_write_cmd(0x06);        /* 文字不动，地址自动+1 */
    lcd_write_cmd(0x01);        /* 清屏 */
}

