/* I/O Count                                            */
/* Up/down counter starting with 50 on the serial monitor */
/* Count direction is determined by a pushbutton switch   */
/* Red/Yellow LEDs indicate count direction               */


/*  Initialize variables */
int pbstatus;  //up/down status
int count=50;   //current count with initial value

void setup() 
{
  DDRA=0xFF;                // Set PORT A as all output
  pinMode(50,INPUT_PULLUP); // Set pushbutton as INPUT with pullup
  Serial.begin(9600);       //activate serial communication
  Serial.println(count);    //write initial value of 50
  delay(1000);              //delay for 1 second
}

void loop() 
{
  pbstatus=digitalRead(50);  //Read the pushbutton ans save status

  if(pbstatus == HIGH) {
    count-= 2;
    Serial.println(count);
    PORTA = 0x0F;
  } else {
    count+= 2;
    Serial.println(count);
    PORTA = 0xF0;
  }

  delay(1000);
  
}
