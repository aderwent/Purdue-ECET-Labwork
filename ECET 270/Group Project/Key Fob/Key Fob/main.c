/*
 * Key Fob.c
 *
 * Created: 3/11/2021 9:44:35 AM
 * Author : Group G
 *
 * This program receives inputs from a Parallax Key Fob Receiver.
 * Once triggered the receiver outputs 5V to PC4, and whatever button(s)
 * that have been pressed to PC0-3. These are processed by the program
 * and output as LEDs on a lights and switches board.
 *
 * Hardware:
 *		PORTC:0-4		Signal Reciever
 *		PORTA:0-3		LEDs
 */ 

#include <avr/io.h>

#include <stdio.h>
#include "serial.c"

#define F_CPU 16000000UL
#include <util/delay.h>


int main(void)
{
    /* Replace with your application code */
	init_UART();
	DDRA = 0xFF;
	
	DDRC = 0x00;
	PORTC = 0x1F;		// turn on the pullup resistors
    while (1) 
    {	
		
		while((PINC & 0x10) == 0)
		{
			//printf("Waiting for input...\n");
		}
		_delay_ms(25);
		printf("input found\n");
		uint8_t input = (PINC & 0x0F);
		
			switch (input)
			{
				case 0x01:
					printf("A is pressed.\n");
					PORTA = input;
				break;
			
				case 0x02:
					printf("B is pressed.\n");
					PORTA = input;
				break;
			
				case 0x03:
					printf("A+B is pressed.\n");
					PORTA = input;
				break;
			
				case 0x04:
					printf("C is pressed.\n");
					PORTA = input;
				break;
			
				case 0x06:
					printf("C+B is pressed.\n");
					PORTA = input;
				break;
			
				case 0x08:
					printf("D is pressed.\n");
					PORTA = input;
				break;
			
				case 0x09:
					printf("A+D is pressed.\n");
					PORTA = input;
				break;
			}
		
		while((PINC & 0x1F) != 0)
		{
		}
		PORTA = 0x00;
    }
}

