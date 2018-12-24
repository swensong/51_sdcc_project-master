#include "led.h"
#include "seg.h"
#include "time.h"
#include "lcd1602.h"
#include "key.h"
#include "motor.h"
#include "uart.h"
#include "i2c.h"
#include "ds1302.h"

#define FLAG_TIME 200           /* 每200ms一个事件循环 */

char flag1s = 0;
extern unsigned char T0RH;
extern unsigned char T0RL;

void delay_ms(int xms);

void main(void)
{
    unsigned char i;
    unsigned char psec = 0xAA;  /* 秒备份，初值AA确保首次读取时间后会刷新显示 */
    unsigned char time[8];      /* 当前时间数组 */
    unsigned char str[12];      /* 字符串转换缓冲区 */

    /* led_init(HIGH); */
    init_lcd1602();
    seg_init();
    init_ds1302();
    time0_init(1);
    config_uart(9600);
    EA = 1;

    while (1)
    {
        key_driver();
        if (flag1s == 1)
        {
            flag1s = 0;

            for (i = 0; i < 7; i++) /* 读取DS1302当前时间 */
            {
                time[i] = ds1302_single_read(i);
            }

            if (psec != time[0]) /* 检测到时间有变化时刷新显示 */
            {
                str[0] = '2';
                str[1] = '0';
                str[2] = (time[6] >> 4) + '0'; /* 年 */
                str[3] = (time[6] & 0x0F) + '0'; /* 年 */
                str[4] = '-';
                str[5] = (time[4] >> 4) + '0'; /* 月 */
                str[6] = (time[4] & 0x0F) + '0';
                str[7] = '-';
                str[8] = (time[3] >> 3) + '0'; /* 日 */
                str[9] = (time[3] & 0x0F) + '0';
                str[10] = '\0';
                lcd_show_str(0, 0, str);

                str[0] = (time[5] & 0x0F) + '0'; /* 星期 */
                str[1] = '\0';
                lcd_show_str(11, 0, "week");
                lcd_show_str(15, 0, str);

                str[0] = (time[2] >> 4) + '0'; /* 时 */
                str[1] = (time[2] & 0x0F) + '0';
                str[2] = ':';
                str[3] = (time[1] >> 4) + '0'; /* 分 */
                str[4] = (time[1] & 0x0F) + '0';
                str[5] = ':';
                str[6] = (time[0] >> 4) + '0'; /* 秒 */
                str[7] = (time[0] & 0x0F) + '0';
                str[8] = '\0';
                lcd_show_str(4, 1, str);

                psec = time[0];
            }

            /* seg_driver(cnt++); */
            /* if (P3_0 == 1) */
            /* { */
            /*     P3_0 = 0; */
            /* } */
            /* else */
            /* { */
            /*     P3_0 = 1; */
            /* } */
        }
    }
}

void interrupt_timer() __interrupt 1
{
    static int cnt = 0;

    TH0 = T0RH;
    TL0 = T0RL;

    key_scan();
    seg_index();
    motor_scan();

    if (cnt++ >= FLAG_TIME)
    {
        cnt = 0;
        flag1s = 1;
    }

}

void interrupt_uart() __interrupt 4
{
    uart_scan();
}


/* 附加函数 */

void delay_ms(int xms)
{
    int i, j;

    for (i = 0; i < xms; i++)
    {
        for (j = 0; j < 110; j++);
    }
}
