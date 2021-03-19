/*******************************

	ECET 17900 - Introduction to Digital Systems

	Serial functions required to utilize STDIO with the Atmel microcontrollers through WinAVR

	@author Alec Derwent
	@version 2/27/2020

	Description:
		version of serial.c made for LCD displays



********************************/

void init_LCD_UART(void);
void putchar_LCD(unsigned char ch);
void put_command_LCD(unsigned char command);
void putstring_LCD(unsigned char *str);

void init_LCD_UART(void)
{
	UCSR3A = 0x00;			
	UCSR3B = 0x18;			// enable UART TX and RX
	UCSR3C = 0x06;			// set the UART for N, 8, 1
	UBRR3L = 103;			// set BAUD Rate for 9600 with 16MHz clock
	UBRR3H = 0;
}


// the following function sends a single character out of the serial port
void putchar_LCD(unsigned char ch)
{

    while ( (UCSR3A & (1 << UDRE3)) == 0 )		// wait until there is room in the transmit buffer
	{
	}

    UDR3 = ch;									// load the character into the UART data register
}

void put_command_LCD(unsigned char command)
{
	putchar_LCD( 0xFE );
	
	putchar_LCD( command );
	
	_delay_ms(5);
}

void putstring_LCD(unsigned char *str)
{	
	while (*str != 0)
	{
		putchar_LCD(*str);
		str++;
	}
}