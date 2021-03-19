/*
 * @author Alec Derwent
 * @version February 27, 2020
 * 
 * A program that counts through 0 to 9 on both numbers on a 7 segment display. Uses arduino IDE.
 */


const byte LE1 = 45;
const byte LE2 = 42;
const byte BL1 = 44;
const byte BL2 = 41;
const byte LT1 = 43;
const byte LT2 = 40;
const byte DP = 46;
const int ANALOGINPIN = A0;  // Analog input pin that the potentiometer is attached to
int sensorValue = 0;        // value read from the pot
byte outputValue = 0;       // value output to the PWM (analog out)
float D1;
int val;
int MSD;
int LSD;

void setup() {
  Serial.begin(9600); 
  DDRC = 0xFF;
  pinMode(LE1, OUTPUT);
  digitalWrite(LE1, LOW);
  pinMode(LE2, OUTPUT);
  digitalWrite(LE2, LOW);

  pinMode(BL1, OUTPUT);
  digitalWrite(BL1, HIGH);
  pinMode(BL2, OUTPUT);
  digitalWrite(BL2, HIGH);

  pinMode(LT1, OUTPUT);
  digitalWrite(LT1, HIGH);
  pinMode(LT2, OUTPUT);
  digitalWrite(LT2, HIGH);
  
  pinMode(DP, OUTPUT);
  digitalWrite(DP, LOW);
}

void loop() {
  
  digitalWrite(BL1, HIGH);
  digitalWrite(BL2, HIGH); // BLANKING OFF
  
  sensorValue = analogRead(ANALOGINPIN); 
  D1 = (5*sensorValue)/1023.0;
  D1 = D1 * 10;
  val = (int)D1;
  
  MSD = (val / 10) << 4;
  LSD = val % 10;
  PORTC = MSD | LSD;
  delay(50);
}
