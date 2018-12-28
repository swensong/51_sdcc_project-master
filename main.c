#include "seg.h"
#include "time.h"
#include "ad.h"
#include "key.h"

unsigned char flag_1s = 0;

void main(void)
{
    int flag_cnt = 110;

    seg_init();
    time0_init(1);
    EA = 1;


    while (1)
    {
        key_driver();
        if (flag_1s == 1)
        {
            /* seg_show_num(flag_cnt++); */
            flag_1s = 0;
        }
    }
}

void interrupt_timer() __interrupt 1
{
    static unsigned int cnt = 0;

    TH0 = T0RH;
    TL0 = T0RL;

    if (cnt++ >= 1000)
    {
        cnt = 0;
        flag_1s = 1;
    }
    key_scan();
    seg_index();
}


