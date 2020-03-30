float speed = 3;
float x,y = 5;
int radius = 10, direction = 1;
Boolean started = false;
PVector AI;
int Xplayer,Yplayer = 5;

void setup() {
  smooth();
  size(900,900);
  
  AI = new PVector(random(width), random(height), 0.);
  ellipseMode(CENTER);
  stroke(150,0,0);
  strokeWeight(3);
  fill(200, 0,0);
 
}

void draw() {
  background(50);
  player();
  AI();
  
}  
  
void AI() { 
  ellipse(AI.x, AI.y, 20, 20);
  float angle = atan2(Yplayer-AI.y, Xplayer-AI.x);
  float newX = cos(angle) * speed + AI.x;
  float newY = sin(angle) * speed + AI.y;
  AI.set(newX, newY, 0.); 
  
}

void player() {
  rect(Xplayer, Yplayer, 20 ,20);
  rectMode(CENTER);
  stroke(0,0,150);
  strokeWeight(2);
  fill(0,0,200);
  
  if (Xplayer > (width) ) {Xplayer = (0); }
  if (Xplayer < (0) ) {Xplayer = (width); } 
  if (Yplayer > (height) ) {Yplayer = (0); }
  if (Yplayer < (0) ) {Yplayer = (height); }
  
     }
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      Yplayer -= 5;
  } else if (keyCode == DOWN) {
      Yplayer += 5;
  } else if (keyCode == LEFT) {
      Xplayer -= 5;
  } else if (keyCode == RIGHT) {
      Xplayer += 5;
  }  
 } 
}
