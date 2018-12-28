#ifndef _I2C_H
#define _I2C_H

#include <8052.h>
#include "stdint.h"

#define I2CDelay() {_nop_();_nop_();_nop_();_nop_();}

#define I2C_SCL P3_7
#define I2C_SDA P3_6

void e2_write_byte(unsigned char addr, unsigned char dat);
void i2c_start(void);
void i2c_stop(void);
unsigned char i2c_write(unsigned char dat);
unsigned char e2_read_byte(unsigned char addr);
unsigned char i2c_read_ack(void);
unsigned char i2c_read_nak(void);
void e2_write(unsigned char *buf, unsigned char addr, unsigned char len);
void e2_read(unsigned char *buf, unsigned char addr, unsigned char len);

#endif
