float x = 0;

void setup() {
  size (500,500);
  
}

void draw() {
  man();
  x = 0;
  while (x < width) {
    man();
    x = x + 50; 
  }
  
}

void man() {
  stroke(0);
  fill(0,0,200);
  rect (x,250,20,20);
  stroke(0);
  fill(255,244,229);
  rect (x,230,20,20);

}
