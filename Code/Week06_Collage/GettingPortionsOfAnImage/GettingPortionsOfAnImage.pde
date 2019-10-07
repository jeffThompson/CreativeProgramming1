
/*
GETTING PORTIONS OF AN IMAGE
Jeff Thompson | 2019 | jeffreythompson.org

With loadImage() and resize(), we can easily load and
display images. But if we want to make collages, we'll
need a way to cut out a portion of an image. This could
be done manually using arrays of pixel values, but 
fortunately Processing has a built-in command to make
this really easy: get()

CHALLENGES
+ Can you grab random squares from the source image and
  draw them in random locations? Can you add random rotation
  as well? (Hint: use pushMatrix() and imageMode(CENTER) to
  draw the images from the center like ellipse() does)

*/

PImage img;    // image that we'll load and cut


void setup() {
  size(800,800);
  background(255);
  
  // load the image
  img = loadImage("Test.jpg");
  
  // use the get() command to create a new PImage made up of
  // a portion of the original
  // arguments are start x/y in the source image and width/height
  // to extract
  PImage leftCorner = img.get(0,0, img.width/2, img.height/2);
  image(leftCorner, 0,0);
  
  // a bit fancier: draw random strips from the image
  // for-loop starts halfway down the screen (height/2)
  for (int y=height/2; y<height; y+=10) {
    
    // pick a y point to get the strip from
    int stripYPosition = int(random(0,img.height-10));
    
    // use get() to extract as a PImage and draw onscreen
    PImage strip = img.get(0,stripYPosition, img.width,10);
    image(strip, 0,y);
  }  
}
