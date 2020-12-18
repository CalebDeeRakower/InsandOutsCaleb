#include <LiquidCrystal.h>
int val = 0;
const int SENSOR = A0;
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
void setup() {

 pinMode (SENSOR, INPUT);
 lcd.begin (16, 2);
 Serial.begin(9600);
 lcd.print("Focusbot says:");
 
 }

void loop() {
val = analogRead(SENSOR); 


  if (val = 1) {
  delay(10000);
    lcd.clear();
    lcd.print("You're doing goo");
  lcd.setCursor(0,1);
  lcd.print("d! Keep working.");
 
  }

    if(val = 2) {
     delay(10000);
  lcd.setCursor(0,0);
  lcd.clear();
  lcd.print("Nice job so far!");
  lcd.setCursor(0,1);
  lcd.print("Keep it up.");
  }
 
  if(val = 3) {
    delay(10000);
    lcd.setCursor(0,0);
    lcd.clear();
    lcd.print("Get back to work");
  }
  Serial.write(val);
}
