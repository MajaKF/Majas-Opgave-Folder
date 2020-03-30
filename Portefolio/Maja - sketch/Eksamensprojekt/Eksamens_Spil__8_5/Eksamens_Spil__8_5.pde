float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Xspeed = 10;
int Yground1 = 590;
int Yground2 = 570;
int Xground2 = 990;
boolean teleport = false;
int powerTeleport = 50;

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
  playerTeleport();
  
}

void playerMove() {  
//snapping player back to the ground after jumping  
  if (Yplayer >= 570) {Yplayer = 570;}
  else Yplayer += 1;
  
//to prevent player from jumping more then once  
  if (Yplayer <= 520) {Yplayer = 570;}
  else Yplayer -= 0;

}
  
void playerBoundaries() {   
   if (Xplayer < 0) {Xplayer = 0;}
   if (Xplayer > width) {Xplayer = 1000;}
   
   if (Xplayer >= Xground2) {Xplayer = 970;}
   
}   
   
void playerGravity() {
   if (Xplayer <= 209 || Xplayer >= 249 || Yplayer < 570) {Yplayer =+ Yplayer;}
   else Yplayer += 30;
   
   if (Xplayer <= 459 || Xplayer >= 649 || Yplayer < 570) {Yplayer =+ Yplayer;}
   else Yplayer += 30;   
   
   if (Yplayer >= 600) exit();  

}

void playerTeleport() {
  if (key == 'a') {teleport = true;} 
  else teleport = false; 
  
}
  

void keyPressed() {
  if (key == CODED) {
  else if (keyCode == LEFT) {Xplayer -= Xspeed;}  
  else if (keyCode == RIGHT) {Xplayer += Xspeed;}  
  else if (keyCode == UP) {Yplayer -= 50;} 

}
void keyReleased() {
 if (teleport == true); 
 {Xplayer = Xplayer + 50;}

}
