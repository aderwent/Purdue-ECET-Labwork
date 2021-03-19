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

// prototypes
void io_init(void);	// initialize pushbutton input

int main(void)
{
    uint8_t n = 2;	// specify number of repetitions desired
	io_init();		// initialize IO ports
	uint8_t PushButton = PINC;	// define PushButton for switch
    while (1)
    {
		// continuously update PushButton when switch is not active
		PushButton = PINC & ( (1<<PC0) | (1<<PC1) | (1<<PC2) | (1<<PC3));
		switch (PushButton)
		{
			case Wave_Step:			//if SW0, start wave step mode
			{
				//Tell the driver to operate in Wave mode for n repetitions
				Stepper_Drive('W',n);
				break;
			}
			case Full_Step:			//if SW1, start full step mode
			{
				//Tell the driver to operate in Full mode for n repetitions
				Stepper_Drive('F',n);	
				break;
			}
			case Half_Step:			//if SW2, start half step mode
			{
				//Tell the driver to operate in Half mode for n repetitions
				Stepper_Drive('H',n);	
				break;
			}
			case Set_Angle:			//if SW3, rotate specified angle
			{
				//Tell the driver to move the motor a specific angle
				Stepper_Position();
				break;
			}
		}
		Stepper_Output = 0x00;		//clear output when done
    }
}

void io_init(void)
{	
	DDRC = 0x00;	//set PORTC to input
	PORTC = 0x00;	//initialize PORTC as no input (pullups in place)
}
