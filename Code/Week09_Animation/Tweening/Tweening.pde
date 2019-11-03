
/*
TWEENING
Jeff Thompson | 2019 | jeffreythompson.org

Tweening is the smooth transition of one shape
to another. In its original sense, tweening was
short for "in-betweening." In cell animation, the
animator would draw in the frames between two
keyframes, creating smooth character motion.

Tweening today is a complex technical process, but
we can do some simple transformations as an object
moves, giving another layer of dynamism.

*/


float speed =     3;    // speed of motion
float distance =  400;  // how far the rect can travel
float minHeight = 10;   // height at ends of travel
float maxHeight = 100;  // height when at center of travel

float h;                // height of the rectangle
float y;                // y position


void setup() {
  size(600,600);

  // start in center of screen
  y = height/2;
}


void draw() {
  background(50);
  
  // use map() to set the shape's height based on
  // its y position — we use an if statement here so
  // that when the shape is at the top or bottom it's
  // smallest, largest when it's at the center
  if (y < height/2) {
    h = map(y, height/2-distance/2, height/2, minHeight,maxHeight);
  }
  else {
    h = map(y, height/2, height/2+distance/2, maxHeight,minHeight);
  }
  
  // draw the shape
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(width/2,y, 10,h);
  
  // update the position and bounce
  y += speed;
  if (y > height/2+distance/2) {
    speed *= -1;
  }
  else if (y < height/2-distance/2) {
    speed *= -1;
  }
}
