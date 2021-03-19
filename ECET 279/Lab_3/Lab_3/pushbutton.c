/*
* Lab 4-5: Washing Machine
* pushbutton.c
*
* Created: 2/14/2021 9:24:00 PM
* Author : Alec Derwent
*
*/

// Define baud rate to allow use of delay functions
#define F_CPU 16000000UL

// Include files
#include <avr/io.h> // standard IO
#include <util/delay.h> // delay functions

void PB_init(void)
{
	PB_Register = 0x00; //set Stepper_Register (DDRA) to output
	PB_Input = 0x00;     //initialize Stepper_Output (PORTA) as off
}

uint8_t readPB(void)
{
	return PB_Input;
}