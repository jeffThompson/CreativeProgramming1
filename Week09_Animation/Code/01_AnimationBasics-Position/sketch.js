
/*
ANIMATION BASICS: POSITION
Jeff Thompson | 2019/20 | jeffreythompson.org

Like rotation, we can make an object's position change
over time and move it across the screen!

CHALLENGES:
1. Can you have the square move in the y direction
   instead? What about at the same time, using a
   different speed?
2. Can you make the square rotate around it's center
   while moving?

*/

let speed = 3;  // how far the square will
                // move each frame (aka its speed!)
let x;          // x position of the square


function setup() {
  createCanvas(windowWidth, windowHeight);

  // set initial position to the center
  // (we have to do this in setup() since the
  // width of our canvas isn't set until we
  // use the createCanvas() command)
  x = width/2;
}


function draw() {
  background(50);
  
  // draw a square in the current position
  fill(255);
  noStroke();
  rectMode(CENTER);
  square(x, height/2, 100);
  
  // every frame, update the x position using
  // the speed variable
  x += speed;
  
  // if the x position hits the left or right edge
  // (which we can figure out using the square's 
  // position and size), we change directions by
  // reversing speed
  if (x < 50 || x > width-50) {
    
    // a fancy trick!
    // multiplying by -1 means that if the speed is
    // positive it will become negative and vice versa
    speed *= -1;
  }  
}

