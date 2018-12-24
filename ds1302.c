#include "ds1302.h"

/* 发送一个字节到DS1302通信总线上 */
void ds1302_byte_write(unsigned char dat)
{
    unsigned char mask;

    for (mask = 0x01; mask != 0; mask <<= 1) /* 低位在前，逐位移出 */
    {
        if ((mask & dat) != 0)  /* 首先输出该位的数据 */
            DS1302_IO = 1;
        else
            DS1302_IO = 0;
        DS1302_CK = 1;          /* 然后拉高时钟 */
        DS1302_CK = 0;          /* 在拉低时钟，a完成一个位的操作 */
    }

    DS1302_IO = 1;              /* 最好确保释放IO引脚 */
}

/* 由DS1302通信总线上读取一个字节 */
unsigned char ds1302_byte_read(void)
{
    unsigned char mask;
    unsigned char dat = 0;

    for (mask = 0x01; mask != 0; mask <<= 1) /* 地位在前，逐位读取 */
    {
        if (DS1302_IO != 0)     /* 首先读取此时的IO引脚，并设置dat中的反应位 */
        {
            dat |= mask;
        }
        DS1302_CK = 1;          /* 然后拉高时钟 */
        DS1302_CK = 0;          /* 再拉低时钟，完成一个位的操作 */
    }

    return dat;                 /* 最后返回读到的字节数据 */
}

/* 用单次写操作向某一个寄存器写入一个字节，reg-寄存器地址，dat-待写入字节 */
void ds1302_single_write(unsigned char reg, unsigned char dat)
{
    DS1302_CE = 1;              /* 使能片选信号 */
    ds1302_byte_write((reg << 1) | 0x80); /* 发送写寄存器指令 */
    ds1302_byte_write(dat);               /* 写入字节数据 */
    DS1302_CE = 0;                        /* 使能片选信号 */

}

/* 用单次读操作从寄存器读取一个字节，reg-寄存器地址，返回值-读到的字节 */
unsigned char ds1302_single_read(unsigned char reg)
{
    unsigned char dat;

    DS1302_CE = 1;              /* 使能片选信号 */
    ds1302_byte_write((reg << 1)|0x81); /* 发送读寄存器指令 */
    dat = ds1302_byte_read();           /* 读取字节数据 */
    DS1302_CE = 0;                      /* 除能片选信号 */

    return dat;
}

/* DS1302初始化，如发生掉电则重新设置初始时间 */
void init_ds1302(void)
{
    unsigned char i;
    unsigned char __code init_time[7] = { /* 2013年10月8号，星期二 12：30：00 */
        0x00, 0x30, 0x12, 0x08, 0x10, 0x02, 0x13
    };

    DS1302_CE = 0;              /* 初始化DS1302通信引脚 */
    DS1302_CK = 0;
    i = ds1302_single_read(0);   /* 读取秒寄存器 */
    if ((i & 0x80) != 0)        /* 由秒寄存器最高位CH的值判断DS1302是否已停止 */
    {
        ds1302_single_write(7, 0x00); /* 撤销写保护以允许写入数据 */
        for (i = 0; i < 7; i++)
        {
            ds1302_single_write(i, init_time[i]);
        }
    }
}
