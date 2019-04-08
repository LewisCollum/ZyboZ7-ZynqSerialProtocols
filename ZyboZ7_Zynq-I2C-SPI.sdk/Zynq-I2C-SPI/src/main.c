#include "xparameters.h"
#include "xiicps.h"
#include "adc_pcf8591.h"
#include "timer.h"

#include "xspips.h"
#include "xscugic.h"
#include "xil_exception.h"

#define i2cControllerDeviceId XPAR_XIICPS_0_DEVICE_ID
#define i2cSlaveAddress 0x48

#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID		XPAR_XSPIPS_1_INTR
//static XScuGic IntcInstance;
static XSpiPs SpiInstance;

enum YML40Channel {
	photoresistor, thermistor, custom, potentiometer
} channel;

unsigned char adcSample;
unsigned char send;


void setup() {
	pcfADC_setupWithBaseAddress();
	pcfADC_setChannel(potentiometer);

	XSpiPs_Config *SpiConfig;
	SpiConfig = XSpiPs_LookupConfig(SPI_DEVICE_ID);
	XSpiPs_CfgInitialize((XSpiPs*) &SpiInstance, SpiConfig, SpiConfig->BaseAddress);
	XSpiPs_SelfTest((XSpiPs*) &SpiInstance);

	XSpiPs_SetOptions((XSpiPs*) &SpiInstance, XSPIPS_MASTER_OPTION);
	XSpiPs_SetClkPrescaler((XSpiPs*) &SpiInstance, XSPIPS_CLK_PRESCALE_256);

	send = 0x76;
	XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, &send, NULL, 1);
}

void run() {
	adcSample = pcfADC_getSample();

		//0x7F, 0x09 set baud to 250000
		//0x76 clear display
		//'1', '2', '3', ..., 'F'
		//TODO hex to decimal convert adcSample
		send = 0x0F;
		XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, &send, NULL, 1);
	}


int main() {
  setup();
  while(1) run();
  return 0;
}

void SPI_write_interrupt_handler()
{
	//XTmrCtr_SetOptions
}
