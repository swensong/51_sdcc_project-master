#include "seg.h"
#include "infrared.h"

unsigned char led_char[16] = { /* 数码管显示字符转换表 */
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8,
    0x80, 0x90, 0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E
};

unsigned char led_buff[6] = {    /* 数码管显示缓冲区，初始值0xFF确定启动不亮 */
    0xFF, 0xFF, 0xFF, 0xFF, 0xF9, 0xC0,
};

char i = 0;

void seg_show_num(unsigned int num)
{
    led_buff[4] = led_char[num / 10000];
    led_buff[3] = led_char[num / 1000 % 10];
    led_buff[2] = led_char[num / 100 % 10];
    led_buff[1] = led_char[num / 10 % 10];
    led_buff[0] = led_char[num % 10];
}

void seg_init(void)
{
    ADDR3 = 1;                  /* 因为需要动态改变ADDR0-2的值 */
    LEDEN = 0;                  /* 是能U3，选择数码管 */
}

void seg_driver(char sec)
{
    led_buff[0] = led_char[sec%10];
    led_buff[1] = led_char[sec/10%10];
    led_buff[2] = led_char[sec/100%10];
    led_buff[3] = led_char[sec/1000%10];
    led_buff[4] = led_char[sec/10000%10];
    led_buff[5] = led_char[sec/100000%10];
}

void seg_index(void)
{
    static char i = 0;

    SEG = 0xFF;                  /* 显示消隐 */

    switch (i)
    {
    case 0: ADDR2 = 0; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[0]; break;
    case 1: ADDR2 = 0; ADDR1 = 0; ADDR0 = 1; i++; SEG = led_buff[1]; break;
    case 2: ADDR2 = 0; ADDR1 = 1; ADDR0 = 0; i++; SEG = led_buff[2]; break;
    case 3: ADDR2 = 0; ADDR1 = 1; ADDR0 = 1; i++; SEG = led_buff[3]; break;
    case 4: ADDR2 = 1; ADDR1 = 0; ADDR0 = 0; i++; SEG = led_buff[4]; break;
    case 5: ADDR2 = 1; ADDR1 = 0; ADDR0 = 1; i = 0; SEG = led_buff[5]; break;
    default:break;
    }
}

void seg_infrared_driver(void)
{
    if (ir_flag)
    {
        ir_flag = 0;
        led_buff[5] = led_char[ir_code[0] >> 4]; /* 用户码显示 */
        led_buff[4] = led_char[ir_code[0] & 0x0F];
        led_buff[1] = led_char[ir_code[2] >> 4]; /* 键吗显示 */
        led_buff[0] = led_char[ir_code[2] & 0x0F];
    }
}
