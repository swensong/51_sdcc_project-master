#include "i2c.h"

void i2c_start(void)
{
    I2C_SDA = 1;                /* 首先确保SDA，SCL都是高电平 */
    I2C_SCL = 1;
    I2CDelay();
    I2C_SDA = 0;                /* 先拉低SDA */
    I2CDelay();
    I2C_SCL = 0;                /* 再拉低SCL */
}

void i2c_stop(void)
{
    I2C_SDA = 0;                /* 首先确保SDA，SCL都是低电平 */
    I2C_SCL = 0;
    I2CDelay();
    I2C_SCL = 1;                /* 再拉低SDA */
    I2CDelay();
    I2C_SDA = 1;                /* 先拉低SCL */
    I2CDelay();
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


/* I2C总线写操作，dat-待写入字节，返回值-从机应答位的值 */
unsigned char i2c_write(unsigned char dat)
{
    unsigned char ack;          /* 用于暂存应答的值 */
    unsigned char mask;         /* 用于探测字节内某一位的掩码变量 */

    for (mask = 0x80; mask != 0; mask >>= 1) /* 从高位到低位依次进行 */
    {
        if ((mask & dat) == 0)
            I2C_SDA = 0;
        else
            I2C_SDA = 1;
        I2CDelay();
        I2C_SCL = 1;            /* 拉高SCL */
        I2CDelay();
        I2C_SCL = 0;            /* 再拉低SCL，完成一个位周期 */
    }
    I2C_SDA = 1;                /* 8位数据发送完成后，主机释放SDA，以检测从机应答 */
    I2CDelay();
    I2C_SCL = 1;                /* 拉高SCL */
    ack = I2C_SDA;              /* 读取此时的SDA的值，即为从机的应答值 */
    I2CDelay();
    I2C_SCL = 0;                /* 再拉低SCL完成应答位，并保持住总线 */

    if (ack == 1)
        return 0;
    else
        return 1;
    /* 应答值反以符合通常的逻辑，0=不存在或忙或写入失败，1=存在且空闲或写入成功 */
}

/* I2C总线读操作，并发送非应答信号，返回值-读到的字节 */
unsigned char i2c_read_nak(void)
{
    unsigned char mask;
    unsigned char dat;

    I2C_SDA = 1;                /* 首先确保主机释放SDA */
    for (mask = 0x80; mask != 0; mask >>= 1)
    {
        I2CDelay();
        I2C_SCL = 1;            /* 拉高SCL */
        if (I2C_SDA == 0)       /* 读取SDA的值 */
            dat &= return_behind_data(mask);       /* 为0时，dat中对应位清零 */
        else
            dat |= mask;        /* 为1时，dat中对应位置1 */
        I2CDelay();
        I2C_SCL = 0;            /* 再拉低SCL，以使从机发送出下一位 */
    }
    I2C_SDA = 1;                /* 8位数据发送完后，拉高SDA，发送非应答信号 */
    I2CDelay();
    I2C_SCL = 1;                /* 拉高SCL */
    I2CDelay();
    I2C_SCL = 0;                /* 再拉低SCL完成非应答位，并保持住总线 */

    return dat;
}

/* I2C总线读操作，并发送应答信号，返回值-读到的字节 */
unsigned char i2c_read_ack(void)
{
    unsigned char mask;
    unsigned char dat;

    I2C_SDA = 1;                /* 首先确保主机释放SDA */
    for (mask = 0x80; mask != 0; mask >>= 1)
    {
        I2CDelay();
        I2C_SCL = 1;            /* 拉高SCL */
        if (I2C_SDA == 0)       /* 读取SDA的值 */
            dat &= return_behind_data(mask);       /* 为0时，dat中对应位清零 */
        else
            dat |= mask;        /* 为1时，dat中对应位置1 */
        I2CDelay();
        I2C_SCL = 0;            /* 再拉低SCL，以使从机发送出下一位 */
    }
    I2C_SDA = 0;                /* 8位数据发送完后，拉高SDA，发送非应答信号 */
    I2CDelay();
    I2C_SCL = 1;                /* 拉高SCL */
    I2CDelay();
    I2C_SCL = 0;                /* 再拉低SCL完成非应答位，并保持住总线 */

    return dat;
}

/* 读取EEPROM中的一个字节，addr-字节地址 */
unsigned char e2_read_byte(unsigned char addr)
{
    unsigned char dat;

    i2c_start();
    i2c_write(0x50 << 1);       /* 寻址器件，后续为写操作 */
    i2c_write(addr);            /* 写入存储地址 */
    i2c_start();                /* 发送重复启动信号 */
    i2c_write((0x50 << 1) | 0x01); /* 寻址器件，后续为读操作 */
    dat = i2c_read_nak();          /* 读取一个字节数据 */
    i2c_stop();

    return dat;
}

void e2_write_byte(unsigned char addr, unsigned char dat)
{
    i2c_start();
    i2c_write(0x50 << 1);       /* 寻址器件，后续为写操作 */
    i2c_write(addr);            /* 写入存储地址 */
    i2c_write(dat);             /* 写入一个字节数据 */
    i2c_stop();
}

