int Xpos = 100;
int Ypos = 500;
float speed = 2;
color b = 0;
color p1 = 90;
color p2 = 60;

void setup() {
  smooth();
  size(1000,600);
  
}

void draw() {
  background(250);
  player();
  bane();
  
}
  
void bane() {  
  rect(0,520,2000,20);
  fill(b);
  
}

void player() {
  rect(Xpos,Ypos,20,20);
  rectMode(CENTER);
  fill(p1);
  stroke(p2);
  strokeWeight(2); 
  playerMove();
  
}

void playerMove() {  
  if (Ypos >= 500)
       Ypos = 500;  
  else Ypos = Ypos + 1;
  if (Ypos <= 480)
       Ypos = 500;
  else Ypos = Ypos - 0;
  
}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 20;}  
  if (keyCode == LEFT) {Xpos -= 5;}  
  if (keyCode == RIGHT) {Xpos += 5;}  
  } 
}
