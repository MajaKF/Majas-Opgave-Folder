float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Xspeed = 10;

int laneWidtht = 20;
int wallWidth = 20;
int wallHeight1 = 390;
int wallHeight2 = 200;
int wallHeight3 = 200;

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

level lane1,lane2,lane3,lane4,lane5,lane6,lane7,lane8,lane9,lane10, wall1,wall2,wall3,laneEnd;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(100,590,200,laneWidtht);
  lane2 = new level(350,590,200,laneWidtht);
  lane3 = new level(850,590,400,laneWidtht);
  lane4 = new level(850,385,75,laneWidtht);
  lane5 = new level(650,385,125,laneWidtht);
  lane6 = new level(375,385,125,laneWidtht);
  lane7 = new level(175,385,75,laneWidtht);
  lane8 = new level(25,385,75,laneWidtht);
  lane9 = new level(450,200,200,laneWidtht);
  lane10 = new level(990,200,200,laneWidtht);
  laneEnd = new level(1,10,1900,laneWidtht);
  wall1 = new level(990,570,wallWidth,wallHeight1);
  wall2 = new level(10,280,wallWidth,wallHeight2);
  wall3 = new level(990,100,wallWidth,wallHeight3);
  
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
  lane8.lane();
  lane9.lane();
  lane10.lane();
  laneEnd.lane();
  wall1.lane();
  wall2.lane();
  wall3.lane();
  
}

void player() {
  fill(playerColor1);
  stroke(playerColor2);
  strokeWeight(2); 
  rect(Xplayer,Yplayer,playerWidth,playerHeight);
  rectMode(CENTER);
  playerJump();
  playerBoundaries();
  teleportColor();
  climbColor();
  
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
   if (Xplayer > width) {Xplayer = 980;}
   
//first gab (first floor)
   if ((Xplayer <= 209 || Xplayer >= 249 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer += 30;
   
//second gab (first floor)
   if ((Xplayer <= 459 || Xplayer >= 649 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer += 30;  

//game over
   if (Yplayer >= 600) exit();  

//so player doesn't move throught first wall
   if ((Xplayer > 960) && (Yplayer > 365)) {Xplayer = 970;}
   else Xplayer -= 0;

//so player can stand on first wall 
   if ((Xplayer <= 960 || Yplayer >= wallHeight1)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;
   
   if ((Xplayer <= 960 || Yplayer >= wallHeight1)) {Xplayer =+ Xplayer;}
   else Xplayer = 990;

//so the player can move on second floor
   if ((Xplayer <= 580 || Xplayer >= 655 || Yplayer > 350)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;
   
}

void teleportColor() {
// changing player first colour while teleporting  
  if (teleport == true) {playerColor1 = color(150,0,220);}
  else playerColor1 = 150;
  
// changing player second colour when teleporting  
  if (teleport == true) {playerColor2 = color(120,0,190);}
  else playerColor2 = 120;
  
}
  
void climbColor() {  
// changing player first colour while climbing    
  if (climb == true) {playerColor1 = color(200,150,0);} 
  
// changing player first colour while climbing     
  if (climb == true) {playerColor2 = color(180,130,0);}

}
  
void keyPressed() {
  if (key == CODED) { 
    
// moving right and left    
  if (keyCode == LEFT) {Xplayer -= Xspeed;}  
  if (keyCode == RIGHT) {Xplayer += Xspeed;}
  
// making player jump true when up is pressed
  if (keyCode == UP) {jump = true;}
  else {jump = false;}
  if (jump == true) {Yplayer = Yplayer - 50;}

// making player teleport true when shift is pressed
  if (keyCode == SHIFT) {teleport = true;} 
  else {teleport = false;} 
  
  if (keyCode == RIGHT) {teleportRight = true;}
  if (keyCode == LEFT) {teleportLeft = true;}
  
// making player climb true when is pressed
  if (keyCode == CONTROL) {climbPressed = true;}
  else {climbPressed = false;} 
  
// making the player able to climb
  if ((climbPressed == true) && (Xplayer >= 970) && (Yplayer >= 570)) {climb = true;}
  else climb = false;
  if (climb == true) {Yplayer -= 250;}
  
  else if ((climbPressed == true) && (Xplayer >= 970)) {climb = false;}

  }
}

void keyReleased() {
  if ((teleportRight = true) && (teleport == true)) {Xplayer = Xplayer + 150;}
  else if ((teleportLeft = true) && (teleport == true)) {Xplayer = Xplayer - 150;}

 }
 
