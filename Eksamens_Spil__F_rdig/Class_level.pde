class level {

  int Xlevel,Ylevel,Xwidth,Yheight; 
 
  level(int Xgl, int Ygl, int Xw, int Yh) {
  Xlevel = Xgl;
  Ylevel = Ygl;
  Xwidth = Xw;
  Yheight = Yh;
}
 void lane() {
 fill(objectColor1);
 stroke(objectColor2);
 strokeWeight(2);
 rect(Xlevel,Ylevel,Xwidth,Yheight);
 
 } 
  
 void wall() {
 fill(objectColor1);
 stroke(objectColor2);
 strokeWeight(2);
 rect(Xlevel,Ylevel,Xwidth,Yheight); 

  }
}
