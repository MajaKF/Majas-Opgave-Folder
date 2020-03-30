int Xpos = 100;
int Ypos = 500;
boolean moveleft, moveright = false;
float speed =2.0 ;

void setup() {
  smooth();
  size(1100,650);
  
 }

void draw() {
  background(250);
  player();
  playerMove();
  
 }

void player() {
  rect(Xpos, Ypos,20,20);
  rectMode(CENTER);
  fill (0,0,200);
  stroke(0,0,150);
  strokeWeight(2);
  
}  
  
void playerMove() {  
  if (moveleft) { 
    Xpos -= speed;
  } 
  if (moveright) { 
    Xpos += speed;
  } 
  if (Ypos >= 400)
    Ypos = 400;
  else
    Ypos = Ypos + 5;
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {Ypos -= 5;}  
    if (keyCode == LEFT) {Xpos -= 5;}  
    if (keyCode == RIGHT) {Xpos += 5;}  
  } 
}
