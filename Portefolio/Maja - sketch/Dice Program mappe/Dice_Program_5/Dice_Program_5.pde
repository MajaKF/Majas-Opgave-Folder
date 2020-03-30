int dice = 0;

void setup() {
 size(400,400);
 background(90);
  
}



void draw() {
 diceD6();
  }
 
  
void diceD6(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 
 for (int dice = 0; dice < 2; dice += random) {
 (if dice > 1) {
 draw diceD6_Duct1();
 (if dice < 1) {
 draw diceD6_Duct2();
 else dice = 0;
 }
 
 }
  
}

void diceD6_Duct1(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(205,180,10,10);
 
}
void diceD6_Duct2(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,180,10,10);
 ellipse(220,180,10,10);
 
}
