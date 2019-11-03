
/*
ANIMATION BASICS: POSITION
Jeff Thompson | 2019 | jeffreythompson.org

Like rotation, we can make an object's position change
over time, making it appear to move across the screen!

CHALLENGES:
+ Can you make the square rotate around it's center
  while moving?

*/


float speed = 3;    // how far the square will move
float x;            // each frame (aka its speed!)


void setup() {
  size(600,600);
  
  // set the initial position to
  // the center
  x = width/2;
}


void draw() {
  background(50);
  
  // draw a square in the current position
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(x, height/2, 100,100);
  
  // every frame, update the x position using
  // the speed
  x += speed;
  
  // if the x position moves past a certain
  // point, reverse the speed so it goes
  // the opposite direction
  if (x > width/2+50) {
    
    // a fancy trick!
    // multiplying by -1 means that if the speed is
    // positive it will become negative and vice versa
    speed *= -1;
  }
  
  // do the same thing in the opposite direction
  else if (x < width/2-50) {
    speed *= -1;
  }
}









  
