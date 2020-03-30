int Xpos = 35;
int Ypos = 500;
int ground = 500;


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
  playerBoundaries();
  
}

void playerMove() {  
  if (Ypos >= ground)
       Ypos = ground;  
  else Ypos = Ypos + 2;
  if (Ypos <= 450)
       Ypos = ground;
  else Ypos = Ypos - 0;
}

void playerBoundaries () { 
  if (Xpos < 0) {
      Xpos = 0;
      
  if (Xpos < width) {
      Xpos = 0; 
}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == UP) {Ypos -= 50;} 
  if (keyCode == LEFT) {Xpos -= 10;}  
  if (keyCode == RIGHT) {Xpos += 10;}  
  } 
}  
