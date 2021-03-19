/*
 * Lab 6-7: Timers & ADC
 * main.c
 *
 * Created: 3/1/2021 12:29:48 PM
 * Author : Alec Derwent
 *
 * This program drives a DC motor at speeds determined by potentiometers, or ramping
 * up to a desired speed after a set amount of time. The main file simply reads in
 * pushbutton and toggle switch inputs, deciding what operation to start based on
 * input combinations. Once I/O is initialized, the program reads in the inputs.
 * If no input is provided, an LED will flash on and off (500ms on, 500ms off).
 *
 * Hardware
 *        LEDs					PORTA.0-7
 *		  Timer 1				PB.5
 *		  Timer 3				PE.3
 */ 

#include <avr/io.h> 		// include avr/io library for Arduino connections
#include "shieldIO.h"
#include "customDelay.h"
#include "ADC.h"

// introduce CHECK_BIT macro to check if desired bit in a number is 1.
// outputs 1 if true, 0 if false. Usage: CHECKBIT(var, n-1)
#define CHECK_BIT(var,pos) (((var)>>(pos)) & 1)

// prototype functions for this file
void io_init(void);
void flash_LED(void);

int main(void)
{
    io_init();	// run initialization function
    while (1) 
    {
		// check if Pushbutton 1 is pressed
		uint8_t pushbutton1 = CHECK_BIT(Read_PB(), 0);
		if (pushbutton1 == 1)
		{
			// clear the timer if not clear, start ramping up function
			pwm_ADC_mod(0, 'C');
			pwm_timer1('R');
			
			// wipe pushbutton input
			pushbutton1 = 0;
		}
		
		// check if Pushbutton 2 is pressed
		uint8_t pushbutton2 = CHECK_BIT(Read_PB(), 1);
		if (pushbutton2 == 1)
		{
			// turn off the timer and change port to normal
			pwm_timer1('S');
			pushbutton2 = 0;
		}
		
		// check if Pushbutton 3 is pressed
		uint8_t pushbutton3 = CHECK_BIT(Read_PB(), 2);
		if (pushbutton3 == 1)
		{
			// set output of timer 3 to 1 Hz
			pwm_ADC_mod(1, 'F');
			pushbutton3 = 0;
		}
		
		// check if Pushbutton 4 is pressed
		uint8_t pushbutton4 = CHECK_BIT(Read_PB(), 3);
		if (pushbutton4 == 1)
		{
			// set output of timer 3 to 10 Hz
			pwm_ADC_mod(10, 'F');
			pushbutton4 = 0;
		}
		
		// update toggle switch carrier variables
		uint8_t toggleSwitch1 = CHECK_BIT(Read_TS(), 1);
		uint8_t toggleSwitch2 = CHECK_BIT(Read_TS(), 2);
		
		// if only toggle switch 1 is toggled
		if (toggleSwitch1 == 1 && toggleSwitch2 == 0)
		{
			// latch in this function until switch is turned off
			while(toggleSwitch1 == 1)
			{
				// read ADC0 value
				uint16_t ADC_value = read_ADC_channel_10bit(0);
				
				// convert ADC_value to between 0-99, output as duty cycle on TIMER1
				// bugs occurred with 1-100 with unexpected value over 100 causing 
				// overflow
				uint16_t ADC_converted = (ADC_value * 99UL)/1023;
				pwm_ADC_mod(ADC_converted, 'D');
				
				// update toggle switch 1 variable
				toggleSwitch1 = CHECK_BIT(Read_TS(), 1);
			}
			// clear output
			pwm_ADC_mod(0, 'C');
		}
		
		// if only toggle switch 2 is toggled
		if (toggleSwitch1 == 0 && toggleSwitch2 == 1)
		{
			// latch in this function until switch is turned off
			while(toggleSwitch2 == 1)
			{
				// read ADC1 value
				uint16_t ADC_value = read_ADC_channel_10bit(1);
				
				// convert ADC_value to between 1-10, output as frequency on TIMER3
				uint16_t ADC_converted = (ADC_value * 9UL)/1023 + 1;
				pwm_ADC_mod(ADC_converted, 'F');
				
				// update toggle switch 2 variable
				toggleSwitch2 = CHECK_BIT(Read_TS(), 2);
			}
			// clear output
			pwm_ADC_mod(0, 'C');
		}
		
		// call function to flash LED1	
		flash_LED();
    }
}

void io_init(void)
{
	// call external init functions
	shield_io_init();
	init_timer0();
	init_timer1();
	init_timer3();
	init_ADC();
	
	// set LED output
	DDRA = 0xFF;
	PORTA = 0x00;
	
	// set pin to output for TIMER1
	DDRB = (1 << PB5);
	PORTB = ~(1 << PB5);
	
	// set pin to output for TIMER3
	DDRE = (1 << PE3);
	PORTE = ~(1 << PE3);
}

void flash_LED(void)
{
	// turn on LED1
	PORTA |= 0x01;
	
	// delay 500 ms
	delay_ms(500);
	
	// turn off LED1
	PORTA &= ~0x01;
	
	// delay 500 ms
	delay_ms(500);
}

