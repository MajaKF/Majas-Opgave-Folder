float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Xspeed = 10;
int Xground2 = 990;
int Yground1 = 590;
int Yground2 = 570;
int Ywall1 = 400;
boolean teleport = false;
boolean claim = false;
color playerColor1 = color(150);
color playerColor2 = color(120);
color laneColor1,wallColor1 = color(90);
color laneColor2,wallColor2 = color(60);

level lane1,lane2,lane3,lane4,wall1;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(100,Yground1,200,20);
  lane2 = new level(350,Yground1,200,20);
  lane3 = new level(850,Yground1,400,20);
  wall1 = new level(Xground2,Yground2,20,Ywall1);
  
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
  fill(playerColor1);
  stroke(playerColor2);
  strokeWeight(2); 
  rect(Xplayer,Yplayer,playerWidth,playerHeight);
  rectMode(CENTER);
  playerMove();
  playerBoundaries();
  playerGravity();
  powerTeleport();
  powerClaim();
  
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

void powerTeleport() {
  if (teleport == true) {playerColor1 = color(150,0,220);}
  else playerColor1 = 150;
  
  if (teleport == true) {playerColor2 = color(120,0,190);}
  else playerColor2 = 120;
  
}
  
void powerClaim() {


}
  
void keyPressed() {
  if (key == CODED) { 
  if (keyCode == LEFT) {Xplayer -= Xspeed;}  
  if (keyCode == RIGHT) {Xplayer += Xspeed;}  
  if (keyCode == UP) {Yplayer -= 50;} 
  if (keyCode == SHIFT) {teleport = true;} 
  else {teleport = false;} 
  if (keyCode == CONTROL) {claim = true;}
  else {claim = false;} 
  }
}

void keyReleased() {
  if (teleport == true) {Xplayer = Xplayer + 150;}

  for (;claim == true; Yplayer = Ywall1); {Yplayer = 50;}

}
