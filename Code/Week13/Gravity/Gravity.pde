
/*
GRAVITY
Jeff Thompson | 2015/17 | jeffreythompson.org

Simulating physics can be pretty easy (like this gravity
example) or REALLY complicated. Here we move a ball downward
using gravity and control its "bounciness" with a friction
variable.

For an example with directional movement, see the "BouncingBubbles"
example in the "Motion" section of the Processing examples.

For REALLY fancy (but complicated) physics, try the Box2D
engine for Processing, explained in Daniel Shiffman's great
book "Nature of Code".

CHALLENGES:
+  Try moving this code to an object-oriented approach, randomly
   adding balls to an ArrayList and dropping them across the screen
   from random X coordinates like bouncing raindrops.
+  Instead of just the bottom of the screen, can you make the ball
   check its Y position against the top edge of a box and bounce
   when it hits it? What about an ArrayList of balls bouncing off 
   an ArrayList of boxes?

*/

float dia =        50;      // size of the ball
float gravity =    0.5;     // strength of gravity – try changing!
float bounciness = -0.8;    // aka friction (negative so it moves upward)

float x, y;                 // position
float speed = 0;            // initial speed is 0


void setup() {
  size(800,800);
  
  x = width/2;              // start ball at center
  y = dia*2;                // and just below the top
}


void draw() {
  background(50);
  
  // incrementally adding gravity to the speed
  // makes the ball accelerate (this means the
  // speed is dynamic, changing over time, which
  // gives a more realistic movement than just
  // adding a static speed to the ball)
  speed += gravity;
  
  // then add speed to the ball's position
  y += speed;
  
  // if we've hit the bottom edge, bounce!
  if (y + dia/2 > height) {
    
    // first we set the position of the ball to the 
    // bottom, otherwise it drifts down past the bottom edge
    y = height-dia/2;
    
    // then we reverse the direction and reduce the overall 
    // speed by multiplying it by "bounciness"
    speed *= bounciness;
  }
  
  // draw the ball
  fill(255);
  noStroke();
  ellipse(x, y, dia, dia);
}


// any key to drop the ball again
void keyPressed() {
  y = dia/2;          // reset position...
  speed = 0;          // and speed
}