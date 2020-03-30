Star myStar;

void setup() {
  
size(640, 360);
  myStar = new Star(color(200,200,0), 0, 0, 2,2);
  
}
  
void draw() {
background(255);
  myStar.move();
  myStar.display();
  
}

class Star {
 
color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;

  Star(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 20);
  }

  void move() {
    xpos = xpos + xspeed;
    if(xpos > width){
      xpos= 0;
     }
    ypos = ypos + yspeed;
    if(ypos > height){
      ypos= 0;
    }
  }
}
