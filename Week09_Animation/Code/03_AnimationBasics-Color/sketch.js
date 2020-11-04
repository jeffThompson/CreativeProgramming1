
/*
ANIMATION BASICS: COLOR
Jeff Thompson | 2019/20 | jeffreythompson.org

Sensing a theme here? :)

We can animate color changes, either smoothly using 
lerpColor() or when an event happens, like hitting
the edge of the screen.

CHALLENGES:
1. Can you make the main circle get smaller every 
   time it hits the edge?

*/

let speed =  3;       // move this much each frame
let radius = 100;     // radius of the circle

let bumpCount = 0;    // how many times have we hit the edge?

let angle = 0;
let x;


function setup() {
  createCanvas(windowWidth, windowHeight);

  // start in the center
  x = width/2;
}


function draw() {
  background(50);
  
  // each frame, use the x position, as well as the
  // min and max x position in map() to set the fill
  // color using lerpColor()
  let from = color(255,150,0);
  let to =   color(0,150,255);
  let pct =  map(x, radius,width-radius, 0,1);
  
  fill( lerpColor(from, to, pct) );
  noStroke();
  circle(x,height/2, radius*2);
  
  // update the x position
  x += speed;
  
  // bounce when shape hits the edges of the screen
  if (x-radius < 0 || x+radius > width) {
    speed *= -1;            // reverse direction of motion
    bumpCount += 1;         // update edge-bump count
    console.log(bumpCount);
  }

  // bonus: give our circle a smaller circle that 
  // orbits it and changes color as it goes around!
  push();
  translate(x, height/2);     // center on the main circle
  rotate(angle);              // orbit, pls
  translate(0, radius*1.6);   // offset from main circle

  if (angle < PI) {   // if the angle is 0–180º...
    fill(0);          // ...use black fill
  }
  else {
    fill(255);        // otherwise use white
  }
  circle(0,0, 50);
  pop();

  // update the angle of rotation
  // if we're past TWO_PI (360º), reset to 
  // zero so we can have the color switch above
  angle += radians(2);
  if (angle >= TWO_PI) {
    angle = 0;
  }
}

