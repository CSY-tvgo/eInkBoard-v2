/*
 * EIB_SPI.h
 *  Created on: 2018年9月10日
 *      Author: Livie
 *       Brief: 通过SPI进行通信的函数
 */

// 赤焰剑   墨水屏
//   PB2 -- SCK
//   PB3 -- SDI
//   PA7 -- CS
//  PA12 -- DC
//   PA8 -- BUSY
//  PA13 -- RST

#ifndef _EIB_SPI_H
#define _EIB_SPI_H

#include "HEADERS.H"

volatile uint8_t send_buf[1];
volatile static gpio_pin_handle_t *RST = NULL;
volatile static gpio_pin_handle_t *CS = NULL;
volatile static spi_handle_t spi_handle;
volatile static gpio_pin_handle_t *BUSY = NULL;
volatile static gpio_pin_handle_t *DC = NULL;
volatile static bool int_flag = 1;

static void gpio_interrupt_handler(int32_t idx)
{
    int_flag = 0;
}

static void spi_event_cb_fun(int32_t idx, spi_event_e event)
{
    printf("\nspi_event_cb_fun:%d\n", event);
}

uint32_t spi_init()
{
    uint32_t ret = -1;
    spi_handle = csi_spi_initialize(0, spi_event_cb_fun); //初始化
    if (spi_handle == NULL)
    {
        //fail
        printf("\ninitialize failed");
        return -1;
    }
    ret = csi_spi_power_control(spi_handle, DRV_POWER_FULL); //全速运行
    if (ret < 0)
    {
        // power control failed
        printf("\npower control failed\n");
        return -1;
    }
    ret = -1;
    //config spi as: baud 115200,master mode ,mode= 0,MSB2LSB, 7bit
    ret = csi_spi_config_mode(spi_handle, SPI_MODE_MASTER);
    if (ret < 0)
    {
        //config fail
        printf("config master mode failed\n");
        return ret;
    }
    ret = -1;
    ret = csi_spi_config_block_mode(spi_handle, 1);
    if (ret < 0)
    {
        //config fail
        printf("config block mode failed\n");
        return ret;
    }
    ret = -1;
    ret = csi_spi_config_baudrate(spi_handle, 115200);
    if (ret < 0)
    {
        //config fail
        printf("config baudrate failed\n");
        return ret;
    }
    ret = -1;
    ret = csi_spi_config_datawidth(spi_handle, 8);
    if (ret < 0)
    {
        //config fail
        printf("config datawidth failed\n");
        return ret;
    }
    ret = -1;
    ret = csi_spi_config_bit_order(spi_handle, SPI_ORDER_MSB2LSB);
    if (ret < 0)
    {
        //config fail
        printf("config bit order failed\n");
        return ret;
    }
    ret = -1;
    ret = csi_spi_config_format(spi_handle, SPI_FORMAT_CPOL0_CPHA0);
    if (ret < 0)
    {
        //config fail
        printf("config format failed\n");
        return ret;
    }
    return ret;
}
void GPIO_INIT()
{
    drv_pinmux_config(PB2, 0);  // SCK
    drv_pinmux_config(PB3, 0);  // SDI
    drv_pinmux_config(PA7, 0);  // CS
    drv_pinmux_config(PA12, 4); // DC
    drv_pinmux_config(PA8, 4);  // BUSY
    drv_pinmux_config(PA13, 4); // RST
    DC = csi_gpio_pin_initialize(PA12, gpio_interrupt_handler);
    BUSY = csi_gpio_pin_initialize(PA8, NULL);
    RST = csi_gpio_pin_initialize(PA13, gpio_interrupt_handler);
    CS = csi_gpio_pin_initialize(PA7, gpio_interrupt_handler);

    csi_gpio_pin_config_mode(DC, GPIO_MODE_PULLNONE);
    csi_gpio_pin_config_direction(DC, GPIO_DIRECTION_OUTPUT);
    csi_gpio_pin_set_irq(DC, GPIO_IRQ_MODE_RISING_EDGE, 0);
    csi_gpio_pin_config_mode(BUSY, GPIO_MODE_PULLUP);
    csi_gpio_pin_config_direction(BUSY, GPIO_DIRECTION_INPUT);
    csi_gpio_pin_write(BUSY, 1);
    csi_gpio_pin_set_irq(BUSY, GPIO_IRQ_MODE_RISING_EDGE, 0);
    csi_gpio_pin_config_mode(RST, GPIO_MODE_PULLNONE);
    csi_gpio_pin_config_mode(CS, GPIO_MODE_PULLNONE);
    csi_gpio_pin_config_direction(CS, GPIO_DIRECTION_OUTPUT);
    csi_gpio_pin_config_direction(RST, GPIO_DIRECTION_OUTPUT);
}

