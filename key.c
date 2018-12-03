#include "key.h"
#include "led.h"

/* 保存当前按键转台的数组 */
u8 __pdata key_sta[4] = { 1, 1, 1, 1 };

extern void key_action_up(u8 key_code);
extern void key_action_low(u8 key_code);

void key_driver(void)
{
    u8 i = 0;
    static u8 __pdata back_up[4] = { 1, 1, 1, 1 };

    for ( i = 0; i < 4; i++ )
    {
        if ( back_up[i] != key_sta[i] )
        {
            if ( back_up[i] != 0 )
            {
                key_action_up(key_code_map[i]);
            }
            else if ( back_up[i] == 0 )
            {
                key_action_low(key_code_map[i]);
            }
            back_up[i] = key_sta[i];
        }
    }
}

void key_debug(void)
{

    //如果开始按键已经按下
    if ( key0 == 0 )
    {
        while (1)
        {
            led0 = key_sta[0];
            led1 = key_sta[1];
        }
    }
    else if ( key1 == 0)
    {
        while (1)
        {
            led2 = key_sta[0];
            led3 = key_sta[1];
        }
    }
}

void key_scan(void)
{
    u8 i = 0;
    static u8 key_buf[4] = {
        0xFF, 0xFF, 0xFF, 0xFF
    };

    key_buf[0] = (key_buf[0] << 1) | key0;
    key_buf[1] = (key_buf[1] << 1) | key1;
    key_buf[2] = (key_buf[2] << 1) | key2;
    key_buf[3] = (key_buf[3] << 1) | key3;

    for ( i = 0; i < 4; i++ )
    {
        if ((key_buf[i] & 0xFF) == 0x00)
        {
            key_sta[i] = 0;
        }
        if ((key_buf[i] & 0xFF) == 0xFF)
        {
            key_sta[i] = 1;
        }
    }
}


