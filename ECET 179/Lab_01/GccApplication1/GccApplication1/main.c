/*******************************************************************************
ECET 17900 - Introduction to Digital Systems - Lab #4

Name: Alec Derwent
Date: January 31, 2020
Lab Day and Time: Friday @ 9:30

Included file: <stdio.h> and "serial.c"
*******************************************************************************/
#include <avr/io.h>
#define F_CPU 16000000L
#include <util/delay.h>
#include <stdio.h>
#include "serial.c"

int main(void)
{
	init_UART();        // turn on and setup the serial port connection

	printf("Procedure 1 for Lab 4 - Alec Derwent \n\r");

	int seconds = 0;
	int minutes = 0;
	int hours = 0;
	int days = 0;

	while(1)
	{
		_delay_ms(1000);
		seconds++;
		if (seconds > 59)
		{
			seconds = 0;
			minutes++;
			printf("\nincreased minutes\n");
			if (minutes > 59)
			{
				minutes = 0;
				hours++;
				printf("\nincreased hours\n");
				if (hours > 23)
				{
					hours = 0;
					days++;
					printf("\nincreased days\n");
				}
			}
		}
		printf("increased seconds ");
	}


