
/*
PYTHAGORAS TREE: BOXES
Jeff Thompson | 2017 | jeffreythompson.org

A modified version of the more basic line example, using squares
instead.

CHALLENGES:
1. Try changing the variables below, and the reduction formula
   to see how the tree changes. Can you start to predict what
   will happen when you make a change?
2. Try modifying the code so that the right and left branches are
   different.
3. Can you make the color of the branches change as well? (Hint:
   use the box size and map() to drive the changes.)
4. Can you make the tree more realistic? Can you add leaves?
 
*/


float boxSize =  200;    // initial size of box
int minSize =    5;      // minimum size for box (sets the exit condition)
float rotAngle = 45;     // rotation angle for each branch


void setup() {
  size(800, 800);
  background(200);
  
  // draw rects from center, like ellipse()
  rectMode(CENTER);
  
  // move to starting location off the bottom edge
  translate(width/2, height-boxSize/2);
  
  // and draw first box
  fill(0, 100);
  noStroke();
  rect(0, 0, boxSize, boxSize);

  // recursively draw branches
  branch(boxSize);
}


void branch(float s) {

  // store previous box size (to translate 
  // position below) before updating box size
  float prevS = s;
  
  // reduce the box size each time the function is called
  // try changing this to see how it changes the tree!
  s *= 0.6;
  
  // classically, this would be the formula used
  // s *= 0.5 * sqrt(2);

  // if the size is too small, stop
  if (s < minSize) {
    return;
  }
  
  // otherwise, draw and continue recursion

  // rotate left
  pushMatrix();                     // local transformations
  translate(-prevS/2, -prevS/2);    // move to upper-L corner of previous box
  rotate(radians(-rotAngle));       // rotate branch
  translate(s/2, -s/2);             // move to center of new box
  rect(0, 0, s, s);                 // draw the rectangle
  branch(s);                        // recursively call the function with the new size
  popMatrix();

  // rotate right
  pushMatrix();                     // ditto for right side
  translate(prevS/2, -prevS/2);     // move to right corner instead
  rotate(radians(rotAngle));        // rotate() opposite direction
  translate(-s/2, -s/2);            // to the other side
  rect(0, 0, s, s);
  branch(s);
  popMatrix();
}