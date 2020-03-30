void setup(){
size(800,800);
background(256,256,256);

}

void draw() {
//manu
stroke(0);
fill(125,125,125);
rect(0,0,799,80);  

//blue colour
stroke(0); 
fill(0,0,256);
ellipse(40,40,50,50);

//red colour
stroke(0);
fill(256,0,0);
ellipse(120,40,50,50);

//green colour
stroke(0);
fill(0,256,0);
ellipse(200,40,50,50);

//yellow colour
stroke(0);
fill(256,256,0);
ellipse(280,40,50,50);

//drawing colour
stroke(0);
fill(0);
if (keyPressed == true) {
    fill(0,0,256);
  } else {
    fill(0);
line(mouseX,mouseY,pmouseX,pmouseY); 
  }
}
