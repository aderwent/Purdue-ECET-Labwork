/*
 * stepper_motor.c
 *
 * Created: 2/7/2021 6:42:00 PM
 * Author : Alec Derwent
 *
 * This is a program designed to drive a stepper motor,
 * containing a function to rotate the motor for with
 * a given mode for a specified number of revolutions.
 *
 * Hardware
 *		Stepper Motor			PORTA.0-3
 *
 */ 

#include "stepper_motor.h"

// Define Wave, Full, and Half value arrays
uint8_t Wave[4] = {0x01, 0x02, 0x04, 0x08};
uint8_t Full[4] = {0x03, 0x06, 0x0C, 0x09};
uint8_t Half[8] = {0x09, 0x01, 0x03, 0x02, 0x06, 0x04, 0x0C, 0x08};
	

void Stepper_Drive(char mode, uint8_t revolutions)
{
	uint16_t steps;	//initialize steps variable
	
	// begin switch statement to determine which mode to use
	switch (mode)
	{
		//if wave step is selected
		case 'W':
			//number of steps for 1 revolution * # of revolutions
			steps = 512 * revolutions;
			
			//for number of steps
			for(uint16_t i = 0; i < steps; i++)
			{
				// cycle through the values stored in the Wave array
				for (uint8_t j = 0; j < 4; j++)
				{
					Stepper_Output = Wave[j];
					_delay_ms(6);
				}
			}
		
		break;
		
		case 'F':
			//number of steps for 1 revolution * # of revolutions
			steps = 512 * revolutions;
			
			//for number of steps
			for(uint16_t i = 0; i < steps; i++)
			{
				// cycle through the values stored in the Full array
				for (uint8_t j = 0; j < 4; j++)
				{
					Stepper_Output = Full[j];
					_delay_ms(4);
				}
			}
		
		break;
		
		case 'H':
			//number of steps for 1 revolution * # of revolutions
			steps = 512 * revolutions;
			
			//for number of steps
			for(uint16_t i = 0; i < steps; i++)
			{
				// cycle through the values stored in the Half array
				for (uint8_t j = 0; j < 8; j++)
				{
					Stepper_Output = Half[j];
					_delay_ms(6);
				}
			}
		
		break;
	}
}

void Stepper_Position(void)
{
	uint32_t steps;	//initialize steps variable
	//number of steps for 1 revolution * # of revolutions
	steps = (512UL * Angle)/360;
	
	//for number of steps
	for(uint16_t i = 0; i < steps; i++)
	{
		// cycle through the values stored in the Wave array
		for (uint8_t j = 0; j < 4; j++)
		{
			Stepper_Output = Wave[j];
			_delay_ms(6);
		}
	}
}