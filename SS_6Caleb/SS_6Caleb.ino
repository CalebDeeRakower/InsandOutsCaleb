
const int buttonPin = 2;
const int led1 = 13;
const int led2 = 12;
const int led3 = 11;
const int led4 = 10;
int buttonState = 0;
void setup() {
  pinMode(led1, OUTPUT);
  pinMode (led2,OUTPUT);
   pinMode (led3,OUTPUT);
    pinMode (led4,OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {

 buttonState = digitalRead(buttonPin);
 
 if (buttonState == HIGH) {
  digitalWrite(led4, HIGH);
  delay(100);
  digitalWrite(led3, HIGH);
  delay(200);
  digitalWrite (led1, HIGH);
delay(300);
  digitalWrite(led2,HIGH);
  delay(400);
 
  
 } else {
    digitalWrite(led4, HIGH);
  delay(100);
   digitalWrite(led3,LOW);
   delay(200);
  digitalWrite(led1,LOW);
  delay(300);
   digitalWrite(led2,LOW);
   delay(400);
  
 }
}
