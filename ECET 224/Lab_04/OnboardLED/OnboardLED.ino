/*  OnboardLED                              */
/*  Turns on an LED, then off, repeatedly,  */
/*  in 1 second intervals.                  */


void setup() 
{                
   pinMode(13, OUTPUT); // Initialize pin 13 as an output    
}

void loop() 
{
  digitalWrite(13, HIGH);   // Turn the LED on
  delay(1500);              // wait for a period of 1 second
  digitalWrite(13, LOW);    // Turn the LED off
  delay(500);              // wait for a period of 1 second
}
