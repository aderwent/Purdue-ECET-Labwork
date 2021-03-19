/*
 * stepper_motor.h
 *
 * Created: 2/7/2021 6:42:00 PM
 * Author : Alec Derwent
 *
 * A definition file for stepper_motor.c. It includes
 * function prototypes for all stepper functions, as
 * well as initial definitions for several variables
 * and arrays.
 *
 * Hardware
 *		N/A
 *
 */ 

#ifndef STEPPER_MOTOR_H_
#define STEPPER_MOTOR_H_

#define F_CPU 16000000UL

//include files
#include <avr/io.h>
#include <util/delay.h>
//#include "io_ports.h"

// Define function prototypes
void Stepper_Drive(char mode, uint8_t revolutions);

//void Stepper_init(void);

void Stepper_Position(void);

// Define

#define Wave_Step 0x01
#define Full_Step 0x02
#define Half_Step 0x04
#define Set_Angle 0x08

#define Angle	  90

#define Stepper_Output (PORTA)

//global variables
extern uint8_t Wave[4];
extern uint8_t Full[4];
extern uint8_t Half[8];

#endif /* STEPPER_MOTOR_H_ */