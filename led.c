#include "led.h"

void led_init(int data)
{
    addr0 = 0;
    addr1 = 1;
    addr2 = 1;
    addr3 = 1;
    leden = 0;

    if (data == HIGH)
    {
        led0 = HIGH;
        led1 = HIGH;
        led2 = HIGH;
        led3 = HIGH;
        led4 = HIGH;
        led5 = HIGH;
        led6 = HIGH;
        led7 = HIGH;
    }
    else if (data == LOW)
    {
        led0 = LOW;
        led1 = LOW;
        led2 = LOW;
        led3 = LOW;
        led4 = LOW;
        led5 = LOW;
        led6 = LOW;
        led7 = LOW;
    }
    else
    {
    }
}

