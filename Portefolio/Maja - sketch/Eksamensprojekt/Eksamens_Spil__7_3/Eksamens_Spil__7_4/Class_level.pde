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
 
}

}
