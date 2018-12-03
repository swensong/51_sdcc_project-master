#include "led.h"

void motor1_up(void)
{
    led0 = 1;
    led1 = 0;
}

void motor1_low(void)
{
    led0 = 0;
    led1 = 1;
}

void motor1_stop(void)
{
    led0 = 1;
    led1 = 1;
}

void motor2_left(void)
{
    led2 = 0;
    led3 = 1;
}

void motor2_right(void)
{
    led2 = 1;
    led3 = 0;
}

void motor2_stop(void)
{
    led2 = 1;
    led3 = 1;
}
