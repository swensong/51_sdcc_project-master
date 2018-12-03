#ifndef __UART_H
#define __UART_H

#include <8052.h>
#include "stdint.h"

void uart_init(u16 baud);
void uart_write(u8 *buf, u8 len);
u8 uart_read(u8 *buf, u8 len);
void uart_rx_monitor(u8 ms);
void uart_driver(void);

#endif
