/*
This is a test program designed to allow testing of PWM control over RC servo motors.
 
 The program is written for the ATmega328P running at 16MHz.

 
 The program takes advantage of Fast PWM mode #14.  Mode 14 utilizes the ICR1 register to control the "TOP" of the PWM counter.
 This mode of operation allows the TOP of the PWM to be set to any value desired up to 65535.  This feature allows the frequency 
 to be controlled to a much tighter tolerance.
 
 For this example, the 16MHz clock is divided by 8 to produce a PWM clock source of 2MHz.  
 At 2MHz, it takes 20,000 ticks to produce the 10mSec (value for 100Hz) period to control the motor so ICR1 is set to 20,000.
 Note: at 2Mhz, each tick is 0.5uSec or to state it alternatively, the value loaded for a specific time delay in uSec must be multiplied by 2 ie. OCR1A = 1500 x 2;

 In this version of the code, a scanf is utilized to acquire new values for the output pulse.  This is a great tool for testing different values
		
 */ 

#include <avr/io.h>

#include <stdio.h>
#include "serial.c"

#define F_CPU 16000000UL
#include <util/delay.h>


int main(void)
{
	uint16_t PWM_value = 1500;		// set initial value to 1500 uS
	char ch;
	
	DDRB = 0xFF;		// all of Port B as an output - being lazy here
	DDRC = 0x00;		// Port C for input from the wireless module
	PORTC = 0x3F;		// turn on the pullup resistors
	
	init_UART();
	
	printf("Fast PWM RC Servo test program\n\r");
	

	// configure Timer 1 for mode 14 - Fast PWM with TOP controlled by ICR1
	TCCR1B = 0b00011000;				// set bits WGM13 and WGM12
	TCCR1A = 0b00000010;				// set bit WGM11 to complete mode #14 - FAST PWM with ICR1 as TOP
	TCCR1A = TCCR1A | 0b10100000;		// PWM mode = active high

	TCCR1B = TCCR1B | 0x02;				// set to system clock / 8
	
	ICR1 = 20000;						// controls the TOP of the PWM counter - for 100 Hz

	OCR1A = PWM_value * 2;		// each timer tick is 0.5 uS so must multiply the desired value by 2 to get into proper form
	OCR1B = PWM_value * 2;

    while(1)
    {
		printf("\n\rEnter a new PWM Value in uSec:");
		scanf("%u", &PWM_value);

		OCR1A = PWM_value * 2;
		OCR1B = PWM_value * 2;

}

