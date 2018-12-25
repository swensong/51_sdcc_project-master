#include "infrared.h"

unsigned char ir_flag = 0;      /* 红外接受标志，收到一段正确数据后置1 */
unsigned char ir_code[4];       /* 红外代码接收缓冲区 */

/* 初始化红外接收功能 */
void init_infrared(void)
{
    IR_INPUT = 1;               /* 确保红外接收引脚被释放 */
    TMOD &= 0x0F;               /* 清零T1的控制位 */
    TMOD |= 0x10;               /* 配置T1为模式1 */
    TR1 = 0;                    /* 停止T1计数 */
    ET1 = 0;                    /* 禁止T1中断 */
    IT1 = 1;                    /* 设置INT1为负边沿触发 */
    EX1 = 1;                    /* 使能INT1中断 */
}

/* 获取当前高电平持续时间 */
unsigned int get_high_time(void)
{
    TH1 = 0;                    /* 清零T1计数初始值 */
    TL1 = 0;
    TR1 = 1;                    /* 启动T1计数 */
    while (IR_INPUT)            /* 红外输入引脚为1时循环检测等待，变为0时则结束本循环 */
    {
        if (TH1 >= 0x40)
        {                       /* 当T1计数值大于0x4000，即高电平持续时间超过18ms时， */
            break;              /* 强制退出循环，是为了避免信号异常时，程序假死在这里 */
        }
    }
    TR1 = 0;

    return (TH1 * 256 + TL1);     /* T1计数值合成16bit整型数，并返回该数 */
}

/* 获取当前低电平的持续时间 */
unsigned int get_low_time(void)
{
    TH1 = 0;                    /* 清零T1计数初值 */
    TL1 = 0;
    TR1 = 1;                    /* 启动T1计数 */
    while (!IR_INPUT)       /* 红外输入引脚为0时循环检测等待，变为1则结束本循环 */
    {
        if (TH1 >= 0x40)
        {                       /* 当T1计数值大于0x4000，即高电平持续时间超过18ms时， */
            break;              /* 强制退出循环，是为了避免信号异常时，程序假死在这里 */
        }
    }
    TR1 = 0;

    return (TH1 * 256 + TL1);     /* T1计数值合成16bit整型数，并返回该数 */
}
