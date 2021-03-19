/*
* Lab 4-5: Washing Machine
* stepper_motor.h
*
* Created: 2/7/2021
* Author : Alec Derwent
*
* VERSION 1: Lab 3 - Stepper motor (2/7/2021)
* This is a include file intended to provide information
* and values about the functions of stepper_motor.c to
* main.c, and define variables used in stepper_motor.c.
* This includes function prototypes, definitions of what
* port to use, initialization of mode arrays, and switch case
* definitions for main.c to use and call stepper_motor functions.
*
* Version 2: Lab 4&5 - Washing Machine (2/14/2021)
* Multiple additions were made to this include file to create
* lab 4&5, notably a new function and multiple new arrays.
* These were created to drive a washing machine, and to allow
* the stepper motor to move in both CW and CCW directions.
*
*
*/

#ifndef STEPPER_MOTOR_H_
#define STEPPER_MOTOR_H_

// Define baud rate to allow use of delay functions
#define F_CPU 16000000UL

// Include files
#include <avr/io.h> // standard IO
#include <util/delay.h> // delay functions


// Define function prototypes

// Driving motor for set revolutions in desired mode, with extra options added
void Stepper_Drive(char mode, uint8_t revolutions, uint8_t direction,
								uint16_t duration_ms, uint16_t delay);

// Initializes stepper motor IO
void Stepper_init(void);

// Rotates stepper motor a set angular distance
void Stepper_Position(void);

// Drives the stepper motor in two modes to function as a washing machine drum
void Washing_Machine(char mode, uint8_t cycleTime);

// Cases to check in main.c switch statement
#define Wave_Step 0x01
#define Full_Step 0x02
#define Half_Step 0x04
#define Set_Angle 0x08
#define CW		  0x01
#define CCW		  0x02

// Stepper_Register to determine which port is required to be
// set to output; easy to change later on
#define Stepper_Register (DDRC)

// Stepper_output to whatever port is selected, easily changeable
// for later modification
#define Stepper_Output (PORTC)

// Angle used for Stepper_Position()
#define Angle 90

// global variables; initialize Wave, Full, and Half arrays for use
// in stepper_motor.c. Also includes their CCW options (names ending in R)
extern uint8_t Wave[4];
extern uint8_t WaveR[4];
extern uint8_t Full[4];
extern uint8_t FullR[4];
extern uint8_t Half[8];
extern uint8_t HalfR[8];

#endif /* STEPPER_MOTOR_H_ */