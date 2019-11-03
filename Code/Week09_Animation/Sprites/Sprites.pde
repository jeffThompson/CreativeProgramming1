
/*
SPRITES
Jeff Thompson | 2019 | jeffreythompson.org

Sprites, a series of still images to create more 
complex animations or a hand-drawn look, are also
possible im Processing. We can load in an array
(a list) of images, then draw them one-by-one.

Doing this requires a little bit of forethought,
though: we need to consider where in our code we
want each step to be. We wouldn't want to load the
images in the draw() loop, since that will happen
again and again each frame, which may slow down
our program. Instead, we'll load the images in
setup(), making them quickly accessible in the
draw() loop.

The frames of your animation should be stored in a
folder (ours is called "frames") and their filenames
should be sequentially numbered.

SPRITE SHEET
Another way of dealing with sprites is through a "sprite
sheet," a single image with all the animation frames
tiled together. You can load the image, cut it into
pieces with get(), and put them into an array. This
is common in older games but is also helpful if you
don't want to have too many files in your sketch folder
(and in programs like Unity, it's way more memory
efficient too!. An example of this is in the 
cutSpriteSheet tab, or try implementing it yourself!

Explosion sprite sheet via SeekPNG:
https://www.seekpng.com/ipng/u2q8t4i1o0t4a9u2_drawn-
explosions-sprite-explosion-sprite-sheet-doom/

CHALLENGES:
+ Can you make the sprite move around? Either try
  making it follow your mouse or animate it like
  we did in Animation Basics: Position
+ Can you create two different sprites that get
  displayed onscreen? Hint: you'll need two different
  arrays, two different "whichFrame" variables,
  and two different x/y positions.
+ Can you load the ExplosionSpriteSheet.jpg image (in
  the sketch folder) and cut it into individual frames?

*/


int numFrames = 48; // how many frames are in the animation?
int whichFrame = 0; // a variable to keep track of which frame
                    // to display; gets updated in draw()
                    
PImage[] frames;    // a list of images
float x, y;         // position of the sprite


void setup() {
  size(600,600);
  
  // start the sprite in the center
  // of the screen
  x = width/2;
  y = height/2;
  
  // load the frames of the animation!
  // first we initialize the array to the number
  // of frames in our animation
  frames = new PImage[numFrames];
  for (int i=0; i<frames.length; i++) {
    
    // for each one, create the filename of the
    // frame we want to load, then load the image
    // and add it to our array
    String filename = "frames/" + i + ".png";
    frames[i] = loadImage(filename);
  }
  
  // alteratively, use this function to cut a "sprite
  // sheet" into individual frames (see the challenge above
  // to try doing this yourself)
  // arguments: path to image, # tiles wide and high, and
  // if the frames should be saved to file
  // frames = cutSpriteSheet("ExplosionSpriteSheet.png", 8,6, true);
}


void draw() {
  background(255);
  
  // draw the current image (at index "whichFrame")
  // at the sprite's x/y position
  imageMode(CENTER);
  image(frames[whichFrame], x,y);
  
  // update which frame we want to display
  // if we've reached the end of the array,
  // reset the count to 0 and start over
  whichFrame += 1;
  if (whichFrame == frames.length) {
    whichFrame = 0;
    
    // start animation again at a random location, ensuring
    // that the frames aren't off the edges (you might not want
    // to do this if you're doing an idle cycle, for example)
    x = random(frames[0].width/2, width-frames[0].width/2);
    y = random(frames[0].height/2, height-frames[0].height/2);
  }
}
