// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

int x = 0;
int y = 0;
int Xspeed = 2;
int Yspeed = 2;

void setup() {
  size(640,360);
}

void draw() {
  background(255);

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, y, 32, 32);
  bounncing();
  
}

void bounncing() {
// Add the current speed to the x location.
  x = x + Xspeed;
  y = y + Yspeed;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    Xspeed = Xspeed * -1;
  }
  
  if ((y > height) || (y < 0)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    Yspeed = Yspeed * -1;
  }
  
}
