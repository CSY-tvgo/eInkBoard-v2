/*
 *  EIB_8266command.h   // 原名为: EIB_NBcommand.h
 *  Created on: 2018年9月11日
 *          v2: 2021年5月12日
 *      Author: Karbon
 *       Brief: 通过8266模块收发指令相关
 */

#ifndef _EIB_8266COMMAND_H
#define _EIB_8266COMMAND_H

#include "HEADERS.H"

volatile char comdata[MAX_STRLEN];
volatile int bufferlen = 0;

volatile long lastFollowerNum = -1;

void COMM_init();
void COMM_task();

void COMM_init()
{
    UART1_init();
    mdelay(1000);
}

void COMM_task()
{
    int i = 0;
    int j;
    char str_num[10], str_time[50];
    long thisFollowerNum;

    bufferlen = UART1_readBuffer(comdata);
    if (bufferlen < 0)
    {
        printf("recv error, code %d\n", bufferlen);
    }
    else
    {
        printf("recv:%d,%s\n", bufferlen, comdata);

        if (bufferlen > 25) // 长度有效
        {
            for (i = 0; i < bufferlen; i++)
            {
                if (comdata[i] == ',')
                {
                    j = i;
                    break;
                }
            }

            strncpy(str_num, comdata, j);

            str_time[0] = '(';
            str_time[1] = '\0';
            strcat(str_time, comdata + j + 1);
            strcat(str_time, ")");

            thisFollowerNum = atol(str_num);

            if ((thisFollowerNum > 0) && (thisFollowerNum != lastFollowerNum))
            {
                lastFollowerNum = thisFollowerNum;
                eInk_showNum(thisFollowerNum, str_time);
            }
        }
    }
}

#endif
