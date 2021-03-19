const int ANALOGINPIN = A0;
const int DIGITALOUTPIN = 52;
const int DIGITALOUTPIN2 = 53;

int sensorValue = 0;
int off_time = 0;
int on_time = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  sensorValue = analogRead(ANALOGINPIN); //potentiometer
  on_time = 167 * (sensorValue/1023.0);
  off_time = 167 - on_time;
  Serial.print("\nDuty Cycle = " );
  Serial.print(100 - 100.0 * sensorValue/1023.0);                       
  digitalWrite(DIGITALOUTPIN, LOW);
  digitalWrite(DIGITALOUTPIN2, LOW);
  delay(on_time);
  digitalWrite(DIGITALOUTPIN, HIGH);
  digitalWrite(DIGITALOUTPIN2, HIGH);
  delay(off_time);
}
