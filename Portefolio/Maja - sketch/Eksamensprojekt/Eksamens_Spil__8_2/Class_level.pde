class level {

  int XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight; 
 
  level(int Xgl, int Ygl, int Xlw, int Ylh) {
  XgoundLevel = Xgl;
  YgoundLevel = Ygl;
  XlaneWidth = Xlw;
  YlaneHeight = Ylh;
}
 void lane() {
 rect(XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight);
 fill(90);
 stroke(60);
 strokeWeight(2); 
 
 } 
  
 void wall() {
 rect(XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight);
 fill(90);
 stroke(60);
 strokeWeight(2); 

  }
}
