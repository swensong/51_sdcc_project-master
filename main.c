#include "led.h"
#include "time.h"
#include "key.h"
#include "uart.h"

#define motor1_time 400
#define motor2_time 400

#define key_unactive 1
#define key_active   0

/* 源于uart.c */
extern u8 cnt_rxd;
extern u8 __pdata buf_rxd[64];
//extern __bit flag_txd;

/* 源于time.c */
extern u8 T0RH;
extern u8 T0RL;

u32 led_time_cnt = 0;

extern u8 key_sta[0];
u8 flag = 0;

void delay_ms(u16 ms);
__bit cmp_memory( u8 *ptr1, u8 *ptr2, u8 len );

void main(void)
{
    EA = 1;
    time0_init(1);  //定时2ms
    uart_init(9600);
    led0 = 1;
    led1 = 1;

    /* 不知道为何发送第一个就无法再次发送 */
//    uart_write( "hello world!\r\n", sizeof("hello world!\r\n") );

    while (1)
    {
        P1_3 = 0;
        P1_2 = key0;
        key_driver();
        uart_driver();
    }
}

/* 
内存比较函数，比较两个指针所指向的数据是否相同，
ptr1-待比较指针1,ptr2-待比较指针2,len-待比较长度
返回值-两段内存完全相同返回1,不同返回2
*/
__bit cmp_memory( u8 *ptr1, u8 *ptr2, u8 len )
{
    while (len--)
    {
        if (*ptr1++ != *ptr2++)
        {
            return 0;
        }
    }

    return 1;
}


void uart_action(u8 *buf, u8 len)
{
    u8 i;
    u8 __code cmd0[] = "a";
    u8 __code cmd1[] = "b";
    u8 __code cmd2[] = "c";
    u8 __code cmd3[] = "d";
    u8 __code cmd4[] = "e";
    u8 __code cmd5[] = "f";
    u8 __code cmd_len[] = {
        sizeof(cmd0) - 1, sizeof(cmd1) - 1, sizeof(cmd2) - 1, sizeof(cmd3) - 1, sizeof(cmd4) - 1, sizeof(cmd5) - 1,
    };
    u8 __code *cmd_ptr[] = {
        &cmd0[0], &cmd1[0], &cmd2[0], &cmd3[0], &cmd4[0], &cmd5[0],
    };

    for ( i = 0; i < sizeof(cmd_len); i++ )
    {
        if (len >= cmd_len[i])
        {
            if (cmp_memory(buf, cmd_ptr[i], cmd_len[i]))
            {
                break;
            }
        }
    }

    switch (i)
    {
    case 0:
        led0 = 1;
        led1 = 0;
        break;
    case 1:
        led0 = 0;
        led1 = 1;
        break;
    case 2:
        led0 = 1;
        led1 = 1;
        led_time_cnt = 0;
        break;
    case 3:
        led2 = 0;
        led3 = 1;
        break;
    case 4:
        led2 = 1;
        led3 = 0;
        break;
    case 5:
        led2 = 1;
        led3 = 1;
        break;
    default:
        break;
    }
}

void key_action_up(u8 key_code)
{

    if (key_code == key_code_map[0])
    {
        if (flag == 0)
        {
            delay_ms(2500);    // delay 1s
            if (key0 == 0)
            {
                delay_ms(500);    // delay 1s
                if (key0 == 0)
                {
                    flag = 1; // start up
                    led0 = 0;
                    led1 = 1;
                }
            }
        }
        else if (flag == 1)
        {
            flag = 2;
            led0 = 1;
            led1 = 1;
            delay_ms(10000);    // delay 1s
            // xuao dou
        }
        else if (flag == 3)
        {
            flag = 0;
            delay_ms(10000);    // delay 1s
        }
    }
    if (key_code == key_code_map[1])
    {
    }
    if (key_code == key_code_map[2])
    {
        led0 = 1;
        led1 = 1;
    }
    if (key_code == key_code_map[3])
    {
    }
}

void key_action_low(u8 key_code)
{
    if (key_code == key_code_map[0])
    {
        if (flag == 2)
        {
            flag = 0;
            led0 = 1;
            led1 = 0;
        }
        /*
        if (flag == 2)
        {
            flag = 3;
            led0 = 1;  // down start
            led1 = 0;
        }
        */
    }
    if (key_code == key_code_map[1])
    {
    }
    if (key_code == key_code_map[2])
    {
    }
    if (key_code == key_code_map[3])
    {
    }
}

void delay_ms(u16 ms)
{
    u16 i = 0;
    u16 j = 0;

    for ( i = 0 ; i < ms; i++ )
        for ( j = 0; j < 110; j++ );
}

void interrupt_timer0() __interrupt 1
{
    static u8 i = 0;

    TH0 = T0RH;
    TL0 = T0RL;

    /*
    if (led_time_cnt > 0)
    {
        if ( led_time_cnt++ > 12000 )
        {
            led_time_cnt = 0;
            led0 = 1;
            led1 = 1;
            led4 = 0;
        }
    }

    if (i++ > 200)
    {
        i = 0;
        if (led7)
            led7 = 0;
        else
            led7 = 1;
    }
    */


    uart_rx_monitor(1);
    key_scan();
}

void interrupt_uart() __interrupt 4
{
    if (RI)
    {
        RI = 0;
        if (cnt_rxd < sizeof(buf_rxd))
        {
            buf_rxd[cnt_rxd++] = SBUF;
        }
    }
    if (TI)
    {
//        flag_txd = 1;
        TI = 0;
    }
}
