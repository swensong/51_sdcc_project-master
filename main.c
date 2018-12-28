#include "seg.h"
#include "time.h"
#include "infrared.h"
#include "ds18b20.h"

__bit flag_1s = 0;

void main(void)
{
    __bit res;
    int temp;
    int intT, decT;

    seg_init();
    time0_init(1);
    EA = 1;


    start_18b20();

    while (1)
    {
        if (flag_1s == 1)
        {
            flag_1s = 0;
            res = get_18b20_temp(&temp);
            if (res)
            {
                intT = temp >> 4;
                seg_show_num(intT);
                decT = temp & 0xF;
                /* seg_show_num(intT); */
            }
            else
            {
                /* seg_show_num(1000); */
            }
            start_18b20();
        }

        /* seg_infrared_driver(); */
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
    seg_index();
}


