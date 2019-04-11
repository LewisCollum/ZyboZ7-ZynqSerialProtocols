#include <stdio.h>
#include "xparameters.h"
#include "xspips.h"
#include "sparkfun7SD.h"

#define segmentCount 4

static XSpiPs SpiInstance;

enum Command{
	send = 0x76,
};

void sendCommand(enum Command command);
void writeBuffer(char* buffer);
char* charToScreenArray(unsigned char value);

void sparkfun7SD_setup() {
	XSpiPs_Config *SpiConfig;
	SpiConfig = XSpiPs_LookupConfig(XPAR_XSPIPS_0_DEVICE_ID);
	XSpiPs_CfgInitialize((XSpiPs*) &SpiInstance, SpiConfig, SpiConfig->BaseAddress);
	XSpiPs_SelfTest((XSpiPs*) &SpiInstance);
	XSpiPs_SetOptions((XSpiPs*) &SpiInstance, XSPIPS_MASTER_OPTION);
	XSpiPs_SetClkPrescaler((XSpiPs*) &SpiInstance, XSPIPS_CLK_PRESCALE_256);
}

void sparkfun7SD_clearDisplay() {
	sendCommand(send);
}

void sparkfun7SD_writeValueToScreen(unsigned char value) {
	char* digits = charToScreenArray(value);
	writeBuffer(digits);
}

void sparkfun7SD_writeDigit(unsigned char digit) {
	XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, (unsigned char*) &digit, NULL, 1);
}

void writeBuffer(char* buffer) {
	XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, (unsigned char*) buffer, NULL, segmentCount);
}

void sendCommand(enum Command command) {
	XSpiPs_PolledTransfer((XSpiPs*) &SpiInstance, (unsigned char*) &command, NULL, 1);
}

char* charToScreenArray(unsigned char value) {
  static char buffer[4];
  for (char* iterator = &buffer[3]; iterator > &buffer[0]; --iterator) {
	*iterator = value % 10;
	value /= 10;
  }
  return buffer;
}
