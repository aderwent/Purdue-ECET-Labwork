/*
* Lab 4-5: Washing Machine
* pushbutton.c
*
* Created: 2/14/2021 9:24:00 PM
* Author : Alec Derwent
*
*/

#include "pushbutton.h"

void PB_init(void)
{
	PB_Register = 0x00; //set Stepper_Register (DDRC) to input
	PB_Output = 0x00;     //initialize Stepper_Output (PORTC) as off
}

uint8_t Read_PB(void)
{
	uint8_t data = PB_Input;
	return data;
}