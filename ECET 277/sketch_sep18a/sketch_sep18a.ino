const int ANALOGINPIN = A0;
const int INTERRUPTPIN = 2;
const int DIGITALOUTPIN = 52;

int pause = 0;
int inputVoltage = 0;

void setup() {
  Serial.begin(9600);
  attachInterrupt(digitalPinToInterrupt(INTERRUPTPIN), squareInput, CHANGE);
}

void loop() {
  inputVoltage = analogRead(ANALOGINPIN);
  
  if (inputVoltage = 5) {
    pause = 0;
  } else if (inputVoltage = 2.5) {
    pause = 4167;
  } else if (inputVoltage = 0) {
    pause = 8333;
  }
  Serial.print("\nPause = ");
  Serial.print(pause);
  
}

void squareInput() {
  digitalWrite(DIGITALOUTPIN, HIGH);
  delay(pause);
  digitalWrite(DIGITALOUTPIN, LOW);
  delayMicroseconds(50);
  digitalWrite(DIGITALOUTPIN, HIGH);
}
