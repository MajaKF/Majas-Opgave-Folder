color Pen = color(256);
boolean shouldIDraw = true;

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
ellipse(40, 40, 50, 50);
line(40, 50, 40, 30);
line(40, 30, 50, 40);
line(40, 30, 30, 40);

//red colour
stroke(0);
fill(256,0,0);
ellipse(120, 40, 50, 50);
line(120, 50, 120, 30);
line(120, 50, 130, 40);
line(120, 50, 110, 40);

//green colour
stroke(0);
fill(0,256,0);
ellipse(200, 40, 50, 50);
line(210, 40, 190, 40);
line(210, 40, 200, 50);
line(210, 40, 200, 30);

//yellow colour
stroke(0);
fill(256,256,0);
ellipse(280, 40, 50, 50);
line(290, 40, 270, 40);
line(270, 40, 280, 50);
line(270, 40, 280, 30);


//drawing colour
stroke(Pen);
fill(Pen);
if(shouldIDraw){
  line(mouseX,mouseY,pmouseX,pmouseY); 
}


  }
  
//colour change
void keyPressed() { //<>//
  if (key == CODED) { //<>//
    if (keyCode == UP) {
      Pen = color (#0000FF);
    } else if (keyCode == DOWN) {
      Pen = color (#FF0000);
    } else if (keyCode == RIGHT) {
      Pen = color (#00FF00);
    } else if (keyCode == LEFT) {
      Pen = color (#FFFF00);
    } else if (keyCode == ENTER) {
      Pen = color (#000000);
    } else {
    Pen = color(0);
    }
    if (keyCode == SHIFT){
      shouldIDraw = !shouldIDraw;
    }
  }
}
