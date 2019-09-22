color Pen = color(256);

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

//red colour
stroke(0);
fill(256,0,0);
ellipse(120, 40, 50, 50);

//green colour
stroke(0);
fill(0,256,0);
ellipse(200, 40, 50, 50);

//yellow colour
stroke(0);
fill(256,256,0);
ellipse(280, 40, 50, 50);

//eraser
stroke(0);
fill(256,256,265);
ellipse(760, 40, 50, 50);

//pen
stroke(Pen);
fill(Pen);
line(mouseX,mouseY,pmouseX,pmouseY); 
}

//drawing with Pen
void mouseClicked() {
    if (Pen == 256) {
    Pen = color(0);
     } else {
    Pen = color(256);
     }
//chaning the color
    if (mouseX >20 && mouseX<80 && mouseY>20 && mouseY<80){
    Pen = color(0,0,256); 
     }
    if (mouseX >100 && mouseX<160 && mouseY>20 && mouseY<80){
    Pen = color(256,0,0); 
     }
    if (mouseX >180 && mouseX<240 && mouseY>20 && mouseY<80){
    Pen = color(0,256,0); 
     }
    if (mouseX >260 && mouseX<320 && mouseY>20 && mouseY<80){
    Pen = color(256,256,0); 
     }
     if (mouseX >600 && mouseX<760 && mouseY>20 && mouseY<80){
    Pen = color(256,256,256); 
     }
  }

//pen thickness
void keyPressed() {
   if (key == CODED) {
   }
   if (keyCode == 49) {
   strokeWeight(1);
   }
   else if (keyCode == 50) {
   strokeWeight(2);
   }
   else if (keyCode == 51) {
   strokeWeight(3);
   }
   else if (keyCode == 52) {
   strokeWeight(4);
   }
   else if (keyCode == 53) {
   strokeWeight(5);
   }
   else if (keyCode == 54) {
   strokeWeight(6);
   }
}
