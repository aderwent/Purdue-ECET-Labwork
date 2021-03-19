/* Measure and print frequency, RPM on serial monitor */

int count = 0, f, rpm;

void setup()
{
  pinMode(2,INPUT); //ISR input
  attachInterrupt(0,freq,RISING); // interrupt using frequency routine
  Serial.begin(9600);
}

void loop()
{
  count = 0;
  delay(100); // 0.1 sec time interval
  Serial.print(count);
  f = count * 10;
  Serial.print("\t");
  Serial.print(f);
  Serial.print(" Hz");
  rpm = f * 0.12;
  Serial.print("\t");
  Serial.print(rpm);
  Serial.print(" rev/min");
  Serial.print("\n");
}



void freq()
{
  count++;
}
