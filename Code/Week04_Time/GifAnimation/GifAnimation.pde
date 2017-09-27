
import gifAnimation.*;    // import the animation library

/*
GIF ANIMATION
Jeff Thompson | 2017 | jeffreythompson.org

Static images don't always capture complex, animated projects
and video screencapture can be cumbersome and can result in 
big files. An animated gif isn't perfect, but it can be a good
compromise.

Requires this library:
https://github.com/01010101/GifAnimation

Follow the instructions on its Github page to install it.

*/

int numFrames = 50;       // how many frames to save?
int frameDelay = 1;       // delay b/w frames of the animation (in millis)

GifMaker gif;             // create the gif animation "object"


void setup() {
  size(400,400);
  
  // slow down the framerate, otherwise our
  // animation will have a ton of frames!
  frameRate(5);
  
  // create the animation – the second argument
  // is the filename for our animation
  gif = new GifMaker(this, "clock.gif");
  gif.setRepeat(0);    // make it loop
}

void draw() {
  background(50);
  
  // draw a circle rotating around the center
  pushMatrix();
  translate(width/2, height/2);              // move to the center
  rotate( map(second(), 0,59, 0,TWO_PI) );   // rotate based on the time
  translate(0, -150);                        // offset (negative so 0 is at the top)
  fill(255);
  noStroke();
  ellipse(0,0, 30,30);                       // draw a circle
  rect(0,0, 4,150);                          // and a rectangle to the center
  popMatrix();
  
  // each frame, add a delay (in milliseconds)
  // and add the frame to the animation
  gif.setDelay(frameDelay);
  gif.addFrame();
  
  // if we've reached a certain number of
  // frames, save and quit
  if (frameCount > numFrames) {
    gif.finish();
    exit();
  }
}