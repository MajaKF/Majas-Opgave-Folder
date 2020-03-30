float y = 0;

void setup() {
  size (400,400);

}

void draw(){
  background(#ffffff);
  
  stroke(0);
  strokeWeight(1.5);
  y = 0;
  while (y < height) {
    line(0,y,width,y);
    y = y + 15;
    
  }
  
}
