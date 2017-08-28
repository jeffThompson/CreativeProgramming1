
/*
SEMI-TRANSPARENT BACKGROUND
Jeff Thompson | 2017 | jeffreythompson.org

The usual background() function draws over every 
pixel entirely – if we want to leave trails of 
previous frames, we'll have to use a couple of steps.

This creates effects similar to video feedback:
https://en.wikipedia.org/wiki/Video_feedback

CHALLENGES:
1. Can you make the transparency adjustable using
   arrow keys?

*/

void setup() {
  size(800,800);
  
}


void draw() {
  
  // instead of background(), we'll have to
  // draw a semi-transparent rectangle over the
  // entire screen
  fill(255, 50);
  noStroke();
  rect(0,0, width,height);
  
  // draw lines from the previous to current
  // mouse positions
  stroke(0);
  line(mouseX,mouseY, pmouseX,pmouseY);
  
}