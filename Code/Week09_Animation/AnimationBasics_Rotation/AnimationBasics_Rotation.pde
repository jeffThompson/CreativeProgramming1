
/*
ANIMATION BASICS: ROTATION
Jeff Thompson | 2019 | jeffreythompson.org

Animation is the appearance of motion, created by
a sequence of frames where objects change position,
rotation, etc. Complex animation, like a Disney movie,
requires immensely complex software and math. But the
basics are actually pretty easy and we can do a lot
with the tools we've already covered.

In this example, we rotate an object around its axis,
but the real power is in combining drawing commands,
design considerations, and layers of animation!

CHALLENGES:
+ Can you make the outside squares rotate as a group
  around the center square?
+ Can you have the squares rotate 360º then reverse
  direction? (Hint: see the "Animation Basics: 
  Position")

*/


// angle of rotation, which is the parameter
// that we'll animate
float angle = 0;


void setup() {
  size(600,600);
  
  // nothing else here!
  // all our animation happens in the draw() loop
}


void draw() {
  background(50);
  
  // draw a rectangle in the center of the
  // window that rotates around itself
  pushMatrix();
  translate(width/2, height/2);
  
  // the angle of rotation is what we're animating
  // (changing over time) — see how we update this
  // angle each frame at the end of the draw() loop
  rotate(angle);
  
  // draw the rectangle
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(0,0, 150,150);
  popMatrix();
  
  // a slightly fancier addition, but really this
  // just uses what we've done above!
  // first, we use a for-loop to create a ring of
  // squares around the center 30º apart
  for (float a=0; a<TWO_PI; a+=radians(30)) {
    pushMatrix();
    translate(width/2, height/2);    // translate to center
    rotate(a);                       // rotate into position
    translate(0, 200);               // then offset vertically by 200px
    rotate(-angle);                  // make them spin around their centers!
    rect(0,0, 50,50);                // draw small rectangles
    popMatrix();
  }
  
  // in order for our square to be animated, we
  // need to change the angle each frame
  // try changing the amount we add to the angle
  // and see how the animation changes!
  // hint: we can think of this as "speed"
  angle += radians(1);
}
  
  
