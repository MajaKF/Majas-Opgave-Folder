float Xplayer = 10;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;

boolean teleportRight = false;
boolean teleportLeft = false;
boolean climb;
boolean climb2;
boolean climb3;
boolean climbPressed;
boolean jump = false;

color playerColor1 = color(150);
color playerColor2 = color(120);
color objectColor1 = color(30);
color objectColor2 = color(0);

level lane1,lane2,lane3,lane4,lane5,lane6,lane7,lane8,lane9,lane10,lane11, wall1,wall2,wall3,laneEnd;

void setup() {
  size(1000,600);
  lane1 = new level(100,590,200,20);
  lane2 = new level(350,590,200,20);
  lane3 = new level(850,590,400,20);
  lane4 = new level(850,385,75,20);
  lane5 = new level(650,385,125,20);
  lane6 = new level(375,385,125,20);
  lane7 = new level(175,385,75,20);
  lane8 = new level(25,385,105,20);
  lane9 = new level(230,165,105,20);
  lane10 = new level(650,165,115,20);
  lane11 = new level(990,165,200,20);
  laneEnd = new level(1,10,1900,20);
  wall1 = new level(990,570,20,390);
  wall2 = new level(10,265,20,220);
  wall3 = new level(990,75,20,200);
  
}

void draw() {
  background(255);
  Boundaries();
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
  lane11.lane();
  laneEnd.lane();
  wall1.wall();
  wall2.wall();
  wall3.wall();
  
}

void Boundaries() {  
//game over
  if (Yplayer >= 600) exit();  
   
  if (Yplayer <= 0) exit();
  
// so player doesn’t  move ouside the screen (left)  
   if (Xplayer < 0) {Xplayer = 0;}
   
// so player doesn’t  move ouside the screen (right)  
   if (Xplayer > width) {Xplayer = 980;}
   
   firstFloor();
   secondFloor();
   thirdFloor();

}
   
