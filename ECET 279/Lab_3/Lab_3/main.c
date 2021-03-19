/*
 * Lab 3: Stepper Motor
 * main.c
 *
 * Created: 2/7/2021 6:42:00 PM
 * Author : Alec Derwent
 *
 * This is a program designed to command a stepper motor,
 * with a separate stepper driver included to drive said motor.
 * It functions by listening to three pushbuttons, then going
 * through the number of revolutions specified.
 *
 * Hardware
 *		Pushbuttons				PORTC.0-3
 *
 */ 

#define F_CPU 16000000UL	//define baud rate

// include files
#include <avr/io.h> // standard IO
#include <util/delay.h> // delay functions
#include "stepper_motor.h" // includes functions and values from header file
#include "pushbutton.h"

// prototypes
void io_init(void);	// initialize pushbutton input

int main(void)
{
	
}

void io_init(void)
{	
	DDRC = 0x00;	//set PORTC to input
	PORTC = 0x00;	//initialize PORTC as no input (pullups in place)
}
