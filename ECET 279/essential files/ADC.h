/*
 * Lab 6-7: Timers & ADC
 * ADC.h
 *
 * Created: 3/12/2021 8:28:33 PM
 * Author: Alec Derwent
 *
 * This file is an include file designed to initialize
 * variables and prototype functions for ADC.c. It is referenced
 * in both the main function and ADC.c.
 *
 * Hardware
 *        N/A			N/A
 */ 


#ifndef ADC_H_
#define ADC_H_

#define F_CPU 16000000UL

#include <avr/io.h>

// prototype functions for associated .c file
void init_ADC(void);
uint8_t read_ADC(void);
uint8_t read_ADC_channel_8bit(uint8_t channel);
uint16_t read_ADC_channel_10bit(uint8_t channel);

#endif /* ADC_H_ */