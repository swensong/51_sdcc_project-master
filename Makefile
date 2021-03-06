# 编译出可下载的.bin文件
all : main.bin

# 设定临时性环境变量
export CC = sdcc
export OBJCOPY = objcopy
export PACKIHX = packihx

# 读取当前工作目录
TOP = $(shell pwd)

# Where are include file  kept
INC_FLAGS = -I $(TOP)						\
			-I $(TOP)/hardware

# 中间文件
O_FILE = key.adb key.asm key.lst key.rel key.rst key.sym  \
		main.adb main.bin main.cdb main.ihx main.lst main.mem main.rel main.sym \
		main.asm main.hex main.lk main.map main.omf main.rst \
		time.asm  time.lst  time.rel  time.rst  time.sym \
		led.adb  led.asm  led.lst  led.rel  led.rst  led.sym \
		time.asm  time.lst  time.rel  time.rst  time.sym \
		uart.adb  uart.asm  uart.lst  uart.rel  uart.rst  uart.sym


# Options for developmentCFLAGS = -mmcs51 --debug 

# Options for release
# CFLAGS = -mmcs51 --std-sdcc89 -W

main.bin : main.hex
	$(OBJCOPY) -I ihex -O binary main.hex main.bin

main.hex : main.ihx
	$(PACKIHX) main.ihx > main.hex

main.ihx : main.c key.rel time.rel led.rel uart.rel
	$(CC) $(INC_FLAGS) $(CFLAGS) main.c key.rel time.rel led.rel uart.rel

key.rel : key.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) key.c

time.rel : time.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) time.c

led.rel : led.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) led.c

uart.rel : uart.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) uart.c

.PHONY : clean update

clean :
	-rm $(O_FILE)

update :
	sudo python stcflash.py --protocol 12 main.bin
