#include "uart.h"

__bit flag_frame = 0;
//__bit flag_txd = 0;
u8 cnt_rxd = 0;
u8 __pdata buf_rxd[64];

extern void uart_action(u8 *buf, u8 len);

/* 串口配置函数，baud-通信波特率 */
void uart_init(u16 baud)
{
  SCON = 0x50; /* 配置串口为模式1 */
  TMOD &= 0x0F;/* 清零T1的控制位 */
  TMOD |= 0x20;/* 配置T1为模式2 */
  TH1 = 256 - (11059200/12/32)/baud; /* 计算T1重载值 */
  TL1 = TH1;   /* 初值等于重载值 */
  ET1 = 0;     /* 禁止T1中断 */
  ES = 1;      /* 使能串口中断 */
  TR1 = 1;     /* 启动T1 */
}

/* 串口数据写入，即串口发送函数，buf-待发送数据的指针，len-指定的发送长度 */
void uart_write(u8 *buf, u8 len)
{
  while (len--) /* 循环发送所有字节 */
  {
    TI = 0;
    SBUF = *buf++; /* 发送一个字节数据 */
    while (TI == 0);
  }
}

/* 串口数据读取函数，buf-接收指针，len-指定的读取长度，返回值-实际读到的长度 */
u8 uart_read(u8 *buf, u8 len)
{
  u8 i;

  if (len > cnt_rxd)   /* 指定读取长度大于实际接收到的数据长度时 */
  {                    /* 读取长度设置为实际接搜到的数据长度 */
    len = cnt_rxd;
  }

  for ( i = 0; i < len; i++ )  /* 拷贝接收到的数据到接收指针上 */
  {
    *buf++ = buf_rxd[i];
  }

  cnt_rxd = 0;         /* 接收计数器清零 */

  return len;          /* 返回实际读取长度 */
}

/* 串口接收监控，由空闲时间判定帧结束，需在定时中断中调用，ms-定时间隔 */
void uart_rx_monitor(u8 ms)
{
  static u8 cnt_bkp = 0;
  static u8 idle_tmr = 0;

  if (cnt_rxd > 0)     /* 接收计数器大于0时，监控总线空闲时间 */
  {
    if ( cnt_bkp != cnt_rxd ) /* 接收计数器改变，即刚接收到数据时，清零空闲记时 */
    {
      cnt_bkp = cnt_rxd;
      idle_tmr = 0;
    }
    else                      /* 接收计数器未改变，即总线空闲时，累计空闲时间 */
    {
      if ( idle_tmr < 30 )    /* 空闲计时小于30ms时，持续累加 */
      {
        idle_tmr += ms;
        if ( idle_tmr >= 30 ) /* 空闲时间达到30ms时，即判定为一帧接收完毕 */
        {
          flag_frame = 1;     /* 设置帧接收完成标志 */
        }
      }
    }
  }
  else
  {
    cnt_bkp = 0;
  }
}

/* 串口驱动函数，监控数据帧的接收，调度功能函数，需在主循环中调用 */
void uart_driver(void)
{
  u8 len;
  u8 __pdata buf[40];

  if (flag_frame)             /* 有命令到达时，读取处理该命令 */
  {
    flag_frame = 0;
    len = uart_read(buf, sizeof(buf)); /* 将接收到的命令读取到缓冲区中 */
    uart_action(buf, len);    /* 传递数据帧，调用动作执行函数 */
  }
}

