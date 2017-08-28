
/*
LOADING AND DISPLAYING IMAGES
Jeff Thompson | 2017 | jeffreythompson.org

Processing has lots of vector drawing functions, but we can also
load, display, and manipulate raster (pixel-based) images using the
built-in PImage class.

CHALLENGES
+ The image's upper-left corner is placed at the mouse cursor –
  can you make it draw centered on the mouse instead? Hint: either
  access the image's size using img.width and img.height, or using
  the imageMode() function.

*/

PImage img;    // the PImage class is used to load/display raster images


void setup() {
  size(800,800);
  noCursor();
  
  // load the image from file (can also load remotely
  // from a url, which is kinda fun too)
  img = loadImage("CatHead.jpg");
  
  // note we wouldn't want to do this in the draw() function,
  // since it would re-load the image every frame and potentially
  // bog down our sketch
}
 

void draw() {
  background(255);
  
  // display the image at the mouse coordinates
  image(img, mouseX,mouseY);
}