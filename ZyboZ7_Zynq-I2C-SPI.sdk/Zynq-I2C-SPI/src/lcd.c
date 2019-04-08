/*
 * lcd.c
 *
 *  Created on: Apr 8, 2019
 *      Author: ulab
 */
#include "xparameters.h"
#include "xgpio.h"

#define Enable 0x01
#define Busy 0x02
#define Mode 0x03


XGpio Gpio;


void lcd_init()
{
	XGpio_Initialize(&Gpio, 1);
	XGpio_SetDataDirection(&Gpio, 1, Busy);
	while (1)
	{
		XGpio_DiscreteWrite(&Gpio, 1, Enable);
		for (int Delay = 0; Delay < 1000; Delay++);
		XGpio_DiscreteClear(&Gpio, 1, Enable);
	}
}