void EPD_W21_INIT()
{
    csi_gpio_pin_write(CS, 0);
    csi_gpio_pin_write(RST, 0);
    mdelay(1000);
    csi_gpio_pin_write(RST, 1);
    mdelay(1000);
}

uint32_t check_busy()
{
    uint8_t send_buf[1] = {0x71};
    uint32_t ret = -1;
    bool value = 1;
    do
    {
        csi_spi_send(spi_handle, send_buf, sizeof(send_buf));
        ret = csi_gpio_pin_read(BUSY, &value);
        if (ret < 0)
        {
            printf("ERROR IN CHECK BUSY!\n");
            return ret;
        }
    } while (value);
    mdelay(200);
    return ret;
}

uint32_t send_com(uint8_t command)
{
    uint32_t ret = -1;
    csi_gpio_pin_write(CS, 1);
    csi_gpio_pin_write(CS, 0);
    csi_gpio_pin_write(DC, 0);
    send_buf[0] = command;
    ret = csi_spi_send(spi_handle, send_buf, sizeof(send_buf));
    csi_gpio_pin_write(CS, 1);
    if (ret < 0)
    {
        printf("send wrong!\n");
        return ret;
    }
    else
        return ret;
}

uint32_t send_data(uint8_t data)
{
    uint32_t ret = -1;
    send_buf[0] = data;

    csi_gpio_pin_write(CS, 1);
    csi_gpio_pin_write(CS, 0);
    csi_gpio_pin_write(DC, 1);
    ret = csi_spi_send(spi_handle, send_buf, sizeof(send_buf));
    csi_gpio_pin_write(CS, 1);
    if (ret < 0)
    {
        printf("WRONG SEND DATA!!\n");
        return ret;
    }
    else
        return ret;
}

uint32_t Display(char *pixel)
{
    uint32_t i;
    uint32_t ret = -1;
    EPD_W21_INIT();

    send_com(0x06);
    send_data(0x17);
    send_data(0x17);
    send_data(0x17);

    send_com(0x04);

    ret = check_busy();
    if (ret < 0)
    {
        printf("CHECK BUSY ERROR!!!\n");
        return ret;
    }
    send_com(0x00);
    send_data(0x1f);
    //
    send_com(0x10);
    for (i = 0; i < 15000; i++)
    {
        send_data(0x00);
    }
    mdelay(2);
    send_com(0x13);
    for (i = 0; i < 15000; i++)
    {
        send_data(0xff - pixel[i]);
    }
    mdelay(2);
    //
    send_com(0x12);
    mdelay(100);

    ret = check_busy();
    if (ret < 0)
    {
        printf("CHECK BUSY ERROR!!!\n");
        return ret;
    }
    /******************power off sequence****************/
    send_com(0x50);
    send_data(0x17);
    send_com(0x02);

    ret = check_busy();
    if (ret < 0)
    {
        printf("CHECK BUSY ERROR!!!\n");
        return ret;
    }

    send_com(0x07);
    send_data(0XA5);

    mdelay(100);
    return 1;
}

#endif