void firstFloor() {
//first gab (first floor)
   if ((Xplayer <= 209 || Xplayer >= 249 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer = 600;
   
//second gab (first floor)
   if ((Xplayer <= 459 || Xplayer >= 649 || Yplayer < 570)) {Yplayer =+ Yplayer;}
   else Yplayer = 600;  
   
//so player doesn't move throught first wall
   if ((Xplayer > 960) && (Yplayer > 380)) {Xplayer = 970;}
   else Xplayer -= 0;

}

void secondFloor() {
// first platform (second floor) 
   if ((Xplayer <= 800 || Xplayer >= 900 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;
   
// second platform (second floor) 
   if ((Xplayer <= 578 || Xplayer >= 725 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;
   
// thrid platform (second floor) 
   if ((Xplayer <= 300 || Xplayer >= 450 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;

// four platform (second floor) 
   if ((Xplayer <= 125 || Xplayer >= 225 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;
   
// five platform (second floor) 
   if ((Xplayer >= 75 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;

// four platform (second floor) 
   if ((Xplayer <= 125 || Xplayer >= 225 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Yplayer = 365;

//so player doesn't move throught second wall
   if ((Xplayer >= 30 || Yplayer > 380 || Yplayer < 200)) {Yplayer =+ Yplayer;}
   else Xplayer = 30;
   
}

void thirdFloor() {
// first platform (third floor) 
   if ((Xplayer <= 160 || Xplayer >= 300 || Yplayer > 180)) {Yplayer =+ Yplayer;}
   else Yplayer = 145; 
   
// second platform (third floor) 
   if ((Xplayer <= 575 || Xplayer >= 720 || Yplayer > 180)) {Yplayer =+ Yplayer;}
   else Yplayer = 145;  
   
// third platform (third floor) 
   if ((Xplayer <= 880 || Xplayer >= 1000 || Yplayer > 180)) {Yplayer =+ Yplayer;}
   else Yplayer = 145; 
   
//so player doesn't move throught first wall
   if ((Xplayer <= 970 || Yplayer > 180)) {Yplayer =+ Yplayer;}
   else Xplayer = 970;
   
}

void player() {
  fill(playerColor1);
  stroke(playerColor2);
  strokeWeight(2); 
  rect(Xplayer,Yplayer,playerWidth,playerHeight);
  rectMode(CENTER);
  playerJump();
  teleportColor();
  climbColor();
  
}

void playerJump() {  
//snapping player back to the ground after jumping  
  if ((jump = true) && (Yplayer <= 570)) {Yplayer += 1;}
  if ((jump = true) && (Yplayer <= 365)) {Yplayer += 1;}
  if ((jump = true) && (Yplayer <= 145)) {Yplayer += 1;}
  
//to prevent player from jumping more then once  
  if ((jump == true && Yplayer <= 520 && Yplayer >= 380)) {Yplayer = 570;}
  if ((jump == true && Yplayer <= 315 && Yplayer >= 300)) {Yplayer = 365;}
  if ((jump == true && Yplayer <= 95 && Yplayer >= 85)) {Yplayer = 145;}
 
}

void teleportColor() {
// changing player first colour while teleporting  
  if ((teleportRight == true) || (teleportLeft == true)) {playerColor1 = color(150,0,220);}
  else playerColor1 = 150;
  
// changing player second colour when teleporting  
  if ((teleportRight == true) || (teleportLeft == true)) {playerColor2 = color(120,0,190);}
  else playerColor2 = 120;
  
}
  
void climbColor() {  
// changing player first colour while climbing    
  if (climb == true) {playerColor1 = color(200,150,0);} 
  else if (climb2 == true) {playerColor1 = color(200,150,0);} 
  
// changing player first colour while climbing     
  if (climb == true) {playerColor2 = color(180,130,0);}
  else if (climb2 == true) {playerColor2 = color(180,130,0);}

}
  
void keyPressed() {
  movement();
  power();
  
}

void movement() { 
  if (key == CODED) { 
 
// moving right and left    
  if (keyCode == LEFT) {Xplayer -= 10;}  
  if (keyCode == RIGHT) {Xplayer += 10;}
  
// making player jump true when up is pressed
  if (keyCode == UP) {jump = true;}
  else {jump = false;}
  if (jump == true) {Yplayer = Yplayer - 50;}

  }
}

void power() { 
if (key == CODED) { 

// making player teleport true when shift is pressed
  if (keyCode == SHIFT) {teleportRight = true;} 
  else {teleportRight = false;} 
  
  if (keyCode == CONTROL) {teleportLeft = true;} 
  else {teleportLeft = false;} 
  
// making player climb true when is pressed
  if (keyCode == DOWN) {climbPressed = true;}
  else {climbPressed = false;} 

// making the player able to climb up first wall
  if ((climbPressed == true) && (Xplayer >= 970) && (Yplayer >= 570)) {climb = true;}
  else climb = false;
  if (climb == true) {Yplayer = Yplayer - 250;}
  else if ((climbPressed == true) && (Xplayer >= 970)) {climb = false;}
  else if ((climbPressed == true) && (Yplayer >= 570)) {climb = false;}

// making the player able to climb up second wall
  if ((climbPressed == true) && (Xplayer <= 30) && (Yplayer <= 380) && (Yplayer >= 350)) {climb2 = true;}
  else climb2 = false;
  if (climb2 == true) {Yplayer = Yplayer - 260;}
  else if ((climbPressed == true) && (Xplayer <= 30)) {climb2 = false;}
  else if ((climbPressed == true) && (Yplayer <= 380)) {climb2 = false;}
  
// making the player able to climb up first wall
  if ((climbPressed == true) && (Xplayer >= 970) && (Yplayer <= 180)) {climb3 = true;}
  else climb3 = false;
  if (climb3 == true) {Yplayer = Yplayer - 250;}
  else if ((climbPressed == true) && (Xplayer >= 970)) {climb3 = false;}
  else if ((climbPressed == true) && (Yplayer >= 145)) {climb3 = false;}

  }
}

void keyReleased() {
//Teleport to the right
  if (teleportRight == true) {Xplayer = Xplayer + 150;}
  if (teleportLeft == true) {Xplayer = Xplayer - 150;}
  

 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
