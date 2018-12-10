#include "led.h"

void delay_ms(int xms);

void main(void)
{
    led_init(HIGH);


    while (1)
    {
        led0 = LOW;
        delay_ms(1000);
        led1 = LOW;
        delay_ms(1000);
        led2 = LOW;
        delay_ms(1000);
        led0 = HIGH;
        delay_ms(1000);
        led1 = HIGH;
        delay_ms(1000);
        led2 = HIGH;
        delay_ms(1000);
    }
}

void delay_ms(int xms)
{
    int i, j;

    for (i = 0; i < xms; i++)
    {
        for (j = 0; j < 110; j++);
    }
}
