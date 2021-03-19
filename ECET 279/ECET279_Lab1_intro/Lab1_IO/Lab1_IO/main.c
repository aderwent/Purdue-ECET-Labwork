/*
 *	FileName: Lab1_IO.c
 *
 * Created: 1/25/2021 1:49:25 PM
 * Author : Alexander Derwent
 *
 * Operations:
 *	This program will read inputs from three pushbuttons, starting, pausing,
 *	or reseting a sweeping pattern of LEDs. If the start button is pressed,
 *  eight LEDs will turn on from right to left, before turning off in reverse
 *	order. This will happen once per press of the start button. If the pause button 
 *	is pressed and held during this time, the number of LEDs on will not change 
 *	until it is released. If the reset button is pressed, it will force all LEDs 
 *  to turn off and end the sweeping function. The sweeping function will not
 *	begin again until the start button is pressed.
 *
 * Hardware 
 *		Inputs
 *			Pushbuttons (Start, Pause, Reset) trig -> PORTC.0, PORTC.1, PORTC.2
 *		Outputs
 *			LEDs -> PORTA
 */ 

#define F_CPU 16000000UL

//inclusions
#include <avr/io.h>
#include <util/delay.h>

//prototypes
void io_init(void);		 // prototype IO setup function
void LED_Sweep(uint8_t); // prototype LED sweeping function

//definitions of Start, Pause, and Reset pushbutton bits
#define Start		01
#define Pause		02
#define Reset		04

int main(void)
{
    io_init();			//initialize IO
	uint8_t input_sw;	//declare variable input_sw
    while (1)			//begin while(1) loop
    {
		//Procedure 1
		//PORTB = PORTB ^ 0x80;		//set led on pin13 to high (p1)
		//_delay_ms(500);		//delay by 500ms
		
		//Procedure 5
		input_sw = PINC & ( (1<<PC0) | (1<<PC1) | (1<<PC2)); // define input_sw
		LED_Sweep(input_sw); // begin LED_Sweep function with parameter input_sw
		
    }
}

void io_init(void)
{
	//Procedure 1
	//DDRB = 0x80;		//LED 13 set as output
	//PORTB = 0x00;		//turn off LED at initialization
	
	//Define LED outputs on PORTA
	DDRA = 0xFF;		//set port A pins 0-7 to outputs
	PORTA = 0x00;		//set output of PORTA pins to low
	
	//Define Pushbutton inputs on PORTC
	DDRC = 0x00;
	PORTC = 0x00;
}

void LED_Sweep(uint8_t input_sw)
{
	if (input_sw & Start) //if the start button is pressed
	{
		for(int8_t i = 0; i < 16; i++) //begin for loop for 16 states
		{ 
			
			//update input_sw each repetition of the for loop
			input_sw = PINC & ( (1<<PC0) | (1<<PC1) | (1<<PC2));
			
			if (i < 8)	//while counting up for first 8 bits:
			{
				PORTA |= PINA + 1; //count up bit wise
				_delay_ms(500);		//delay by 500ms
			}
			else  //once finished filling all bits, for final 8 bits:
			{
				PORTA &= PINA >> 1; //clear bits from left to right
				_delay_ms(500);		//delay by 500ms
			}
			
			//if the pause button has been pressed
			if (input_sw & Pause)
			{
				//hold at this point until the pause button is released
				while (input_sw & Pause) 
				{
					//continually update input_sw to detect pause button release
					input_sw = PINC & ( (1<<PC0) | (1<<PC1) | (1<<PC2));
				}
			}
			
			//if the reset button has been pressed
			if (input_sw & Reset)
			{
				//set all outputs to low and break out of the for loop
				PORTA = 0x00;
				break;
			}
		}
	}
}
