float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
int Yground = 590;

level lane1,lane2,lane3;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(100,Yground,200,20);
  lane2 = new level(350,Yground,200,20);
  lane3 = new level(850,Yground,400,20);
  

}

void draw() {
  background(250);
  player();
  lane1.lane();
  lane2.lane();
  lane3.lane();
  
}

void player() {
  rect(Xplayer,Yplayer,playerWidth,playerHeight);
  rectMode(CENTER);
  fill(90);
  stroke(60);
  strokeWeight(2); 
  playerMove();
  playerBoundaries();
  playerGravity();
  
}

void playerMove() {  
  if (Yplayer >= 570) {Yplayer = 570;}
  else Yplayer += 1;
  
  if (Yplayer <= 520) {Yplayer = 570;}
  else Yplayer -= 0;

}
  
void playerBoundaries() {   
   if (Xplayer < 0) {Xplayer = 0;}
   if (Xplayer > width) {Xplayer = 1000;}
   
}   
   
void playerGravity() {
   if (Xplayer <= 200 || Xplayer >= 250 || Yplayer < 570 && Xplayer <= 450 || Xplayer >= 650 || Yplayer < 570) {Yplayer =+ Yplayer;}
   else Yplayer += 20;
 
   
   if (Yplayer >= 600) exit();


}

void keyPressed() {
  if (key == CODED) {
  if (keyCode == LEFT) {Xplayer -= 10;}  
  if (keyCode == RIGHT) {Xplayer += 10;}  
  if (keyCode == UP) {Yplayer -= 50;} 

}
}
