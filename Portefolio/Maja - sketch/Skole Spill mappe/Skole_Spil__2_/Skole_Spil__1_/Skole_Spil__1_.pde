float speed = 5.;
float x,y = 20;
int radius = 10, direction = 1;
Boolean started = false;
PVector AI;


void setup() {
  smooth();
  size(900,900);
  
  AI = new PVector(random(width), random(height), 0.);
  ellipseMode(CENTER);
  stroke(150,0,0);
  strokeWeight(3);
  fill(200, 0,0);
 
}

void draw() {
  background(0);
  PC();
  AI();
  
}  
  
void AI() { 
  ellipse(AI.x, AI.y, 20, 20);
  float angle = atan2(key-AI.y, key-AI.x);
  float newX = cos(angle) * speed + AI.x;
  float newY = sin(angle) * speed + AI.y;
  AI.set(newX, newY, 0.); 
  
}

void PC() {
   x=x+speed*direction;
  if((x>width-radius) || (x<radius))
    direction=-direction;
  if(direction==1)
  
  rect(x, y, 20 ,20);
  stroke(0,0,150);
  strokeWeight(2);
  fill(0,0,200);
  
}

void keyPressed()
{
  if(key == CODED)
  {
    if (keyCode == LEFT)
    {
      if (direction>0) direction=-direction;
    }
    if(keyCode == RIGHT)
    {
      if (direction<0) direction=-direction;
    }
   
  }
}
