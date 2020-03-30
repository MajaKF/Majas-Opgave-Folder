int Xpos = 35;
int Ypos = 500;
int ground = 500;


level lane,lane2;

void setup() {
  smooth();
  size(1000,600);
  lane = new level(0,520);
  lane2 = new level(300,520);
  
}

void draw() {
  background(250);
  player();
  lane.laneBase();
  lane2.laneBase();

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
  if (Ypos >= ground) {Ypos = ground;}  
  else Ypos = + 2;
  if (Ypos <= 450) {Ypos = ground;}
  else Ypos = - 0;
  if (Xpos = lane) {Ypos = 500;}
  else Ypos =  - 0;
}  

void playerBoundaries() {  
  if (Xpos < 0) {Xpos = 0;} 
  if (Xpos > width) {Xpos = -1;}
}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 50;} 
  if (keyCode == LEFT) {Xpos -= 10;}  
  if (keyCode == RIGHT) {Xpos += 10;}  
  } 
}  
