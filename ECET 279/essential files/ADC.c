/*
 * Lab 6-7: Timers & ADC
 * ADC.h
 *
 * Created: 3/12/2021 8:30:21 PM
 * Author: Alec Derwent
 *
 * This file is a module used to control the ADC channels of an
 * ATMega2560. It contains four functions: init_ADC(), read_ADC(),
 * read_ADC_channel_8bit(), and read_ADC_channel_10bit(). These
 * functions are detailed below.
 *
 * void init_ADC(void):
 *		Initializes the ADC prescaler, reference voltage, and enables the ADC.
 * 
 * uint8_t read_ADC(void):
 *		A function created for testing an 8-bit result from Channel 0.
 *
 * uint8_t read_ADC_channel_8bit(uint8_t channel):
 *		read_ADC_channel_8bit takes a parameter "channel" of type uint8_t and returns
 *		an 8 bit unsigned integer. First, ADLAR is set on ADMUX to have an 8 bit
 *		resolution. The channel data is cleared, then set using variable "channel".
 *		The conversion is started, and the function polls the ADC until the conversion
 *		is completed. Finally, ADCH is read into a return variable, the conversion 
 *		flag is cleared, and the return variable is sent to the main function.
 *
 * uint16_t read_ADC_channel_10bit(uint8_t channel):
 *		read_ADC_channel_16bit takes a parameter "channel" of type uint8_t and returns
 *		a 16 bit unsigned integer. First, ADLAR is cleared on ADMUX to have a 10 bit
 *		resolution. The channel data is cleared, then set using variable "channel".
 *		The conversion is started, and the function polls the ADC until the conversion
 *		is completed. Finally, ADCL is read into a return variable with ADCH being 
 *		shifted eight bits to the left, the conversion flag is cleared, and the 
 *		return variable is sent to the main function.
 *
 * Hardware
 *        Potentiometer 1		ADC0
 *        Potentiometer 2		ADC1
 */ 

#include "ADC.h"

void init_ADC(void)
{
	// setup the Analog to Digital Converter
	// start by selecting the voltage reference - Avcc
	ADMUX = (1<<REFS0);	
	// Select the default ADC channel - channel 0 in this case
	ADMUX = ADMUX | (1<<MUX0);   
	
	// select the ADC clock frequency - Clock / 128
	ADCSRA = (1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
	ADCSRA = ADCSRA | (1<<ADEN);	// enable the ADC

}

uint8_t read_ADC(void)
{
	uint8_t value;			// 8-bit value to hold the result
	
	ADMUX = ADMUX & 0xE0;		// clear the channel data
	
	ADMUX = ADMUX | (1<<ADLAR);	// set for Left Justified
								// Only using 8 bit resolution

	ADCSRA = ADCSRA | (1<<ADSC);	// start a conversion
	
	while( (ADCSRA & (1<<ADIF)) == 0 )	// wait for conversion to be completed
	{
	}
	
	value = ADCH;		// get the upper 8-bits
	ADCSRA = ADCSRA | (1<<ADIF);	// clear the conversion flag
	
	return value;			// send back the 8-bit result
}

uint8_t read_ADC_channel_8bit(uint8_t channel)
{
	uint8_t value;			// 8-bit value to hold the result
	
	ADMUX = ADMUX | (1<<ADLAR);	// set for Left Justified
								// Only using 8 bit resolution
	
	ADMUX = ADMUX & 0xE0;		// clear the channel data
	
	ADMUX = ADMUX | channel;	// add the desired

	ADCSRA = ADCSRA | (1<<ADSC);	// start a conversion
	
	while( (ADCSRA & (1<<ADIF)) == 0 )	// wait for conversion to be completed
	{
	}
	
	value = ADCH;		// get the upper 8-bits
	ADCSRA = ADCSRA | (1<<ADIF);	// clear the conversion flag
	
	return value;			// send back the 8-bit result
}

uint16_t read_ADC_channel_10bit(uint8_t channel)
{
	uint16_t result;			// 16-bit value to hold the result
	
	ADMUX = ADMUX & ~0x20;	// set for Left Justified
							// Only using 8 bit of resolution
	
	ADMUX = ADMUX & ~(1<<ADLAR);	// set for Right Justified
									// using 10 bit resolution
	
	ADMUX = ADMUX & 0xE0;		// clear the channel data
	
	ADMUX = ADMUX | channel;	// add desired channel

	ADCSRA = ADCSRA | (1<<ADSC);	// start a conversion
	
	while( (ADCSRA & (1<<ADIF)) == 0 )	// wait for conversion to be completed
	{
	}
	
	result = ADCL;
	result |= (ADCH << 8);
	ADCSRA = ADCSRA | (1<<ADIF);	// clear the conversion flag
	
	return result;			// send back the 16-bit result
}
