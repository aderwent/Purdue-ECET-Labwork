
/**********************************************************************
   Author: Joshua Bell
   Frequency generator with PWM

   Hardware connections:
   A0: potentiometer
   PWM out: PIN 12

   Can generate PWM signals at 50Hz, 500Hz, 5kHz, 50kHz


   Further modification of the program can produce more dynamic frequencies however, OCRnB
   (Determines Duty cycle) is directly tied to OCRnA (frequency) such that when you adjust OCR1A,
   The range of duty cycle values must be less than OCR1A.

   the value for the duty cycle in terms of OCR1B is = (A0(value)*OCR1A(value))/1023
   values too large will overflow and prevent A0 from properlly controlling the duty cycle.
   this can be mitigated by changing the prescaler SEE ATMEGA2560 DATASHEET page 158

 ********************************************************************/


//// set this value to desired frequency
#define Frequency 50000  /// must be defined as: 50, 500, 5000, 50000

int count;
int Duty_cycle;

// sets up the proper timer registers and ranges depending on user input frequency
void setup() 
{
 timer_setup();
}


void loop()
{
  Duty_cycle = analogRead(A0);
  OCR1B = (uint32_t)count * Duty_cycle / 1023;

  // ******************* \/ Your code goes here \/ ************************

}








void timer_setup(void)
{
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  TCCR1A = _BV(COM1A1) | _BV(COM1B1) | _BV(WGM10) | _BV(WGM11);
  TCCR1B = _BV(CS11) | _BV(WGM12) | _BV(WGM13);

  if (Frequency == 50)
  {
    count = (16000000UL / (256 * Frequency)) - 1;
    TCCR1B = _BV(CS12) | _BV(WGM12) | _BV(WGM13);
    OCR1A = count;
  }
  else if (Frequency == 500)
  {
    count = (16000000UL / (8 * Frequency)) - 1;
    OCR1A = count;
  }
  else if (Frequency == 5000)
  {
    count = (16000000UL / (Frequency)) - 1;
    TCCR1B = _BV(CS10) | _BV(WGM12) | _BV(WGM13);
    OCR1A = count;
  }
  else if (Frequency == 50000)
  {
    count = (16000000UL / (Frequency)) - 1;
    TCCR1B = _BV(CS10) | _BV(WGM12) | _BV(WGM13);
    OCR1A = count;
  }  
  else
  {
    digitalWrite(12,LOW);
  }
  
  
}
