#include "led.h"
#include "seg.h"
#include "time.h"
#include "lcd1602.h"
#include "key.h"
#include "motor.h"
#include "uart.h"
#include "i2c.h"

char flag1s = 0;
extern unsigned char T0RH;
extern unsigned char T0RL;

void delay_ms(int xms);

void main(void)
{
    /* led_init(HIGH); */
    char cnt = 0;
    unsigned char dat;
    unsigned char dat_str[4] = "123";
    init_lcd1602();
    seg_init();
    time0_init(1);
    config_uart(9600);
    EA = 1;

    /* lcd_show_str(0, 0, "hello world!"); */
    lcd_show_str(0, 1, "hello world!");

    dat = e2_read_byte(0x02);
    dat_str[0] = (dat/100) + '0';
    dat_str[1] = (dat/10%10) + '0';
    dat_str[2] = (dat%10) + '0';
    dat_str[3] = '\0';

    lcd_show_str(0, 0, dat_str);
    dat++;
    e2_write_byte(0x02, dat);


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

    TH0 = T0RH;
    TL0 = T0RL;

    key_scan();
    seg_index();
    motor_scan();

    if (cnt++ >= 1000)
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
