#include "motor.h"

unsigned char beat_code[8] = {  /* 步进电机节拍对应的IO控制代码 */
    0xE, 0xC, 0xD, 0x9, 0xB, 0x3, 0x7, 0x6
};

unsigned long beats = 0;        /* 电机转动节拍总数 */

void start_motor(unsigned long angle)
{
    EA = 0;
    beats = (angle * 4076) / 360;
    EA = 1;
}

void stop_motor(void)
{
    beats = 0;
}

void motor_scan(void)
{
    unsigned char tmp;          /* 临时变量 */
    static unsigned char index = 0; /* 节拍输出索引 */
    if (beats != 0)             /* 节拍数不为0则产生一个驱动节拍 */
    {
        tmp = P1;               /* 用tmp把P1口当前值缓存 */
        tmp = tmp & 0xF0;       /* 用＆操作清零低4位 */
        tmp = tmp | beat_code[index]; /* 用｜操作把节拍写到低4位 */
        P1 = tmp;                     /* 把低4位的节拍代码和高4位的原值送回P1 */
        index++;                      /* 节拍输出索引递增 */
        index = index & 0x07;         /* 用＆操作实现到8归零 */
        beats--;
    }
    else                        /* 节拍数为0则关闭点击所有的相 */
    {
        P1 = P1 | 0x0F;
    }
}
