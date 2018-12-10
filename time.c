#include "time.h"

void base_time_init(void)
{
    TMOD = 0x01;                /* 设置T0为模式1 */
    TH0	= 0xFC;
    TL0 = 0x67;
    ET0 = 1;
    TR0 = 1;
}
