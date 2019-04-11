#include "xparameters.h"
#include "xiicps.h"
#include "adc_pcf8591.h"

#define i2c_deviceID XPAR_XIICPS_0_DEVICE_ID
#define i2c_clockRate 100000
#define channelBaseCommand 0x40

XIicPs i2c_controller;
unsigned char address;

static void send(unsigned char data);
static void i2c_setup();

void pcfADC_setupWithBaseAddress() {
	address = 0x48;
	i2c_setup();
}

void pcfADC_setupWithAddress(unsigned char address) {
	address = address;
	i2c_setup();
}

void pcfADC_setChannel(unsigned char channel) {
	send(channelBaseCommand | channel);
}

unsigned char pcfADC_getSample() {
	unsigned char sample[2];
	XIicPs_MasterRecvPolled(&i2c_controller, (unsigned char*) &sample, 2, address);
	return sample[1];
}

void pcfADC_fillSampleBuffer(unsigned char* buffer, unsigned char numberOfSamples) {
	XIicPs_MasterRecvPolled(&i2c_controller, buffer, numberOfSamples, address);
}


static void send(unsigned char data) {
	XIicPs_MasterSendPolled(&i2c_controller, (unsigned char*) &data, 1, address);
	while (XIicPs_BusIsBusy(&i2c_controller));
}

static void i2c_setup() {
	XIicPs_Config* config;
	config = XIicPs_LookupConfig(i2c_deviceID);
	XIicPs_CfgInitialize(&i2c_controller, config, config->BaseAddress);
	XIicPs_SelfTest(&i2c_controller);
	XIicPs_SetSClk(&i2c_controller, i2c_clockRate);
}
