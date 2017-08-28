
/*
SAVING SEQUENTIAL IMAGES
Jeff Thompson | 2017 | jeffreythompson.org

For animated or interactive sketches, a single
screenshot often can't capture the full sense of
a project. And you might want to render the frames
to a video. To do that, we'll need to export multiple
frames and give them unique filenames.

CHALLENGES:
1. Can you format a nicer filename by combining
   multiple strings?

*/


void setup() {
  size(400,400);
  
}

void draw() {
  background(50);
  
  // do something interesting(ish) to capture
  float r = map(frameCount % 255, 0, 255, 50,255);
  float g = map(frameCount % 255, 0, 255, 150,0);
  float b = map(frameCount % 255, 0, 255, 255,0);
  fill(r, g, b);
  noStroke();
  rect(width/2-100, height/2-100, 200,200); 
  
  // create a sequential filename using nf(),
  // which adds "leading zeroes" (aka "padding")
  // to the current frame count
  String filename = nf(frameCount, 3) + ".png";
  println("Saving as " + filename);
  
  // save files to a sub-folder by adding it to
  // the filename – Processing will create the 
  // folder and/or full path automatically :)
  save("Frames/"  + filename);
  
  // we don't have to have this, but since our 
  // animation is short, we can quit when it
  // has finished
  if (frameCount % 255 == 0) {
    exit();
  }
}