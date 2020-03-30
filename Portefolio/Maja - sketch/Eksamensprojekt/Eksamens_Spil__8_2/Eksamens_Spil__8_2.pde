float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
int Yground1 = 590;
int Yground2 = 570;
int Xground2 = 990;

level lane1,lane2,lane3,lane4,wall1;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(100,Yground1,200,20);
  lane2 = new level(350,Yground1,200,20);
  lane3 = new level(850,Yground1,400,20);
  wall1 = new level(Xground2,Yground2,20,400);
  

}

void draw() {
  background(250);
  player();
  lane1.lane();
  lane2.lane();
  lane3.lane();
  wall1.lane();
  
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
   if (Xplayer > Xground2) {Xplayer = 970;}
   
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
