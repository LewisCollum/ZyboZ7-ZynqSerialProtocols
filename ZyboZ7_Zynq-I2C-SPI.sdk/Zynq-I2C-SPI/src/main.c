#include "xparameters.h"
#include "xiicps.h"
#include "adc_pcf8591.h"

#define i2cControllerDeviceId XPAR_XIICPS_0_DEVICE_ID
#define i2cSlaveAddress 0x48

enum YML40Channel {
	photoresistor, thermistor, custom, potentiometer
} channel;

enum State {
	sampling, sendToLCD, sendTo7Segment
} state;

unsigned char adcSample;


void setup() {
	pcfADC_setupWithBaseAddress();
	pcfADC_setChannel(potentiometer);
}

void run() {
	switch(state) {
	case sampling:
		adcSample = pcfADC_getSample();
		break;

	case sendToLCD:
		state = sampling;
		break;

	case sendTo7Segment:
		state = sampling;
		break;
	}
}

int main() {
  setup();
  while(1) run();
  return 0;
}
