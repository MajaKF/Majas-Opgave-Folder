float x = 0;
color shirt = (#0000c8);


void setup() {
  size (500,500);
  
}

void draw() {
  man();
  patteren();
  
}

void man() {
  stroke(0);
  fill(shirt);
  rect (x,250,20,20);
  stroke(0);
  fill(255,244,229);
  rect (x,230,20,20);
}

void patteren() {
 x = 0;
  while (x < width) {
    man();
    x = x + 40; 
  if (x > 60);
    shirt = color(200,0,0);
  }
}
