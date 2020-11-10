// Even Robots can catch covid!, By Caleb Dee-Rakower, the virus follows your potentiometer input, whenever you get close to the robot's "Mouth" a mask appears on its face. 
//(P.S. flashing lights warning, the robots eyes rapidly change color)
float r = random(255);
float g = random(255);
float b = random(255);
PImage corona;
import processing.serial.*;
Serial myPort;
int val=0;
void setup(){ 
  size (800,800);
corona = loadImage("corona.png");
  printArray(Serial.list());
  String portName = Serial.list()[11]; 
  myPort = new Serial(this, portName, 9600);
}

void draw(){

  background (138);
 fill (250,0,0);
 rect(250,250, 300,300);
r = random(255);
g = random(255);
b = random(255);
fill(r,g,b);
ellipse(300, 350, 50,50);
ellipse(500, 350, 50,50);
fill(255);
rect(325, 450, 150, 50);
rect(325,450,50,50);
rect(375,450,50,50);
image(corona, val,450);
 if (myPort.available()>0){
   val= 5* myPort.read();
 }
if (val >= 325 && val <= 475) {
line(250,400,300,450);
line(250,550,300,525);
line(550,400,500,450);
line(550,550,500,525);
 rect(300,450,200,75);
 fill (0,150, 155);
 rect(350, 460, 100,50);
 fill (0);

} else { 
  fill (250,0,0);
 rect(250,250, 300,300);
r = random(255);
g = random(255);
b = random(255);
fill(r,g,b);
ellipse(300, 350, 50,50);
ellipse(500, 350, 50,50);
fill(255);
rect(325, 450, 150, 50);
rect(325,450,50,50);
rect(375,450,50,50);
}
image(corona, val,450);
}
