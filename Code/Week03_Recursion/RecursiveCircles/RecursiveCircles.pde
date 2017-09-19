
/*
RECURSIVE CIRCLES
Jeff Thompson | 2017 | jeffreythompson.org

A slightly more complex take on our recursive
lines example – here we draw circles branching
off from the left/right and up/down.

While our first example could be accomplished with
a for loop, this one can't. Each step contains a 
smaller version of the previous one, packing more
and more tightly inward. This is what's really cool
about recursion, and the ability to define such a
complex system with just a few lines of code!

CHALLENGES:
1. Try changing the values for the initial and minimum
   radii, and the amount that the radius is changed.
2. Can you drive color or transparency shifts within
   the recursive function? (Hint: use map())
3. Can you re-write our recursive function to work by
   a set number of steps, instead of by radius?

*/


float radius =    400;    // starting radius
float minRadius = 50;     // exit condition

// note that variables have "scope" – the context where they can be seen
// variables declared above setup() are "global" and can be seen
// throughout the sketch; variables in setup() or functions are "local"
// and can't be seen outside the context they were defined in


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
  
  // NOTE: this method for defining the exit
  // condition is a little different – here we
  // run the recursive code *inside* the if
  // statement. This means that the function
  // finishes when the radius is less than the
  // minRadius, then quits. Either way works,
  // but sometimes one is clearer than the other.
}