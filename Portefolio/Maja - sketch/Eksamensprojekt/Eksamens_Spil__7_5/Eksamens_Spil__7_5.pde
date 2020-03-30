float Xplayer = 35;
float Yplayer = 570;
float playerWidth = 20;
float playerHeight = 20;
float Yground = 590;
float Xground = 75;
float speedX = 10;
float speedY = 1;


level lane1,lane2,lane3,lane4;

void setup() {
  smooth();
  size(1000,600);
  lane1 = new level(75,590,150,20);
  lane2 = new level(300,590,150,20);
  lane3 = new level(685,590,150,20);
  lane4 = new level(905,590,200,20);

}

void draw() {
  background(250);
  player();
  barriers();
  lane1.lane();
  lane2.lane();
  lane3.lane();
  lane4.lane();
  
}

void player() {
  rect(Xplayer,Yplayer,playerWidth,playerHeight);
  rectMode(CENTER);
  fill(90);
  stroke(60);
  strokeWeight(2); 
  playerMove();
  playerBoundaries();
  
}

void playerMove() {  
  if (Yplayer >= 570) {Yplayer = 570;}
  else Yplayer += 1;
  if (Yplayer <= 520) {Yplayer = 570;}
  else Yplayer -= 0;

}
  
void playerBoundaries () {   
   if (Xplayer < 0 || Xplayer > width) {Xplayer = 0;}
    
}    

void barriers() {
  rect(Xground,Yground,150,20); 
  fill(90);
  stroke(60);
  strokeWeight(2); 
  
}  

void keyPressed() {
  if (key == CODED) {
  if (keyCode == LEFT) {Xplayer -= speedX;}  
  if (keyCode == RIGHT) {Xplayer += speedX;}  
  if (keyCode == UP) {Yplayer -= 50;} 

}
}
