int Xpos = 35;
int Ypos = 560;
float jump = 1.5;

level lane,lane2,lane3,lane4,lane5;

void setup() {
  smooth();
  size(1000,600);
  lane = new level(75,580);
  lane2 = new level(275,580);
  lane3 = new level(670,580);
  lane4 = new level(850,580);
  lane4 = new level(850,580);
}

void draw() {
  background(250);
  player();
  lane.lane();
  lane2.lane();
  lane3.lane();
  lane4.lane();
  lane5.lane();
}

void player() {
  rect(Xpos,Ypos,20,20);
  rectMode(CENTER);
  fill(90);
  stroke(60);
  strokeWeight(2); 
  playerMove();
  playerBoundaries();
}

void playerMove() {  
  if (Ypos >= 560) {Ypos = 560;}
  else Ypos = Ypos + 1;
  if (Ypos <= 510) {Ypos = 560;}
  else Ypos = Ypos - 0;

}

void playerBoundaries () { 
  if (Xpos >= width) {Xpos = 0;}   
  if (Xpos <= 0) {Xpos = 0;}
}    

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 50;} 
  if (keyCode == LEFT) {Xpos -= 10;}  
  if (keyCode == RIGHT) {Xpos += 10;}  
  }  
}
