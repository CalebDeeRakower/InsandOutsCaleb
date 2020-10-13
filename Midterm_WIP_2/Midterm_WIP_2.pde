//Caleb Dee-Rakower, Shulk's Monado Arts, Follow the instructions that Shulk gives you!

PFont f;
PImage shulk;
PImage buster;
PImage speed; 
PImage sheild;
float x = random(250, 750);
float y = random (0, 950);
float x2 = random(250, 750);
float y2= random (0, 950);
float x3 = random(250, 750);
float y3 = random (0, 950);
float x4 = random(250, 750);
float y4 = random (0, 950);
float x5 = random(250, 750);
float y5 = random (0, 950);
void setup(){ 
  size (1000,1000);

  shulk = loadImage("shulk.png");
  buster = loadImage("buster.png");
  speed = loadImage("speed.png");
  sheild = loadImage("sheild.png");
  f = createFont("Georgia", 16);
}

void draw(){
  background(100);
  
  image(shulk,250,250);
  if (keyPressed == false) {
  textFont(f,16);
  fill (0);
  text("Press the b/B, p/P, or h/H key to change my art!", 320, 850);
  image(sheild,475, 100);
  image(buster, 435, 100);
  image(speed, 525, 100);
  x = random(250, 750);
  y = random (0, 950);
  x2 = random(250, 750);
  y2 = random (0, 950);
  x3 = random(250, 750);
  y3 = random (0, 950);
  x4 = random(250, 750);
  y4 = random (0, 950);
  x5 = random(250, 750);
  y5 = random (0, 950);
  }
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      image(buster, 475, 320);
      image(sheild,475, 100);
      image(speed, 525, 100);
      textFont(f,24);
  fill (230, 0,255);
  text("BUSTER!!",450, 812);
  textFont(f,18);
  text("Unleashes a heavy, high damage attack on your opponent.",250,850);
  text("Deals extra damage on mechanical enemies.", 300, 900);
   fill (230,0,255,128);
   strokeWeight(1);
  ellipse(x,y,50,50);
  ellipse(x2,y2,50,50);
  ellipse(x3,y3,50,50);
  ellipse(x4,y4,50,50);
  ellipse(x5,y5,50,50);
  strokeWeight(40);
  stroke(230,0,255,128);
  line(712,500, 900, 600);
}

if (key == 'h' || key == 'H'){
  image(sheild,475, 320);
  image(buster, 435, 100);
  image(speed, 525, 100);
  textFont(f,24);
  fill (255,230,0);
  text("SHEILD!!", 450, 812);
    textFont(f,18);
  text("Blocks a high damage dealing attack from your enemies.",280,850);
   fill (255,230,0,128); 
   strokeWeight(1); 
   stroke(255,230,0,128);
  ellipse(x,y,50,50);
  ellipse(x2,y2,50,50);
  ellipse(x3,y3,50,50);
  ellipse(x4,y4,50,50);
  ellipse(x5,y5,50,50);
  strokeWeight(20);
   fill (255,230,0,64);
  ellipse(500,561,720,720);
  }
  if (key =='p' || key =='P'){
  image(speed, 475, 320);
  image(sheild,475, 100);
  image(buster, 435, 100);
  textFont(f,24);
  fill (0,0,255);
  text("SPEED!!", 450, 812);
  textFont(f,18);
  text("Increases your agility to the point where enemies miss their attacks.",250,850);
   fill (0,0,255,128);
  strokeWeight(1); 
  stroke(0,0,255,128);
  ellipse(x,y,50,50);
  ellipse(x2,y2,50,50);
  ellipse(x3,y3,50,50);
  ellipse(x4,y4,50,50);
  ellipse(x5,y5,50,50);
}
}

}
