#include <stdio.h>
#include "xparameters.h"
#include "xiicps.h"
#include "xspips.h"
#include "xscugic.h"
#include "xil_exception.h"

#include "adc_pcf8591.h"
#include "sparkfun7SD.h"
#include "zyboButtons.h"

static void buttonInterruptHandler();

enum YML40Channel {
	photoresistor, thermistor, custom, potentiometer
} channel;

enum State {
	sampling, sendToLCD, sendTo7Segment, readButtons, disabled
} volatile state;

volatile unsigned char adcSample;
volatile unsigned char buttons;

static void setup() {
	pcfADC_setupWithBaseAddress();
	pcfADC_setChannel(potentiometer);

	sparkfun7SD_setup();
	sparkfun7SD_clearDisplay();

	zyboButtons_setup(buttonInterruptHandler);
}

static void run() {
	//TODO change the state = ... to whatever is necessary (e.g. state = sendToLCD)
	switch(state) {
	case sampling:
		state = sendTo7Segment;
		adcSample = pcfADC_getSample();
		break;

	case sendToLCD:
		state = sampling;
		break;

	case sendTo7Segment:
		state = sampling;
		//TODO use timer to make this state less frequent
		sparkfun7SD_writeValueToScreen(adcSample);
		break;

	case readButtons:
		state = sampling;
		//TODO make the buttons do something
		buttons = zyboButtons_read();
		break;

	case disabled:
		break;
	}
}

int main() {
  setup();
  while(1) run();
  return 0;
}

static void buttonInterruptHandler() {
	state = readButtons;
	zyboButtons_clearInterrupt();
}

