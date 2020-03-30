float speed = 2;
float x,y = 5;
int radius = 10;
int direction = 1;
int Xplayer, Yplayer = 20;
Boolean started = false;
PVector AI;
color A1 = color (200,0,0);
color A2 = color (150,0,0);
color P1 = color (0,0,200);
color P2 = color (0,0,150);

void setup() {
  smooth();
  size(700,700);
  AI = new PVector(random(width), random(height), 0.);
 
}

void draw() {
  background(50);
  player();
  AI();
  
}  
  
void AI() { 
  ellipse(AI.x, AI.y, 20, 20);
  ellipseMode(CENTER);
  fill (P1);
  stroke(P2);
  strokeWeight(2);
  
  float angle = atan2(Yplayer-AI.y, Xplayer-AI.x);
  float newX = cos(angle) * speed + AI.x;
  float newY = sin(angle) * speed + AI.y;
  AI.set(newX, newY, 0.); 
  
}

void player() {
  rect(Xplayer, Yplayer, 20 ,20);
  rectMode(CENTER);
  fill (A1);
  stroke(A2);
  strokeWeight(2);
  
  if (Xplayer > (width) ) {Xplayer = (0); }
  if (Xplayer < (0) ) {Xplayer = (0); } 
  if (Yplayer > (height) ) {Yplayer = (0); }
  if (Yplayer < (0) ) {Yplayer = (0); }
  
boolean hitbox = true;
  if (hitbox == true) {
  if (Xplayer == (AI.x) ) {exit();}
  if (Yplayer == (AI.y) ) {exit();}
  
  }
}
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {Yplayer -= 5;}  
    if (keyCode == DOWN) {Yplayer += 5;}  
    if (keyCode == LEFT) {Xplayer -= 5;}  
    if (keyCode == RIGHT) {Xplayer += 5;}  
  } 
}
