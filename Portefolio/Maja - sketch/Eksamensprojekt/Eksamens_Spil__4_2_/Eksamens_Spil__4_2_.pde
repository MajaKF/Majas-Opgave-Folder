int Xpos = 100;
int Ypos = 500;
float speed = 2;

void setup() {
  smooth();
  size(1100,650);
  
}

void draw() {
  background(250);
  player();
  
}

void player() {
  rect(Xpos,Ypos,20,20);
  rectMode(CENTER);
  fill (90,90,90);
  stroke(60,60,60);
  strokeWeight(2); 
  playerMove();
  
}

void playerMove() {  
  if (Ypos >= 500)
       Ypos = 500;  
  else Ypos = Ypos + 2;
  if (Ypos <= 470)
       Ypos = 500;
  else Ypos = Ypos - 0;
  
}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 30;}  
  if (keyCode == LEFT) {Xpos -= 5;}  
  if (keyCode == RIGHT) {Xpos += 5;}  
  } 
}
