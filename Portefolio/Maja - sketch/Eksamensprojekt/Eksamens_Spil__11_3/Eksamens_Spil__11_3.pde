float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Xspeed = 10;

int Xground2 = 990;
int Yground1 = 590;
int Yground2 = 570;
int Yground3 = 385;
int wallHeight1 = 390;
int wallWidth1 = 20;

boolean teleport = false;
boolean teleportRight = false;
boolean teleportLeft = false;
boolean climb;
boolean climbPressed;
boolean jump = false;

color playerColor1 = color(150);
color playerColor2 = color(120);
color laneColor1,wallColor1 = color(90);
color laneColor2,wallColor2 = color(60);

level lane1,lane2,lane3,lane4,lane5,lane6,lane7, wall1;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(100,Yground1,200,20);
  lane2 = new level(350,Yground1,200,20);
  lane3 = new level(850,Yground1,400,20);
  lane4 = new level(850,385,75,20);
  lane5 = new level(650,385,125,20);
  lane6 = new level(375,385,125,20);
  lane7 = new level(175,385,75,20);
  wall1 = new level(Xground2,Yground2,20,wallHeight1);
  
}

void draw() {
  background(250);
  player();
  lane1.lane();
  lane2.lane();
  lane3.lane();
  lane4.lane();
  lane5.lane();
  lane6.lane();
  lane7.lane();
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
  powerTeleport();
  powerClimb();
  
}

void playerJump() {  
//snapping player back to the ground after jumping  
  if (Yplayer >= 570) {Yplayer = 570;}
  else Yplayer += 1;
  
//to prevent player from jumping more then once  
  if ((jump == true && Yplayer <= 520)) {Yplayer = 570;}
  else Yplayer -= 0;
  
}
  
void playerBoundaries() {   
// so player doesn’t  move ouside the screen (left)  
   if (Xplayer < 0) {Xplayer = 0;}
   
// so player doesn’t  move ouside the screen (right)  
   if (Xplayer > width) {Xplayer += 980;}
   
//first gab (first floor)
   if ((Xplayer <= 209 || Xplayer >= 249 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer += 30;
   
//second gab (first floor)
   if ((Xplayer <= 459 || Xplayer >= 649 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer += 30;  

//game over
   if (Yplayer >= 600) exit();  

// So player doesn't move throught first wall
   if ((Xplayer > 950) && (Yplayer > 365)) {Xplayer = 970;}
   else Xplayer = Xplayer + 0;

// so player can stand on first wall
   if ((Xplayer <= wallWidth1 || Yplayer >= wallHeight1)) {Yplayer =+ Yplayer;}
   else Yplayer =+ 365;
   
   if ((Xplayer <= wallWidth1 || Yplayer >= wallHeight1)) {Xplayer =+ Xplayer;}
   else Xplayer = Xplayer + 20;   
   
//thrid gab (second floor)
   if ((Xplayer <= 700 || Xplayer >= wallWidth1 || Yplayer >= wallHeight1)) {Xplayer =+ Xplayer;}
   else Yplayer += Yplayer;  

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
    
// moving right and left    
  if (keyCode == LEFT) {Xplayer -= Xspeed;}  
  if (keyCode == RIGHT) {Xplayer += Xspeed; 
  
// making player jump true when up is pressed
  if (keyCode == UP) {jump = true;}
  else {jump = false;}
  if (jump == true) {Yplayer = Yplayer - 50;}

// making player teleport true when shift is pressed
  if (keyCode == SHIFT) {teleport = true;} 
  else {teleport = false;} 
  
// making player climb true when is pressed
  if (keyCode == CONTROL) {climbPressed = true;}
  else {climbPressed = false;} 
  
// making the player able to climb
  if ((climbPressed == true) && (Xplayer >= wallWidth1) && (Yplayer >= 570)) {climb = true;}
  else climb = false;
  if (climb == true) {Yplayer -= 250;}
  
  else if ((climbPressed == true) && (Xplayer >= wallWidth1) && (Yplayer <= 300)) {climb = false;}
  

void keyReleased() {
   if (key == CODED) { 
  
// teleport right
  if (keyCode == RIGHT) {teleportRight == true;}
  else teleportRight = false;
  
  if ((teleport == true) && (teleportRight = true)) {Xplayer = Xplayer + 150;}
  else Xplayer += Xspeed;


// teleport left
  if (keyCode == LEFT) {teleportLeft == true;}  
  else teleportLeft = false;

  if ((teleport == true) && (teleportLeft = true)) {Xplayer = Xplayer - 150;}
  else Xplayer -= Xspeed;

 }
 


 
