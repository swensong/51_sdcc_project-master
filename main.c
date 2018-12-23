#include "led.h"
#include "seg.h"
#include "time.h"
#include "lcd1602.h"
#include "key.h"
#include "motor.h"
#include "uart.h"

char flag1s = 0;
extern unsigned char flag_txd;

void delay_ms(int xms);

void main(void)
{
    /* led_init(HIGH); */
    char cnt = 0;
    init_lcd1602();
    /* seg_init(); */
    config_uart(9600);
    base_time_init();
    EA = 1;

    seg_show_num(1101);

    /* lcd_show_str(0, 0, "hello world!"); */
    delay_ms(100);
    lcd_show_str(0, 1, "hello world!");

    while (1)
    {
        key_driver();
        if (flag1s == 1)
        {
            flag1s = 0;

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

    TH0 = 0xFC;
    TL0 = 0x67;

    key_scan();
    /* seg_index(); */
    motor_scan();

    if (cnt++ >= 1000)
    {
        cnt = 0;
        flag1s = 1;
    }

}

void interrupt_uart() __interrupt 4
{
    /* uart_scan(); */
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
