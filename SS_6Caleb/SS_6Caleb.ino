
const int buttonPin = 2;
const int led1 = 13;
const int led2 = 12;
int buttonState = 0;
void setup() {
  pinMode(led1, OUTPUT);
  pinMode (led2,OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {

 buttonState = digitalRead(buttonPin);
 delay (10);
 if (buttonState == HIGH) {
  digitalWrite (led1, HIGH);
  digitalWrite(led2,HIGH);
  
 } else {
  digitalWrite(led1,LOW);
   digitalWrite(led2,LOW);
 }
}
