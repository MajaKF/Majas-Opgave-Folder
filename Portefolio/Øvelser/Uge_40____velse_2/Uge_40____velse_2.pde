float y = 0;

void setup() {
  size (400,400);

}

void draw(){
  background(#ffffff);
  
  stroke(0);
  strokeWeight(1.5);
  for(float y = 0; y < height; y = y+15) {
    line(0,y,width,y);
  }
}
