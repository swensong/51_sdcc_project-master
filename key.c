#include "key.h"
#include "seg.h"
#include "i2c.h"
#include "uart.h"

unsigned char key_code_map[4][4] = {
    { 0x31, 0x32, 0x33, 0x24 }, /* 数字键1, 数字键2, 数字键3, 向上键 */
    { 0x34, 0x35, 0x36, 0x25 }, /* 数字键4, 数字键5, 数字键6, 向左键 */
    { 0x37, 0x38, 0x39, 0x28 }, /* 数字键7, 数字键8, 数字键9, 向下键 */
    { 0x30, 0x1B, 0x0D, 0x27 }  /* 数字键0, ESC 键, 回车键, 向右键 */
};

unsigned char key_sta[4][4] = { /* 全部矩阵按键的当前状态 */
    {1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}
};

void key_action(unsigned char key_code)
{
    static unsigned int show_num = 0;

    if ((key_code >= 0x30) && (key_code <= 0x39)) /* 输入0～9 */
    {
        show_num = key_code - 0x30;
    }
    else if (key_code == 0x24)
    {
        show_num++;
    }
    else if (key_code == 0x25)
    {
        show_num = show_num*10;
    }
    else if (key_code == 0x28)
    {
        show_num--;
    }
    else if (key_code == 0x27)
    {
        show_num = show_num/10;
    }
    else if (key_code == 0x0D)
    {
        show_num = 5120;
    }
    else if (key_code == 0x1B)  /* ESC按键，电机控制按键 */
    {
        show_num = 0;
        uart_send("123", 3);
    }

    seg_show_num(show_num);
}

void key_driver(void)
{
    unsigned char i, j;
    static unsigned char back_up[4][4] = { /* 按键值备份，保留前一次的值 */
        {1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}, {1, 1, 1, 1}
    };

    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            if (back_up[i][j] != key_sta[i][j])
            {
                if (key_sta[i][j] == 1)
                    key_action(key_code_map[i][j]);
            }
            back_up[i][j] = key_sta[i][j];
        }
    }
}

void key_scan(void)
{
    unsigned char i;
    static unsigned char key_out = 0;
    static unsigned char key_buf[4][4] = {
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF},
        {0xFF, 0xFF, 0xFF, 0xFF}, {0xFF, 0xFF, 0xFF, 0xFF}
    };

    /* 将一行的4个按键值移如缓冲区 */
    key_buf[key_out][0] = (key_buf[key_out][0] << 1) | KEY_IN_1;
    key_buf[key_out][1] = (key_buf[key_out][1] << 1) | KEY_IN_2;
    key_buf[key_out][2] = (key_buf[key_out][2] << 1) | KEY_IN_3;
    key_buf[key_out][3] = (key_buf[key_out][3] << 1) | KEY_IN_4;
    /* 消抖动后更新按键状态 */
    for (i = 0; i < 4; i++)
    {
        if ((key_buf[key_out][i] & 0x0F) == 0x00)
        {                       /* 连接4次扫描值为0，即4＊4ms内都是按下状态，可认为按键稳定按下 */
            key_sta[key_out][i] = 0;
        }
        else if ((key_buf[key_out][i] & 0x0F) == 0x0F)
        {                      /* 连接4次扫描值为0，即4＊4ms内都是按下状态，可认为按键稳定按下 */
            key_sta[key_out][i] = 1;
        }
    }
    /* 执行下一次的扫描输出 */
    key_out++;
    key_out = key_out & 0x03;
    switch (key_out)
    {
    case 0: KEY_OUT_4 = 1; KEY_OUT_1 = 0; break;
    case 1: KEY_OUT_1 = 1; KEY_OUT_2 = 0; break;
    case 2: KEY_OUT_2 = 1; KEY_OUT_3 = 0; break;
    case 3: KEY_OUT_3 = 1; KEY_OUT_4 = 0; break;
    default: break;
    }
}
