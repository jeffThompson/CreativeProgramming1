
/*
CREATING VIDEOS
Jeff Thompson | 2017 | jeffreythompson.org

Running a sketch as an app is often all you need, but sometimes
you want to render the sketch's output to video. You might want
to do this to document a software project, or you've written
a sketch for the purpose of creating a cool animation or motion
graphic.

We have two options for rendering video...

MOVIE MAKER
Processing's built-in Movie Maker tool makes it easy to
create videos from a folder of images (and you can add
sound too!). 

1. Run this sketch to render the files
2. Open Tools > Movie Maker...
3. Select your images and output settings and hit "Create movie..."

Using the "Animation" or "PNG" compression will give really nice
results for crisp graphics, but will result in really big video
files. JPG gives much smaller files, with the tradeoff of quality.

FFMPEG
A slightly more complex but way more powerful tool, ffmpeg
runs from the command line. It can take a folder of images
and write to a wide variety of movie file types, codecs, 
and other settings. This is great when you want lots of control
over a video's look, or you have unique considerations in your
video like preserving sharp pixels or lots of movement.

Download and info here: https://ffmpeg.org

A typical ffmpeg command looks like this:
ffmpeg -y -r 24 -i %04d.png -vcodec png MySuperCoolVideo.mov

*/


int spacing = 6;      // how far apart should the grid be?
float angle = 0;      // angle of rotation for the grid


void setup() {
  //size(640, 480);     // standard SD resolution
  size(1920,1080);      // standard HD resolution
  //size(3840,2160);    // standard 4k resolution
  
  stroke(255, 100);
  noFill();
}


void draw() {
  background(0);
  
  // draw two sets of rotating grids, creating a moire effect
  // https://en.wikipedia.org/wiki/Moir%C3%A9_pattern
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  for (int y=-height; y<height; y+=spacing) {
    for (int x=-width; x<width; x+=spacing) {
      rect(x,y,spacing,spacing);
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(-angle));
  for (int y=-height; y<height; y+=spacing) {
    for (int x=-width; x<width; x+=spacing) {
      rect(x,y,spacing,spacing);
    }
  }
  popMatrix();
  
  // update rotation, if we've reached 360 then quit
  angle += 1;
  if (angle > 360) {
    exit();
  }
  
  // save out individual frames
  // filenames should include leading zeroes so
  // they appear in the right order
  save("frames/" + nf(frameCount, 3) + ".png");
}