//Caleb Dee-Rakower, lonely stack of squares gains a group of circle friends, click mouse to summon a group of circles to make the square feel better. 
void setup(){
  size(700,700);
  background(255);
}
void draw(){
for (int c=50; c>=5; c-=10){
  rect (350, 350, 100+c, 100+c);
}
  for (int i=100; i>=1;i-=20){
  stroke(0);
  if(mousePressed) {
  ellipse(220+i,220+i,50+i,50+i);
}
  }

}
