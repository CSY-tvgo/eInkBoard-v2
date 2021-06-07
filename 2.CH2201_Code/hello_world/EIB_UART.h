/*
 * EIB_UART.h
 *  Created on: 2018年8月29日
 *      Author: Karbon
 *       Brief: 通过UART进行通信的函数
 */

#ifndef _EIB_UART_H
#define _EIB_UART_H

#include "HEADERS.H"

static usart_handle_t UART1_handle;
static volatile uint8_t rx1_async_flag = 0;
static volatile uint8_t tx1_async_flag = 0;
static volatile uint8_t rx1_hasbuffer_flag = 0;

static void UART1_callback(int32_t idx, uint32_t event);
void UART1_init();
uint8_t UART1_ifHasBuffer();
static int32_t UART1_send(const void *data);
static int32_t UART1_receive(void *data, uint32_t num);
int32_t UART1_wait_reply_async(char *buf);

static void UART1_callback(int32_t idx, uint32_t event)
{
    switch (event)
    {
    case USART_EVENT_SEND_COMPLETE:
        tx1_async_flag = 1;
        break;
    case USART_EVENT_RECEIVE_COMPLETE:
        rx1_async_flag = 1;
        break;
    case USART_EVENT_RECEIVED:
        rx1_hasbuffer_flag = 1;
        break;
    default:
        break;
    }
}

uint8_t UART1_ifHasBuffer()
{
    return rx1_hasbuffer_flag;
}

void UART1_init()
{
    int32_t ret;

    // init UART pin
    drv_pinmux_config(PA16, PA16_UART1_RX);
    drv_pinmux_config(PA17, PA17_UART1_TX);

    // init the UART
    UART1_handle = csi_usart_initialize(1, UART1_callback);

    // config the UART
    csi_usart_config(UART1_handle, 9600, USART_MODE_ASYNCHRONOUS, USART_PARITY_NONE, USART_STOP_BITS_1, USART_DATA_BITS_8);

    csi_usart_set_interrupt(UART1_handle, USART_INTR_READ, 1);
}

static int32_t UART1_send(const void *data)
{
    uint32_t num = strlen(data);
    int time_out = 0x7ffff;
    tx1_async_flag = 0;
    csi_usart_send(UART1_handle, data, num);
    while (time_out)
    {
        time_out--;
        if (tx1_async_flag == 1)
        {
            break;
        }
    }
    if (0 == time_out)
    {
        return -1;
    }
    tx1_async_flag = 0;
    return 0;
}

static int32_t UART1_receive(void *data, uint32_t num)
{
    int time_out = 0x7fffff;
    rx1_async_flag = 0;
    csi_usart_receive(UART1_handle, data, num);
    while (time_out)
    {
        time_out--;
        if (rx1_async_flag == 1)
        {
            break;
        }
    }
    if (0 == time_out)
    {
        return -1;
    }
    rx1_async_flag = 0;
    return 0;
}

int32_t UART1_readBuffer(char *buf)
{
    volatile uint32_t i = 0, len = 0;
    char ch;
    int errcode = 0;
    memset(buf, 0, sizeof(buf));
    for (i = 0; i < MAX_STRLEN; i++)
    {
        errcode = UART1_receive(&ch, 1);
        if (errcode == 0)
        {
            if ((ch == 0x0D) || (ch == 0x0A) || (ch == 0x00))
            {
                if (i < 2) // FIXME:这值可能要改
                {
                    continue;
                }
                else
                {
                    buf[len] = '\0';
                    csi_usart_flush(UART1_handle, USART_FLUSH_READ);
                    rx1_hasbuffer_flag = 0;
                    break;
                }
            }
            else
            {
                buf[len] = ch;
                len++;
                continue;
            }
        }
        else
        {
            return errcode;
            break;
        }
    }
    return len;
}

#endif
