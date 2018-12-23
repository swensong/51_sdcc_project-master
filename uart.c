#include "uart.h"

void config_uart(unsigned int baud)
{
    SCON = 0x50;
    TMOD &= 0x0F;
    TMOD |= 0x20;
    TH1 = 256 - (11059200/12/32)/baud;
    TL1 = TH1;
    ET1 = 0;
    ES = 1;
    TR1 = 1;
}

void uart_send(unsigned char *buf, unsigned char len)
{
    while (len--)
    {
        TI = 0;
        SBUF = *buf++;          /* 发送一个字节数据 */
        while (!TI);           /* 等待该字节发送完成 */
    }
}

void uart_scan(void)
{
    if (RI)
    {
        RI = 0;
    }
    if (TI)
    {
    }
}
