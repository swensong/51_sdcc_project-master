#include "time.h"

u8 T0RH = 0;
u8 T0RL = 0;

void time0_init(u16 ms)
{
    u32 tmp;

    tmp = 11059200 / 12;
    tmp = (tmp * ms) / 1000;
    tmp = 65536 - tmp;
    tmp = tmp + 28;
    T0RH = (u8)(tmp >> 8);
    T0RL = (u8)tmp;
    TMOD &= 0xF0;
    TMOD |= 0x01;
    TH0 = T0RH;
    TL0 = T0RL;
    ET0 = 1;
    TR0 = 1;
}
