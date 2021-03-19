/*
 * Lab 6-7: Timers & ADC
 * shieldIO.c
 *
 * Created: 2/14/2021
 * Author: Alec Derwent
 *
 * This file was created to define functions and ports associated
 * with the Arduino Mega IO shield used to interact with main.c.
 * In includes four functions. The first, shield_io_init, initializes
 * the DDRs and PORTs to define correct inputs for the pushbuttons,
 * toggle switches, and LEDs. The toggle switches have a very unorthodox
 * connection to PORTE and PORTD from arduino pins 2-5, requiring both
 * ports to be set to the same to function as intended. The second function
 * is Read_PB, which simply reads the values from PINB and returns the values
 * within variable "data". The pushbuttons used utilize negative logic, so the
 * read in data was inverted before being returned from the function. 
 * The third function is Read_TS, a functin that utilizes the macro 
 * CHECK_BITIO() (detailed in shieldIO.h) to read the bits in the correct 
 * order, then shifting them to create a 4 bit sequence that can be returned
 * as variable "data". The final function is Set_LED, which simply outputs
 * its parameter "LED" of type uint8_t to its associated ouput port PORTA.
 *
 * Hardware
 *        Push Buttons          PORTB.0-3
 *		  Toggle Switches		PORTE.3-5, PORTG.5
 */ 
#include "shieldIO.h"

void shield_io_init(void)
{
	// PushButton Initializations
	DDRB = (1<<PB3) | (1<<PB2) | (1<<PB1) | (1<<PB0);
	PORTB = (1<<PB3) | (1<<PB2) | (1<<PB1) | (1<<PB0);
	
	// TS Initializations
	DDRE = 0x00;
	PORTE = 0xFF;
	DDRG = 0x00;
	PORTG = 0xFF;
	
	
	// LED Initializations
	DDRA = 0xFF;
	PORTA = 0x00;
	
}

uint8_t Read_PB(void)
{
	// read in inputs from pushbuttons to variable "data"
	uint8_t data = ~(PINB & ( (1<<PB3) | (1<<PB2) | (1<<PB1) | (1<<PB0)));
	return data;
}

uint8_t Read_TS(void)
{
	// read in PINE.3 to variable "data". Shift "data" left one bit
	uint8_t data = CHECK_BITIO(PINE, 3);
	data = data << 1;
	
	// read in PING.5 to bit 0 of "data". Shift "data" left one bit
	data = data | CHECK_BITIO(PING, 5);
	data = data << 1;
	
	// read in PINE.5 to bit 0 of "data". Shift "data" left one bit
	data = data | CHECK_BITIO(PINE, 5);
	data = data << 1;
	
	// read in PINE.4 to bit 0 of "data". Return "data"
	data = data | CHECK_BITIO(PINE, 4);
	return data;
}

void Set_LED(uint8_t LED)
{
	// output LED input to PORTA
	PORTA = LED;
}
