class level {

  int XgoundLevel,YgoundLevel; 
 
  level(int Xg1, int Yg1) {
  XgoundLevel = Xg1;
  YgoundLevel = Yg1;
}
 void lane() {
 rect(XgoundLevel,YgoundLevel,150,20);

}

 void wall() {
 rect(XgoundLevel,YgoundLevel,20,150);

}
}
