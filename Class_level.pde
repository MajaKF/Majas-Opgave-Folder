class level {

  int XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight; 
 
  level(int Xgl, int Ygl, int Xlw, int Ylh) {
  XgoundLevel = Xgl;
  YgoundLevel = Ygl;
  XlaneWidth = Xlw;
  YlaneHeight = Ylh;
}
 void lane() {
 fill(laneColor1);
 stroke(laneColor2);
 strokeWeight(2);
 rect(XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight);
 
 } 
  
 void wall() {
 fill(wallColor1);
 stroke(wallColor2);
 strokeWeight(2);
 rect(XgoundLevel,YgoundLevel,XlaneWidth,YlaneHeight); 

  }
}
