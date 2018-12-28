#ifndef _DS18B20_H
#define _DS18B20_H

#include <8052.h>
#include "stdint.h"

#define IO_18B20 P3_2

unsigned char get_18b20_ack(void);
void write_18b20(unsigned char dat);
unsigned char read_18b20(void);
unsigned char start_18b20(void);
unsigned char return_behind_data(unsigned char dat);
unsigned char get_18b20_temp(int *temp);


#endif
