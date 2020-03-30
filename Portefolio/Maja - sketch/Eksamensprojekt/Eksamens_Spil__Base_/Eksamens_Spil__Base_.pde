int Xplayer, Yplayer = 20;
Boolean started = false;
color P1 = color (200,0,0);
color P2 = color (150,0,0);

void setup() {
  smooth();
  size(700,700);
  
}

void draw() {
  background(50);
  player();
  
}

void player() {
  rect(Xplayer, Yplayer, 20 ,20);
  rectMode(CENTER);
  fill (P1);
  stroke(P2);
  strokeWeight(2);
  
  if (Xplayer > (width) ) {Xplayer = (0); }
  if (Xplayer < (1) ) {Xplayer = (0); } 
  if (Yplayer > (height) ) {Yplayer = (0); }
  if (Yplayer < (1) ) {Yplayer = (0); }
  
  }
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {Yplayer -= 5;}  
    if (keyCode == DOWN) {Yplayer += 5;}  
    if (keyCode == LEFT) {Xplayer -= 5;}  
    if (keyCode == RIGHT) {Xplayer += 5;}  
  } 
}
