#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_exception.h"

#ifdef XPAR_INTC_0_DEVICE_ID
#include "xintc.h"
#include <stdio.h>
#else
#include "xscugic.h"
#include "xil_printf.h"
#endif

#define TMRCTR_DEVICE_ID	XPAR_TMRCTR_0_DEVICE_ID
#define TMRCTR_INTERRUPT_ID	XPAR_INTC_0_TMRCTR_0_VEC_ID

#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#else
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif /* XPAR_INTC_0_DEVICE_ID */


#ifdef XPAR_INTC_0_DEVICE_ID
#define INTC		XIntc
#define INTC_HANDLER	XIntc_InterruptHandler
#else
#define INTC		XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler
#endif /* XPAR_INTC_0_DEVICE_ID */

#define RESET_VALUE_SPI	 0xF0000000
#define RESET_VALUE_LCD  0x00F00000

void timer_interrupt_setup(INTC *IntcInstancePtr, XTmrCtr *TmrCtrInstancePtr, u16 DeviceId,
		 u16 IntrId, u8 TmrCtrNumber);

INTC InterruptController;  /* The instance of the Interrupt Controller */
XTmrCtr TimerCounterInst;

void timer_setup()
{
	XTmrCtr_Initialize(&TimerCounterInst, TMRCTR_DEVICE_ID);
	timer_interrupt_setup(&InterruptController, &TimerCounterInst, TMRCTR_DEVICE_ID, TMRCTR_INTERRUPT_ID, 0);
	timer_interrupt_setup(&InterruptController, &TimerCounterInst, TMRCTR_DEVICE_ID, TMRCTR_INTERRUPT_ID, 1);

	XTmrCtr_SetHandler(&TimerCounterInst, SPI_write_interrupt_handler, &TimerCounterInst);
	XTmrCtr_SetOptions(&TimerCounterInst, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

	XTmrCtr_SetResetValue(&TimerCounterInst, 0, RESET_VALUE_SPI);
	XTmrCtr_Start(&TimerCounterInst, 0);

	timer_interrupt_disable();
	return;
}

void timer_interrupt_setup(INTC *IntcInstancePtr, XTmrCtr *TmrCtrInstancePtr, u16 DeviceId,
		 u16 IntrId, u8 TmrCtrNumber)
{
	XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
	XIntc_Connect(IntcInstancePtr, IntrId, (XInterruptHandler)XTmrCtr_InterruptHandler,
				 (void *)&TimerCounterInst);
}
