
/*
PYTHAGORAS TREE: LINES
Jeff Thompson | 2017 | jeffreythompson.org

A classic fractal, the Pythagoras tree uses a simple recusive
function. Like all fractals, when the variables are changed
slightly, the results vary widely.

This recursion is hard to follow mentally, but the metaphor of
a tree is apt: as the function is called, it branches and branches
and branches. When the exit condition is reached, it returns to
where it left off and continues down the opposite branch.
 
For more info: 
http://en.wikipedia.org/wiki/Pythagoras_tree_(fractal)

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

float startLen = 100;    // initial length of line
float minLen =   10;     // min length (sets exit condition)


void setup() {
  size(800,800);
  background(200);
  
  // line stuff
  stroke(0);
  strokeWeight(3);
  
  // move to the starting position and
  // draw the trunk
  translate(width/2, height);
  line(0,0, 0,-startLen);
  
  // draw the tree!
  branch(startLen);
}


void branch(float len) {
  
  // move to the top of the previous line
  translate(0, -len);
  
  // reduce the line length each time the
  // function is called – try changing this
  // and swee how it changes the tree!
  len *= 0.6;
  
  // classically, this would be the formula used
  // len *= 0.5 * sqrt(2);
  
  // if the size is too small, stop
  if (len < minLen) {
    return;
  }
  
  // rotate left
  pushMatrix();            // local transformations
  rotate( radians(45) );   // rotate branch
  line(0,0, 0,-len);       // draw the line
  branch(len);             // recursively call this function
  popMatrix();
  
  // rotate right
  pushMatrix();            // ditto for the right side
  rotate( radians(-45) );  // note we rotate by a negative angle
  line(0,0, 0,-len);
  branch(len);
  popMatrix();
}
  
  
  
  