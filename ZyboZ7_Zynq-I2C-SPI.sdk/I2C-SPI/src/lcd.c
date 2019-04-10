/*
 * lcd.c
 *
 *  Created on: Apr 8, 2019
 *      Author: ulab
 */
#include "xparameters.h"
#include "xil_io.h"

#define Enable 0x01
#define Busy 0x02
#define Mode 0x03

#define LCD XPAR_LCD_CONTROLLER_0_S00_AXI_BASEADDR

//Xuint32 *baseaddr_p = (Xuint32 *)XPAR_LCD_CONTROLLER_0_S00_AXI_BASEADDR;

void lcd_init()
{
	Xil_Out32(LCD, 0x33);
	Xil_Out32(LCD+4, 0x03);
}

