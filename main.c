#include "led.h"
#include "time.h"

char flag1s = 0;

void delay_ms(int xms);

void main(void)
{
    led_init(HIGH);
    base_time_init();
    EA = 1;

    while (1)
    {
        if (flag1s == 1)
        {
            flag1s = 0;
            if (led0 == 1)
            {
                led0 = 0;
            }
            else
            {
                led0 = 1;
            }
        }
    }
}

void interrupt_timer() __interrupt 1
{
    static int cnt = 0;

    TH0 = 0xFC;
    TL0 = 0x67;

    if (cnt++ >= 1000)
    {
        cnt = 0;
        flag1s = 1;
    }
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
