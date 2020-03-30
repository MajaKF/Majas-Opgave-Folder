float x = 205;

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
 stroke(190,0,0);
 strokeWeight(2);
 fill(230,0,0);
 rect(175,150,60,60);
  
}

void duct(){
  duct1();
  duct2();
  duct3();
  duct4();
  duct5();
  duct6();
 
}
  
void duct1(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(205,180,10,10);
 
}

void duct2(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,180,10,10);
 ellipse(220,180,10,10);
 
}

void duct3(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,192,10,10);
 ellipse(220,192,10,10);
 ellipse(205,168,10,10);
 
}

void duct4(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 
}

void duct5(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 ellipse(205,180,10,10);
 
}

void duct6(){
 stroke(240,240,240);
 fill(256,256,256);
 ellipse(190,195,10,10);
 ellipse(220,195,10,10);
 ellipse(220,165,10,10);
 ellipse(190,165,10,10);
 ellipse(190,180,10,10);
 ellipse(220,180,10,10);
 
}
