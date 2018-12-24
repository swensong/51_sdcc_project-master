#ifndef _DS1302_H
#define _DS1302_H

#include <8052.h>

#define DS1302_CE P1_7
#define DS1302_CK P3_5
#define DS1302_IO P3_4

void init_ds1302(void);
unsigned char ds1302_single_read(unsigned char reg);
void ds1302_single_write(unsigned char reg, unsigned char dat);
unsigned char ds1302_byte_read(void);
void ds1302_byte_write(unsigned char dat);

#endif
