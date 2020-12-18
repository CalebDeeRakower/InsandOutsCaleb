import processing.serial.*;
Serial myPort;
PFont f;
int val=0;
int savedTime;
int totalTime= 30000;
void setup(){ 
  size (800,800);
  savedTime = millis();
 printArray(Serial.list()); 
  String portName = Serial.list()[11]; 
  myPort = new Serial(this, portName, 9600); 
  f = createFont("Georgia", 16);
}


void draw(){
  int passedTime = millis() - savedTime;
  background(138);
  fill (250,0,0);
 rect(250,250, 300,300);

 fill(val+50,val+25,val+75);
ellipse(300, 350, 50,50);
ellipse(500, 350, 50,50);
fill(255);
rect(325, 450, 150, 50);
rect(325,450,50,50);
rect(375,450,50,50);
textFont(f,20);
fill(0);
text("Focusbot says:",350,600);
if (myPort.available()>0){
  val = myPort.read();
}

if( passedTime >= 10000 && passedTime <= 20000){
  val = 1;
 
}
if( passedTime >= 20000 && passedTime <= 30000){
  val = 2;
  savedTime = millis();
}
if (val == 1) {
textFont(f,20);
  fill(0);
  text("You're doing good! Keep working", 275, 650);
}  

 if (val == 2) {
  textFont(f,20);
  fill(0);
  text("Nice job so far! Keep it up.", 275, 650);
}

if(val == 3){
  textFont(f,20);
  text("Get back to work.", 275, 650);
}

}
