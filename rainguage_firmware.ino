// sketch to listen to rain guage ticks and report when asked
int count = 0;
bool flashy = LOW ;
bool blinky = LOW;
void setup() {
  // put your setup code here, to run once:
pinMode(2, INPUT); // goes low when the rain guage tips out.
pinMode(7, OUTPUT);
pinMode(4, OUTPUT);
digitalWrite(2, HIGH); // saves a pull up resistor.
Serial.begin(9600);

attachInterrupt(digitalPinToInterrupt(2), counter, FALLING);



}

void loop() {
  // put your main code here, to run repeatedly:
 handleSerial();
}

void handleSerial() {
 while (Serial.available() > 0) {
   char incomingCharacter = Serial.read();
   switch (incomingCharacter) {
     case 'C':
      Serial.print( String(count) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A0) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A1) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A2) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A3) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A4) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A5) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A6) ) ;
      Serial.print( "," ) ;
      Serial.print( analogRead (A7) ) ;
      Serial.print( "\n" ) ;
      
      count = 0;
      blinky = !blinky ;
      digitalWrite(7, blinky);
      
      break;
 
     case 'R':
      // might be useful later
      count = 0;
      break;
    }
 }
}

void counter(){
  count++ ;
  flashy = !flashy;
  digitalWrite(4, flashy);
}
