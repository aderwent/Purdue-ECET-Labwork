/*
  Analog input, PWM output, serial output
 
 Reads an analog input pin, maps the result to a range from 0 to 255
 and uses the result to set the pulsewidth modulation (PWM) of an output pin.
 Also prints the results to the serial monitor.
 
 The circuit:
 * potentiometer connected to analog pin A0.
   Center pin of the potentiometer goes to the analog pin.
   side pins of the potentiometer go to +5V and ground
 * LED connected from digital pin 9 to ground

 
 */

const int ANALOGINPIN = A0;  // Analog input pin that the potentiometer is attached to
const int ANALOGOUTPIN = 9;  // Analog output pin that the LED is attached to

int sensorValue = 0;        // value read from the pot
byte outputValue = 0;       // value output to the PWM (analog out)

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600); 
}

void loop() {
  // read the analog in value:
  sensorValue = analogRead(ANALOGINPIN);            
  // map it to the range of the analog out (PWM):
  outputValue = sensorValue >> 2;  
  // Generate PWM signal on pin 9
  analogWrite(ANALOGOUTPIN, outputValue);           

  // print the results to the serial monitor:
  Serial.print("sensor = " );                       
  Serial.print(sensorValue);      
  Serial.print("\t output = ");      
  Serial.println(outputValue);   

  // wait 1 seconds before the next loop
  // for the analog-to-digital converter to settle
  // after the last reading:
  delay(1000);                     
}