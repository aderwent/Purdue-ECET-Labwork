/*
* Lab 4-5: Washing Machine
* pushbutton.h
*
* Created: 2/14/2021 9:23:00 PM
* Author : Alec Derwent
*
*
*/

// Define baud rate to allow use of delay functions
#define F_CPU 16000000UL

// Include files
#include <avr/io.h> // standard IO
#include <util/delay.h> // delay functions

// Stepper_Register to determine which port is required to be
// set to output; easy to change later on
#define PB_Register (DDRC)

// Stepper_output to whatever port is selected, easily changeable
// for later modification
#define PB_Input (PINC)

void PB_io(void);
uint8_t Read_PB(void);