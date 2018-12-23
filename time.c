#include "time.h"

unsigned char T0RH = 0;
unsigned char T0RL = 0;

void time0_init(unsigned int ms)
{
    unsigned long tmp;

    tmp = 11059200 / 12;
    tmp = (tmp * ms) / 1000;
    tmp = 65536 - tmp;
    tmp = tmp + 28;
    T0RH = (unsigned char)(tmp >> 8);
    T0RL = (unsigned char)tmp;
    TMOD &= 0xF0;
    TMOD |= 0x01;
    TH0 = T0RH;
    TL0 = T0RL;
    ET0 = 1;
    TR0 = 1;
}
