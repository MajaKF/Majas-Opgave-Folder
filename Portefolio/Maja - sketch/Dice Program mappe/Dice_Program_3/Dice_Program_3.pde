float x = 205;
int diceD6_Ducts = 0;

void setup() {
 size(400,400);
 background(90);
  
}

void draw() {
  stroke(40);
  fill(60);
  rect(0,0,90,400);
  diceD6();
  
}
  
void diceD6(){
 diceD6_Duct1();
 diceD6_Duct2();
 diceD6_Duct3();
 diceD6_Duct4();
 diceD6_Duct5();
 diceD6_Duct6();
  
}

void diceD6_Duct1(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(205,180,10,10);
 
}
void diceD6_Duct2(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,180,10,10);
 ellipse(220,180,10,10);
 
}

void diceD6_Duct3(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);{
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,192,10,10);
 ellipse(220,192,10,10);
 ellipse(205,168,10,10);
 
 }
 
}

void diceD6_Duct4(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 
}
void diceD6_Duct5(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 ellipse(205,180,10,10);
 
}

void diceD6_Duct6(){
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 ellipse(190,180,10,10);
 ellipse(220,180,10,10);
 
}
