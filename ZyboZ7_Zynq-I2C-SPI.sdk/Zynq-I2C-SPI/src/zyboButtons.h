#ifndef SRC_ZYBOBUTTONS_H_
#define SRC_ZYBOBUTTONS_H_

void zyboButtons_setup(void* buttonInterruptHandler);
unsigned char zyboButtons_read();
void zyboButtons_clearInterrupt();
void zyboButtons_enableInterrupt();
void zyboButtons_disableInterrupt();

#endif /* SRC_ZYBOBUTTONS_H_ */
