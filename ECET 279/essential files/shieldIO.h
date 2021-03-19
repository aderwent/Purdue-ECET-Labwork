/*
 * Lab 4-5: Washing Machine
 * shieldIO.h
 *
 * Created: 2/14/2021
 * Author: Alec Derwent
 *
 * This is a header file used to define functions and macros
 * used inside of shieldIO.c. I did not have any switches available,
 * so opted to use the IO shield used in ECET 224. This board includes
 * eight LEDs, four pushbuttons, and four toggle switches. Their specific
 * assigned pins and ports are described in shieldIO.c.
 */ 


#ifndef SHIELDIO_H_
#define SHIELDIO_H_

#include <avr/io.h> // standard IO
// define a CHECK_BIT macro for separate use in shieldIO.c.
#define CHECK_BITIO(var,pos) (((var)>>(pos)) & 1)

// pin2: TS2, pin3: TS3, pin4: TS4, pin5: TS5
// pin50: PB50, pin51: PB51, pin52: PB52, pin53: PB53

void shield_io_init(void); // function to set up IO for shield
uint8_t Read_PB(void); // function that returns the input from pushbuttons
uint8_t Read_TS(void); // function that returns the input from toggle switches
void Set_LED(uint8_t LED); // function that sets LED outputs

#endif /* SHIELDIO_H_ */