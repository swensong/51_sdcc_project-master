#ifndef _MOTOR_H
#define _MOTOR_H

#include <8052.h>


void start_motor(unsigned long angle);
void stop_motor(void);
void motor_scan(void);

#endif
