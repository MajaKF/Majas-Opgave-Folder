float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Xspeed = 10;
float gravity = 1;

int Xground2 = 990;
int Yground1 = 590;
int Yground2 = 570;
int Ywall1 = 400;

boolean teleport = false;
boolean climb = false;

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
  playerJump();
  playerBoundaries();
  playerGravity();
  powerTeleport();
  powerClimb();
  
}

void playerJump() {  
//snapping player back to the ground after jumping  
  if (Yplayer >= 570) {Yplayer = 570;}
  else Yplayer += 1;
  
//to prevent player from jumping more then once  
  if (Yplayer <= 520) {Yplayer = 570;}
  else Yplayer -= 0;

}
  
void playerBoundaries() {   
// so player doest move ouside the screen (left)  
   if (Xplayer < 0) {Xplayer = 0;}
   
// so player doest move ouside the screen (right)  
   if (Xplayer > width) {Xplayer = 1000;}

// So player doesn't move throught first wall
   if (Xplayer >= Xground2) {Xplayer = 970;}
   
}   
   
void playerGravity() {
//first gab
   if (Xplayer <= 209 || Xplayer >= 249 || Yplayer < 570) {Yplayer =+ Yplayer;}
   else Yplayer -= gravity + 30;
   
//secund gab
   if (Xplayer <= 459 || Xplayer >= 649 || Yplayer < 570) {Yplayer =+ Yplayer;}
   else Yplayer += 30;   

//game over
   if (Yplayer >= 600) exit();  

}

void powerTeleport() {
// changing player first colour while teleporting  
  if (teleport == true) {playerColor1 = color(150,0,220);}
  else playerColor1 = 150;
  
// changing player second colour when teleporting  
  if (teleport == true) {playerColor2 = color(120,0,190);}
  else playerColor2 = 120;
  
}
  
void powerClimb() {
// changing player first colour while climbing    
  if (climb == true) {playerColor1 = color(200,150,0);} 
  
// changing player first colour while climbing     
  if (climb == true) {playerColor2 = color(180,130,0);}

}
  
void keyPressed() {
  if (key == CODED) { 
  if (keyCode == LEFT) {Xplayer -= Xspeed;}  
  if (keyCode == RIGHT) {Xplayer += Xspeed;}  
  if (keyCode == UP) {Yplayer -= 50;} 
  
  if (keyCode == SHIFT) {teleport = true;} 
  else {teleport = false;} 
  
  if (keyCode == CONTROL) {climb = true;}
  else {climb = false;} 
  
  }
}

void keyReleased() {
  if (teleport == true) {Xplayer = Xplayer + 150;}

  for (;climb == true; Yplayer = Ywall1) {Yplayer = Yplayer - 50;}
}
