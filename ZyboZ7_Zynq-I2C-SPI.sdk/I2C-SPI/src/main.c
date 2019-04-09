#include "xparameters.h"
#include "xiicps.h"
#include "adc_pcf8591.h"

#include "xspips.h"
#include "xscugic.h"
#include "xil_exception.h"

#define i2cControllerDeviceId XPAR_XIICPS_0_DEVICE_ID
#define i2cSlaveAddress 0x48

#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID		XPAR_XSPIPS_1_INTR
static XScuGic IntcInstance;
static XSpiPs SpiInstance;

enum YML40Channel {
	photoresistor, thermistor, custom, potentiometer
} channel;

enum State {
	sampling, sendToLCD, sendTo7Segment
} state;

unsigned char adcSample;
unsigned char send;


void setup() {
	pcfADC_setupWithBaseAddress();
	pcfADC_setChannel(potentiometer);

	XSpiPs_Config *SpiConfig;
	SpiConfig = XSpiPs_LookupConfig(SPI_DEVICE_ID);
	XSpiPs_CfgInitialize((XSpiPs*) &SpiInstance, SpiConfig, SpiConfig->BaseAddress);
	XSpiPs_SelfTest((XSpiPs*) &SpiInstance);

//	XScuGic_Config *IntcConfig;
//	Xil_ExceptionInit();
//	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
//	XScuGic_CfgInitialize((XScuGic*) &IntcInstance, IntcConfig, IntcConfig->CpuBaseAddress);
//	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
//				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
//				(XScuGic*) &IntcInstance);
//	XScuGic_Connect((XScuGic*) &IntcInstance, SPI_INTR_ID,
//				(Xil_ExceptionHandler)XSpiPs_InterruptHandler,
//				(void*) &SpiInstance);
//	XScuGic_Enable((XScuGic*) &IntcInstance, SPI_INTR_ID);
//	Xil_ExceptionEnable();

	XSpiPs_SetOptions((XSpiPs*) &SpiInstance, XSPIPS_MASTER_OPTION);
	XSpiPs_SetClkPrescaler((XSpiPs*) &SpiInstance, XSPIPS_CLK_PRESCALE_256);
//	XSpiPs_SetSlaveSelect((XSpiPs*) &SpiInstance, 0);

//	send = 0x7F;
//	XSpiPs_Transfer((XSpiPs*) &SpiInstance, &send, &receive, 1);
//
//	send = 0x09;
//	XSpiPs_Transfer((XSpiPs*) &SpiInstance, &send, &receive, 1);
	send = 0x76;
	XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, &send, NULL, 1);
}

void run() {
	switch(state) {
	case sampling:
		adcSample = pcfADC_getSample();
		state = sendTo7Segment;
		break;

	case sendToLCD:
		state = sampling;
		break;

	case sendTo7Segment:
		//0x7F, 0x09 set baud to 250000
		//0x76 clear display
		//'1', '2', '3', ..., 'F'
		//TODO hex to decimal convert adcSample
		send = 0x0F;
		XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, &send, NULL, 1);
		state = sampling;
		break;
	}
}

int main() {
  setup();
  while(1) run();
  return 0;
}

