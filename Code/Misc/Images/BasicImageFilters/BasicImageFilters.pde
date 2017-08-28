
/*
BASIC IMAGE FILTERS
Jeff Thompson | 2017 | jeffreythompson.org

A "filter" is really just a procedure for manipulating
an image's pixels. Here we perform three basic filters:
threshold, brightness, and contrast.

For fancier filters that take into consideration their
neighboring pixel's values, see the "KernelFilter" example.

CHALLENGES:
+ Can you make the Brightness and Contrast filters into
  a single tool that modifies both using X/Y mouse coordinates?
+ Can you invent your own filter using these ideas? Can you
  implement filters you've used in Photoshop or read about online?
+ See also individual challenges within each filter's function...

*/

PImage img;


void setup() {
  size(750, 491);
  img = loadImage("Sunset.jpg");
}


void draw() {
  
  // re-draw the image each frame
  image(img, 0,0);
  loadPixels();
  
  // several possible filters below
  // un-comment the code to try them, or try chaining
  // them together and see what happens!
  
  // invert the image's colors
  invert();
  
  // theshold converts an image's colors into binary black or white
  // threshold();
  
  // brighten or darken an image
  // brighten();
  
  // adjust the contrast of an image
  // contrast();
  
  // update pixel array to make sure what we see is the most
  // up-to-date version
  updatePixels();
}