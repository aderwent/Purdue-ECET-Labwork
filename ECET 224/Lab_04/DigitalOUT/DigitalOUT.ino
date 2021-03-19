/*  DigitalOUT                                   */
/*  Sets bits 0 - 13 to outputs.                 */
/*  Then sets their states to either HIGH or LOW */


void setup() 
{                
  /* Set all 14 pins as outputs */

  pinMode(0, OUTPUT);  
  pinMode(1, OUTPUT);  
  pinMode(2, OUTPUT);  
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);  
  pinMode(5, OUTPUT);  
  pinMode(6, OUTPUT);  
  pinMode(7, OUTPUT);   
  pinMode(8, OUTPUT);  
  pinMode(9, OUTPUT);  
  pinMode(10, OUTPUT);  
  pinMode(11, OUTPUT);     
  pinMode(12, OUTPUT);  
  pinMode(13, OUTPUT);  
}

void loop() 
{
  digitalWrite(0, HIGH);  // Set the output value to HIGH
  digitalWrite(1, LOW);   // Set the output value to LOW
  digitalWrite(2, HIGH);
  digitalWrite(3, HIGH);  
  digitalWrite(4, LOW);   
  digitalWrite(5, LOW);   
  digitalWrite(6, HIGH);  
  digitalWrite(7, HIGH);  
  digitalWrite(8, HIGH);  
  digitalWrite(9, LOW);   
  digitalWrite(10, LOW);  
  digitalWrite(11, HIGH);   
  digitalWrite(12, LOW);   
  digitalWrite(13, LOW);  
}