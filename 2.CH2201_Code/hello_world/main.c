/******************************************************************************
 * @file     main.c
 * @brief    eInkBoard的主函数
 * @date     29. Aug 2018
 * @v2_date  30. Apr 2021
 ******************************************************************************/

#include "HEADERS.H"

int main(void)
{
    printf("Hobbit power on.\n");

    eInk_init();
    printf("eInk module initialized.\n");

    COMM_init();
    printf("Communication module initialized.\n");

    printf("=========================\n"
           "eInkBoard v2 initialized.\n"
           "=========================\n");

    while (1)
    {
        COMM_task();
    }

    return 0;
}
