#ifndef _UART_H
#define _UART_H

#include <8052.h>

void config_uart(unsigned int baud);
void uart_send(unsigned char *buf, unsigned char len);
void uart_scan(void);

#endif
