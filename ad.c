#include "ad.h"
#include "i2c.h"

unsigned char get_adc_value(unsigned char chn)
{
    unsigned char val;

    i2c_start();
    if (!i2c_write(0x48 << 1)) /* 寻址PCF8591，如果未应答，则停止操作并返回0 */
    {
        i2c_stop();
        return 0;
    }
    i2c_write(0x40 | chn);      /* 写入控制字节，选择转换通道 */
    i2c_start();
    i2c_write((0x48<<1) | 0x01); /* 寻址PCF8591，指定后续为读操作 */
    i2c_read_ack();              /* 先空读一个字节，提供采样转化时间 */
    val = i2c_read_nak();        /* 读取刚刚转换完的值 */
    i2c_stop();

    return val;
}

void set_dac_out(unsigned char val)
{
    i2c_start();
    if (!i2c_write(0x48 << 1))
    {
        i2c_stop();
        return;
    }
    i2c_write(0x40);
    i2c_write(val);
    i2c_stop();
}
