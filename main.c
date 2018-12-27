#include "seg.h"
#include "time.h"
#include "infrared.h"

void main(void)
{
    seg_init();
    time0_init(1);
    init_infrared();
    EA = 1;

    seg_show_num(0);

    while (1)
    {
        seg_infrared_driver();
    }
}

void interrupt_timer() __interrupt 1
{
    TH0 = T0RH;
    TL0 = T0RL;

    seg_index();
}

/* INT1中断服务函数，执行红外接收及解码 */
void EXINT_ISR() __interrupt 2
{
    infrared_scan();
}

