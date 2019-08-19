
/*
BROWNIAN MOTION
Jeff Thompson | 2017 | jeffreythompson.org

Brownian motion, a type of random walk, was first described
by Robert Brown, a botonist, in 1827 while observing pollen
grains in water. The principle is simple: at each step, move
the object randomly backwards or forwards in 2D space.

Here, we draw a semi-transparent circle and move it each
frame, creating patterns that look like ant tunnels or
DNA strands.

Read more about Brownian motion here:
https://en.wikipedia.org/wiki/Brownian_motion

CHALLENGES:
1. Can you try doing this with other shapes, or combinations
   of shapes? How else can you tweak the settings to change
   the result that is drawn?
2. Currently, the circle can run off the edges of the screen 
   and disappear. Can you make it not do that? (Hint: either 
   use constrain() or try to make it wrap around to the 
   opposite side.)

*/

float speed = 6;    // max movement each frame
float x, y;         // position values for the circle


void setup() {
  size(800,800);
  
  // draw background once, then not
  // again in draw()
  background(255);
  
  // start in center of screen
  x = width/2;
  y = height/2;
}


void draw() {
  
  // draw a circle at the current x/y position
  fill(0, 80);
  noStroke();
  ellipse(x,y, 6,6);
  
  // move by a random amount
  x += random(-speed,speed);
  y += random(-speed,speed);
}