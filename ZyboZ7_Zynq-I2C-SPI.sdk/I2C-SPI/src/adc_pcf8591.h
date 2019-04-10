#ifndef SRC_ADC_PCF8591_H_
#define SRC_ADC_PCF8591_H_

#define pcdADC_i2cAddressBase 0x48

void pcfADC_setupWithBaseAddress();
void pcfADC_setupWithaddress(unsigned char address);
unsigned char pcfADC_getSample();
void pcfADC_setChannel(unsigned char channel);

#endif /* SRC_ADC_PCF8591_H_ */
