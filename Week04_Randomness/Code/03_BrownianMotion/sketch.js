
/*
BROWNIAN MOTION
Jeff Thompson | 2017/20 | jeffreythompson.org

Brownian motion, a type of "random walk," was first described
by Robert Brown, a botonist, in 1827 while observing pollen
grains in water. The principle is simple: at each step, move
the object randomly backwards or forwards, up or down in two-
dimensional space. Here, we add a series of vertices using
begin/endShape(), creating patterns that look like ant tunnels 
or DNA strands.

Read more about Brownian motion here:
https://en.wikipedia.org/wiki/Brownian_motion

CHALLENGES:
1. Can you try doing this with other shapes, or combinations
   of shapes? (Maybe using push/pop() and translate()?) How else 
   can you tweak the sketch to make it more interesting?
2. Currently, the lines can run off the edges of the screen 
   and disappear. Can you make it not do that? (Hint: either 
   use constrain() or try to make it wrap around to the 
   opposite side)

*/

// max distance the we can move each step
let speed = 12;


function setup() {
  createCanvas(400, 400);
    noLoop();
}


function draw() {
    background(255);
  
    // start in center of screen
    let x = width/2;
    let y = height/2;
  
    // draw a long line, updating the x/y position
    // by a random amount each step
    noFill();
    stroke(0);
    beginShape();
    for (let i=0; i<500; i++) {
      
      // draw a vertex at the current x/y position
      vertex(x, y);
      
      // try this instead of the line above!
      // curveVertex(x, y);

      // move by a random amount left/right and up/down
      x += random(-speed,speed);
      y += random(-speed,speed);
    }
    endShape();
}

