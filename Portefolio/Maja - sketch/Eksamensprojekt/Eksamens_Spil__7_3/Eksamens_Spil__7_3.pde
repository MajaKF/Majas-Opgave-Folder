int Xpos = 35;
int Ypos = 570;
int gavity = -1;

level lane1,lane2,lane3,lane4;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(75,590);
  lane2 = new level(300,590);
  lane3 = new level(685,590);
  lane4 = new level(905,590);

}

void draw() {
  background(250);
  player();
  lane1.lane();
  lane2.lane();
  lane3.lane();
  lane4.lane();

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
  if (Ypos >= 570) {Ypos = 570;}
  else Ypos += 1;
  if (Ypos <= 520) {Ypos = 570;}
  else Ypos -= 0;
  if (Xpos <= Xg1) {Xpos = +20;}
  else Xpos -= 0;

}
  
void playerBoundaries () {   
   if (Xpos <= 0 || Xpos >= width) {Xpos = 0;};
    
}    

void keyPressed() {
  if (key == CODED) {
  if (keyCode == LEFT) {Xpos -= 10;}  
  if (keyCode == RIGHT) {Xpos += 10;}  
  if (keyCode == UP) {Ypos -= 50;} 

}
}
