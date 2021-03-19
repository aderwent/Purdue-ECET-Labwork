/* VoltageRange - Comparrison of two A/D channels */

/* Initialize Variables */


int slider1digital, slider2digital;        // values read from the potentiometers
float D1, D2;


void setup() 
{

  /* Insert your code here */
  Serial.begin(9600);
  DDRA = 0xFF;
  
}


void loop() 
{
  slider1digital=analogRead(A0);
  slider2digital=analogRead(A1);
  D1 = (5*slider1digital)/1023.0;
  D2 = (5*slider2digital)/1023.0;
  Serial.print("slider 1 = " );                       
  Serial.print(D1);      
  Serial.print("\t slider 2 = ");      
  Serial.println(D2);

  if (slider1digital < slider2digital)
      PORTA = 0x0F;
  else
      PORTA = 0xF0;
  delay(1000);                     
}
