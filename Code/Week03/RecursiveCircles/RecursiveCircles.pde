
/*
RECURSIVE CIRCLES
Jeff Thompson | 2017 | jeffreythompson.org

A slightly more complex take on our recursive
lines example – here we draw circles branching
off from the left/right and up/down.

CHALLENGES:
1. Try changing the values for the initial and minimum
   radii, and the amount that the radius is changed.
2. Can you drive color or transparency shifts within
   the recursive function? (Hint: use map())

*/


float radius =    700;    // starting radius
float minRadius = 10;     // exit condition


void setup() {
  size(800,800);
  background(100);
  
  // run from the center
  drawCircle(width/2, height/2, radius);
}


void drawCircle(float x, float y, float r) {
  
  // draw the circle
  stroke(255);
  noFill();
  ellipse(x,y, r,r);
  
  // update the radius
  r *= 0.5;
  
  // if above min radius, recursively
  // draw two more circles to left and 
  // right and two up and down
  if (r > minRadius) {
    drawCircle(x-r, y, r);
    drawCircle(x+r, y, r);
    drawCircle(x, y-r, r);
    drawCircle(x, y+r, r);
  }
}