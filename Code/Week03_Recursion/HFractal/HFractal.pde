
/*
H-FRACTAL
Jeff Thompson | 2017 | jeffreythompson.org
 
Similar to the Sierpinski carpet, the h-fractal has
features that repeat at smaller and smaller scales.
 
More info here:
https://en.wikipedia.org/wiki/H_tree

CHALLENGES:
1. Try changing the formulas for the lines, either
   randomly or carefully, and see what happens.
2. Can you shapes other than lines, changing their
   position and/or size along the way?
 
*/


int minLen = 10;    // where to stop recursion


void setup() {
  size(800, 800);
  background(255);

  // pass intial coords and length
  strokeWeight(2);
  branch(width/2, height/2, 400);
}


void branch(float x, float y, float len) {
  
  // for extra fun, try changing the stroke color
  // using the length of the line
  // stroke( map(len, 400,minLen, 20,230) );
  
  // each iteration draws an "H" shape made of three lines
  // draw the horizontal piece...
  line(x-len/2, y, x+len/2, y);
  
  // ...and draw the vertical pieces
  line(x-len/2, y-len/2, x-len/2, y+len/2);   // left
  line(x+len/2, y-len/2, x+len/2,y+len/2);    // right
  
  // reduce length
  len /= 2;
  
  // recursively draw branches, passing in new
  // starting points from the tips of the "H"
  if (len > minLen) {
    branch(x-len, y-len, len);    // upper L
    branch(x-len, y+len, len);    // lower L
    branch(x+len, y-len, len);    // upper R
    branch(x+len, y+len, len);    // lower R
  }
}