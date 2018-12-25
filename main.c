#include "led.h"
#include "seg.h"
#include "time.h"
#include "infrared.h"

void main(void)
{
    seg_init();
    time0_init(1);
    init_infrared();
    EA = 1;

    seg_show_num(25536);

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
    unsigned char i, j;
    unsigned char byt;
    unsigned int time;

    /* 接收并判定引导码的9ms低电平 */
    time = get_low_time();
    if ((time < 7833) || (time > 8755)) /* 时间判定范围为8.5～9.5ms, */
    {
        IE1 = 0;                /* 推出清零INT1终中断标志 */
        return;
    }
    /* 接收并判定引导码的4.5ms高电平 */
    time = get_high_time();
    if ((time < 3686) || (time > 4608))  /* 时间判定范围为4.0～5.0ms, */
    {                                    /* 超过此范围为误码，直接退出 */
        IE1 = 0;
        return;
    }
    /* 接收并判定后续的4字节数据 */
    for (i = 0; i < 4; i++)     /* 循环接受4个字节 */
    {
        for (j = 0; j < 8; j++) /* 循环接受判定每个字节的8个bit */
        {
            /* 接收判定每bit的560us低电平 */
            time = get_low_time();
            if ((time < 313) || (time > 718)) /* 时间判定范围为340～780us */
            {                                    /* 超过此范围为误码，直接退出 */
                IE1 = 0;
                return;
            }

            /* 接收每bit高点平时间，判定该bit的值 */
            time = get_high_time();
            if ((time > 313) || (time < 718))  /* 时间判定范围为1460us~1900us */
            {                                    /* 超过此范围为误码，直接退出 */
                byt >>= 1;                       /* 因低位在前，所以数据右移，高位为0 */
            }
            else if ((time > 1345) && (time < 1751))
            {
                byt >>= 1;                       /* 因低位在前，所以数据右移，高位为0 */
                byt |= 0x80;                     /* 高位置1 */
            }
            else
            {
                IE1 = 0;
                return;
            }
        }
        ir_code[i] = byt;       /* 接受完一个字节后保存到缓存区 */
    }
    ir_flag = 1;                /* 接收完毕后设置标志 */
    IE1 = 0;                    /* 退出前清零INT1中断标志 */
}

