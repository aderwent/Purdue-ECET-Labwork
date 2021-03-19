/*  Shetch DigitalIO  */

/* initalize variables */
int pin2val;
int pin3val;

void setup() 
{

// Place your code here: 
// What hardware are we using that requires initialization?
// Initialize that hardware here.

  pinMode(4, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);
  DDRA = 0xFF;

}

void loop() 
{
  pin2val=digitalRead(4);  // Read the toggle switch on pin 2
  pin3val=digitalRead(5);  // Read the toggle switch on pin 3
 
  if(pin2val == pin3val)
  {
    if(pin2val == LOW)
    {
      PORTA=0x00;  // Turn off all LEDs
    }
    else
    {
      PORTA=0xFF;  // Turn on all LEDs
    }
  }
  else
  {
    if(pin2val == HIGH)
       {
        PORTA=0x0F;  // Turn on red LEDs
       }
    else
       {
        PORTA=0xF0;  // Turn on yellow LEDs
       }
  }
}
