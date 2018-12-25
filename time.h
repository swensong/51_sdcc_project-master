#ifndef _TIME_H

#include <8052.h>

extern unsigned char T0RH;
extern unsigned char T0RL;

void time0_init(unsigned int ms);

#endif
