#include "ADC.h"

void init_ADC(void)
{
	// setup the Analog to Digital Converter
	ADMUX = 0x40;		// start by selecting the voltage reference - Avcc
	ADMUX = ADMUX | 0x00;   // Select the default ADC channel - channel 0 in this case
	
	ADCSRA = 0x07;	// select the ADC clock frequency - Clock / 128
	ADCSRA = ADCSRA | 0x80;	// enable the ADC

}

uint8_t read_ADC(void)
{
	uint8_t value;			// 8-bit value to hold the result
	
	ADMUX = ADMUX & 0xE0;		// clear the channel data
	
	ADMUX = ADMUX | (1<<ADLAR);	// set for Left Justified - Only using 8 bit resolution

	ADCSRA = ADCSRA | (1<<ADSC);	// start a conversion
	
	while( (ADCSRA & 0x10) == 0 )	// wait for conversion to be completed
	{
	}
	
	value = ADCH;		// get the upper 8-bits
	ADCSRA = ADCSRA | (1<<ADPS0);	// clear the conversion flag
	
	return value;			// send back the 8-bit result
}

uint8_t read_ADC_channel_8bit(uint8_t channel)
{
	uint8_t value;			// 8-bit value to hold the result
	
	ADMUX = ADMUX | (1<<ADLAR);	// set for Left Justified - Only using 8 bit resolution
	
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
	
	ADMUX = ADMUX & ~0x20;	// set for Left Justified - Only using 8 bit of resolution
	
	ADMUX = ADMUX & ~(1<<ADLAR);	// set for Right Justified - using 10 bit resolution
	
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
