void setup(){
 size (500,500);
  
}

float ballx = 1;
float bally = 1;

void draw(){
 background (200);
 stroke(0);
 fill(0,0,200);
 ellipse(ballx,bally,50,50);
 ballx += +5;
 bally += +5;
 
if (ballx > 500) {
  ballx += -5;
 
}
 
if (bally > 500) {
  bally += -5;
  
}
if (ballx < 0) {
  ballx += +5;
 
}
 
if (bally < 0) {
  bally += +5;
  
}

}
