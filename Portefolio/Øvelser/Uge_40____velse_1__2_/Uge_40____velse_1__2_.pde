float X = 1;
float Y = 1;

void setup() {
size (300,300);
  
}

void draw(){
  background(#ffffff);
  
X = 1;
 if (X < width) {
   X = X - 8;
   
Y = 1;
 if (Y < height) {
   Y = Y - 8;
   
stroke(0);
strokeWeight(2);
ellipse(X,Y,300,300);

}

 }
 
}
