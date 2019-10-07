
/*
MULTIPLE IMAGES
Jeff Thompson | 2019 | jeffreythompson.org

We're not limited to just one PImage object in our sketch! You 
can have separate PImage objects with different images loaded
into them, or even load a new image into an existing PImage
partway through your sketch.

*/


PImage woman, puppy;


void setup() {
  size(900,700);
  
  // load the images into separate PImage objects
  woman = loadImage("Test.jpg");
  puppy = loadImage("Puppy.jpg");
  
  // we can then separately resize them...
  woman.resize(0, height);
  puppy.resize(100, 0);
  
  // ...and display them too
  image(woman, 0,0);
  for (int i=0; i<10; i++) {
    image(puppy, random(width-puppy.width),random(height-puppy.height));
  }
}

  
