#include "ds18b20.h"

/* 软件延时函数，延时时间（t＊10）us */
void delay_x10_us(unsigned char t)
{
    do {
        _nop_(); _nop_(); _nop_(); _nop_();
        _nop_(); _nop_(); _nop_(); _nop_();
    } while (--t);
}

unsigned char return_behind_data(unsigned char dat)
{
    if (dat == 0x01)
        return 0xFE;
    else if (dat == 0x02)
        return 0xFD;
    else if (dat == 0x04)
        return 0xFB;
    else if (dat == 0x08)
        return 0xF7;
    else if (dat == 0x10)
        return 0xEF;
    else if (dat == 0x20)
        return 0xDF;
    else if (dat == 0x40)
        return 0xBF;
    else if (dat == 0x80)
        return 0x7F;
}

/* 复位总线，获取存在脉冲，以启动一次读写操作 */
unsigned char get_18b20_ack(void)
{
    unsigned char ack;

    EA = 0;                     /* 禁止总中断 */
    IO_18B20 = 0;               /* 产生500us复位脉冲 */
    delay_x10_us(50);
    IO_18B20 = 1;
    delay_x10_us(6);            /* 延时60us */
    ack = IO_18B20;
    while (!IO_18B20);
    EA = 1;

    return ack;
}

/* 向DS18B20写入一个字节，dat-待写入字节 */
void write_18b20(unsigned char dat)
{
    unsigned char mask;

    EA = 0;
    for (mask = 0x01; mask != 0; mask <<= 1)
    {
        IO_18B20 = 0;
        _nop_();
        _nop_();
        if ((mask & dat) == 0)
            IO_18B20 = 0;
        else
            IO_18B20 = 1;
        delay_x10_us(6);
        IO_18B20 = 1;           /* 拉高通信引脚 */
    }
    EA = 1;
}

unsigned char read_18b20(void)
{
    unsigned char dat;
    unsigned char mask;

    EA = 0;
    for (mask = 0x01; mask != 0; mask <<= 1)
    {
        IO_18B20 = 0;
        _nop_();
        _nop_();
        IO_18B20 = 1;
        _nop_();
        _nop_();
        if (!IO_18B20)
            dat &= return_behind_data(mask);
        else
            dat |= mask;
        delay_x10_us(6);
    }
    EA = 1;

    return dat;
}

unsigned char start_18b20(void)
{
    unsigned char ack;

    ack = get_18b20_ack();
    if (ack == 0)               /* 如18B20正确应答，则启动一次转换 */
    {
        write_18b20(0xCC);      /* 跳过ROM操作 */
        write_18b20(0x44);      /* 启动一次温度转换 */
    }

    if (ack == 0)
        return 1;
    else
        return 0;
}

unsigned char get_18b20_temp(int *temp)
{
    unsigned char ack;
    unsigned char LSB, MSB;     /* 16bit温度值的低字节和高字节 */

    ack = get_18b20_ack();
    if (ack == 0)
    {
        write_18b20(0xCC);      /* 跳过ROM操作 */
        write_18b20(0xBE);      /* 发送读命令 */
        LSB = read_18b20();     /* 读低8位 */
        MSB = read_18b20();     /* 读高8位 */
        *temp = ((int)MSB << 8) + LSB; /* 合并为16bit整数 */
    }

    if (ack == 0)
        return 1;
    else
        return 0;
}
