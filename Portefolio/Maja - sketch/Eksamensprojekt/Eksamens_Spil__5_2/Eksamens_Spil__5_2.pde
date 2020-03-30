int Xpos = 100;
int Ypos = 500;
color b1 = 0;
color p1 = 90;
color p2 = 60;

bane brick;

void setup() {
  smooth();
  size(1000,600);
  brick = new bane(0,520);
  
}

void draw() {
  background(250);
  player();
  brick.Gbane();
;
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
  if (Ypos <= 460)
       Ypos = 500;
  else Ypos = Ypos - 0;
  
}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 40;}  
  if (keyCode == LEFT) {Xpos -= 7;}  
  if (keyCode == RIGHT) {Xpos += 7;}  
  } 
}
