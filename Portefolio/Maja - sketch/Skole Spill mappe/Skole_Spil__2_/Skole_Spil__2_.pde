int x = 1;
int y = 1;

void setup() {
  smooth();
  size(900,900);
 
}

void draw() {
  background(0);
  player();
  
}

void player() {
  rect(x, y, 20 ,20);
  stroke(0,0,150);
  strokeWeight(2);
  fill(0,0,200);
  
}
 
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 5;
    } else if (keyCode == DOWN) {
      y += 5;
    } else if (keyCode == LEFT) {
      x -= 5;
    } else if (keyCode == RIGHT) {
      x += 5;
    }  
  } 
}
