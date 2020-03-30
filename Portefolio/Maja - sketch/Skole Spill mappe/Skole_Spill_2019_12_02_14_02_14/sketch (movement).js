var x = 20;
var y = 20;
speed = 5

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(200);
  player();
  
  }
  
  function player () {
  rect(x,y,20,20)
  stroke(0,0,150);
  strokeWeight(2);
  fill(0,0,200);

 }
  if (x >= 400){
    x = 0; 
  }
  if (y >= 400){
    y = 0; 
  }
  
function keyPressed() {
   if (keyCode === UP_ARROW) {
     y = y + 20;
   } if (keyCode === DOWN_ARROW) {
     y = y - 20;
   } if (keyCode === LEFT_ARROW) {
     x = x + 20;
   } if (keyCode === RIGHT_ARROW) {
     x = x - 20; 
   }
   
 }

