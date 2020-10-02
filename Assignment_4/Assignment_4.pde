//Caleb Dee-Rakower, Shulk's Monado Arts, Follow the instructions that Shulk gives you!

PFont f;
PImage shulk;
PImage buster;
PImage speed; 
PImage sheild;
void setup(){ 
  size (700,700);

  shulk = loadImage("shulk.png");
  buster = loadImage("buster.png");
  speed = loadImage("speed.png");
  sheild = loadImage("sheild.png");
  f = createFont("Georgia", 16);
}

void draw(){
  background(100);
  image(shulk,0,0);
  if (keyPressed == false) {
  textFont(f,16);
  fill (0);
  text("Press the b/B, p/P, or h/H key to change my art!", 0, 562);
  }
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      image(buster, 225, 70);
      textFont(f,24);
  fill (230, 0,255);
  text("BUSTER!!", 0, 562);
}
if (key =='p' || key =='P'){
  image(speed, 225,70);
  textFont(f,24);
  fill (0,0,255);
  text("SPEED!!", 0, 562);
}
if (key == 'h' || key == 'H'){
  image(sheild,225,70);
  textFont(f,24);
  fill (255,230,0);
  text("SHEILD", 0, 562);
  }
}
}
