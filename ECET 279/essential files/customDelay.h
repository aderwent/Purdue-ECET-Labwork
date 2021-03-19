/*
 * Lab 6-7: Timers & ADC
 * customDelay.h
 *
 * Created: 3/1/2021 12:34:23 PM
 *  Author: Alec
 *
 * A header file for customDelay.c. This file simply includes the avr/io.h header
 * file, then prototypes all functions required for customDelay.c.
 *
 *	Hardware:
 *		N/A			N/A
 */ 


#ifndef CUSTOMDELAY_H_
#define CUSTOMDELAY_H_

#define F_CPU 16000000UL

#include <avr/io.h>

// prototype functions for associated .c file
void init_timer0(void);
void init_timer1(void);
void init_timer3(void);
void delay_ms(uint16_t delay);
void pwm_timer1(char mode);
void pwm_ADC_mod(uint32_t input, char mode);
void ramp_up_delay_n_steps(uint8_t start, uint8_t end, 
					uint16_t mS_time, uint8_t num_steps);


#endif /* CUSTOMDELAY_H_ */