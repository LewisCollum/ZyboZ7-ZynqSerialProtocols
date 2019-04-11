#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"

static void initializeButtons();
static void setButtonsToInputs();
static void initializeInterruptController();
static void connectGpioInterruptToButtonHandler();
static void registerExceptionHandlerForInterruptController();
static void enableInterrupt();
static void enableGpioInterrupt();

#define interruptControllerDeviceID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define buttonsID XPAR_AXI_GPIO_0_DEVICE_ID
#define gpioInterruptID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define buttonInterruptMask XGPIO_IR_CH1_MASK
#define buttonChannel 1

static XGpio buttons;
static XScuGic interruptController;

void zyboButtons_setup(void* handler) {
	initializeButtons();
	setButtonsToInputs();
	initializeInterruptController();
	connectGpioInterruptToButtonHandler(handler);
	enableInterrupt();
	registerExceptionHandlerForInterruptController();
}

unsigned char zyboButtons_read() {
	return XGpio_DiscreteRead(&buttons, buttonChannel);
}

void zyboButtons_clearInterrupt() {
	XGpio_InterruptClear(&buttons, buttonInterruptMask);
}

void zyboButtons_enableInterrupt() {
	XGpio_InterruptEnable(&buttons, buttonInterruptMask);
	XGpio_InterruptGlobalEnable(&buttons);
}

void zyboButtons_disableInterrupt() {
	XGpio_InterruptDisable(&buttons, buttonInterruptMask);
}


void initializeButtons() {
	XGpio_Initialize(&buttons, buttonsID);
}

void setButtonsToInputs() {
	XGpio_SetDataDirection(&buttons, buttonChannel, 0xFF);
}

void initializeInterruptController() {
	XScuGic_Config* icConfig;
	icConfig = XScuGic_LookupConfig(interruptControllerDeviceID);
	XScuGic_CfgInitialize(&interruptController, icConfig, icConfig->CpuBaseAddress);
}

void registerExceptionHandlerForInterruptController() {
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(
			XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			(XScuGic*) &interruptController);
	Xil_ExceptionEnable();
}

void connectGpioInterruptToButtonHandler(void* handler) {
	XScuGic_Connect(
			&interruptController,
			gpioInterruptID,
			(Xil_ExceptionHandler) handler,
			(void*) &buttons);
}

void enableInterrupt() {
	enableGpioInterrupt();
	zyboButtons_enableInterrupt();
}

void enableGpioInterrupt() {
	XScuGic_Enable(&interruptController, gpioInterruptID);
}
