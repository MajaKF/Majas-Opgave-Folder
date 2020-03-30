int Xpos = 50;
int Ypos = 500;


bane lane,lane2;

void setup() {
  smooth();
  size(1000,600);
  lane = new bane(0,520);
  lane2 = new bane(300,520);
  
}

void draw() {
  background(250);
  player();
  lane.lane();
  lane2.lane();

}

void player() {
  rect(Xpos,Ypos,20,20);
  rectMode(CENTER);
  fill(90);
  stroke(60);
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
