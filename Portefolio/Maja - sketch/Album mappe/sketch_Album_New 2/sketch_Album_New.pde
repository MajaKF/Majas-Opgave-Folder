color Color1 = color(216,132,91);
color Color2 = color(214,121,100);
color Color3 = color(186,105,98);
color Color4 = color(211,114,130);
color Color5 = color(170,97,124);
color Color6 = color(165,107,142);
color Color7 = color(118,108,137);
color Color8 = color(51,63,86);

void setup(){
size (600,600); 
background (216,214,195);

}
void draw(){
  
//Color8
noStroke();
fill(Color8);
rect (150,150,300,300);

//Color7
fill(Color7);
rect (150,150,300,258);

//Color6
fill(Color6);
rect (150,150,300,228);

//Color5
fill(Color5);
rect (150,150,300,198);

//Color4
fill(Color4);
rect (150,150,300,163);

//Color3
fill(Color3);
rect (150,150,300,130);

//Color2
fill(Color2);
rect (150,150,300,92);

//Color1
fill(Color1);
rect (150,150,300,50);

//Circle
stroke(216,214,195);
noFill();
strokeWeight(200);
ellipse(300,300,500,500);

}

void keyPressed() {
//Color 1
if (Color1 == #D8845B) {
Color1 = #779AE4;
} else {
Color1 = #D8845B;
}

//Color 2
if (Color2 == #D67964) {
Color2 = #6A8EDB;
} else {
Color2 = #D67964;
}

//Color 3
if (Color3 == #BA6962) {
Color3 = #5173D3;
} else {
Color3 = #BA6962;
}

//Color 4
if (Color4 == #D37282) {
Color4 = #8672D3;
} else {
Color4 = #D37282;
}

//Color 5
if (Color5 == #AA617C) {
Color5 = #9761AA;
} else {
Color5 = #AA617C;
}

//Color 6
if (Color6 == #A56B8E) {
Color6 = #8E6BA5;
} else {
Color6 = #A56B8E;
}

//Color 7
if (Color7 == #766C89) {
Color7 = #916BBF;
} else {
Color7 = #766C89;
}

//Color 8
if (Color8 == #333F56) {
Color8 = #A056CA;
} else {
Color8 = #333F56;
}

}
