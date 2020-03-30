int Xpos = 100;
int Ypos = 500;
boolean moveleft = false, moveright = false;
float speed =2.0 ; 

void setup() {
  smooth();
  size(1100,650);
  
}

void draw() {
  background(250);
  player();
  playerMove();
  
}

void player() {
  rect(Xpos, Ypos,20,20);
  rectMode(CENTER);
  fill (0,0,200);
  stroke(0,0,150);
  strokeWeight(2);
  
}  
  
void playerMove() {  
  if (moveleft) { 
     Xpos -= speed;
  } 
  if (moveright) { 
     Xpos += speed;
  } 
 
  if (Ypos >= 400)
     Ypos = 400;
  else
     Ypos = Ypos + 5;
}
 
void setSignal (boolean setTo) { 
  if (keyCode == LEFT) { 
    moveleft = setTo;
  } 
  if (keyCode == RIGHT) { 
    moveright = setTo;
  }
}
 
void keyPressed() { 
  setSignal(true);
}
 
void keyReleased() { 
  setSignal(false);
 
    if (keyCode == UP) { 
    Ypos = Ypos - 15;
    if (Ypos > 400) { 
    Ypos -= 20;
    } else {
     Ypos += 20;
    }
  }
}
