#include "led.h"

void led_init(int data)
{
    ADDR0 = 0;
    ADDR1 = 1;
    ADDR2 = 1;
    ADDR3 = 1;
    LEDEN = 0;

    if (data == HIGH)
    {
        LED0 = HIGH;
        LED1 = HIGH;
        LED2 = HIGH;
        LED3 = HIGH;
        LED4 = HIGH;
        LED5 = HIGH;
        LED6 = HIGH;
        LED7 = HIGH;
    }
    else if (data == LOW)
    {
        LED0 = LOW;
        LED1 = LOW;
        LED2 = LOW;
        LED3 = LOW;
        LED4 = LOW;
        LED5 = LOW;
        LED6 = LOW;
        LED7 = LOW;
    }
    else
    {
    }
}

