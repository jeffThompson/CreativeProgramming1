
/*
ANIMATION BASICS
Jeff Thompson | 2017 | jeffreythompson.org

The draw() loop lets us draw animated shapes,
interact with our sketch, and do other things
that happen over time. It starts after setup()
is finished, and runs over and over until the
sketch is stopped.

There is a *ton* more we can do with animation
and the draw() loop, and we'll return to this
in the Interaction sections throughout the
semester.

CHALLENGES:
1. Can you make the square rotate counter-clockwise?
2. Can you animate multiple squares that rotate at
   different rates?
3. Can you make the square move as well as rotate?
   Hint: assign it an x/y coordinate in addition 
   to an angle of rotation.

*/

// if we want variables accessible in setup() and
// draw(), they need to be "global" variables, which
// are declared up at the top – here we keep track of
// an angle of rotation, which gets updated every frame
float angle = 0;


void setup() {
  size(800,800);
  rectMode(CENTER);
 
  // nothing else here!
}


void draw() {
  
  // the draw() function gets called
  // repeatedly until the sketch is quit
  
  // we can see how fast it's rendering by
  // accessing the frameRate variable – this
  // is useful when doing graphically or
  // computationally complex tasks, to see
  // how it affects your sketch
  println("Current framerate: " + frameRate + "fps");
  
  // each frame, we will (most likely)
  // want to clear the previous frame
  // by first calling background()
  background(150);
  
  // try not doing this and see what happens!
  // (or with a semi-transparent rectangle)
  
  // draw a square rotating in the center of
  // the screen – we use push/popMatrix() so
  // we can rotate the square from the center
  pushMatrix();
  translate(width/2, height/2);  // move origin to center
  rotate(angle);                 // rotate by angle (in radians)
  noFill();
  stroke(255);
  rect(0,0, 500,500);            // draw square in the center
  popMatrix();
  
  // update the angle of rotation
  // try changing and see the speed change
  angle += 0.01;
}