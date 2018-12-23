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
O_FILE = main.adb main.bin main.cdb main.ihx main.lst main.mem main.rel main.sym \
		main.asm main.hex main.lk main.map main.omf main.rst \
		led.adb  led.asm  led.lst  led.rel  led.rst  led.sym \
		uart.adb  uart.asm  uart.lst  uart.rel  uart.rst  uart.sym \
		time.adb  time.asm  time.lst  time.rel  time.rst  time.sym \
		seg.adb  seg.asm  seg.lst  seg.rel  seg.rst  seg.sym \
		lcd1602.adb  lcd1602.asm  lcd1602.lst  lcd1602.rel  lcd1602.rst  lcd1602.sym \
		key.adb  key.asm  key.lst  key.rel  key.rst  key.sym \
		motor.adb  motor.asm  motor.lst  motor.rel  motor.rst  motor.sym \


# Options for developmentCFLAGS = -mmcs51 --debug

# Options for release
# CFLAGS = -mmcs51 --std-sdcc89 -W

main.bin : main.hex
	$(OBJCOPY) -I ihex -O binary main.hex main.bin

main.hex : main.ihx
	$(PACKIHX) main.ihx > main.hex

main.ihx : main.c led.rel time.rel seg.rel lcd1602.rel key.rel motor.rel uart.rel
	$(CC) $(INC_FLAGS) $(CFLAGS) main.c led.rel time.rel seg.rel lcd1602.rel key.rel motor.rel uart.rel

led.rel : led.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) led.c

time.rel : time.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) time.c

seg.rel : seg.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) seg.c

lcd1602.rel : lcd1602.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) lcd1602.c

key.rel : key.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) key.c

motor.rel : motor.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) motor.c

uart.rel : uart.c
	$(CC) -c $(INC_FLAGS) $(CFLAGS) uart.c

.PHONY : clean update

clean :
	-rm $(O_FILE)

update :
	sudo python stcflash.py --protocol 89 main.bin
