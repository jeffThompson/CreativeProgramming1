
/*
PIXEL ARRAY AND EXTRACTING COLORS
Jeff Thompson | 2017 | jeffreythompson.org

Raster images are made up of pixels, with each pixel
storing a red, green, and blue value. These values are
packed into a "color" variable type and stored in a long,
1-dimensional array.

We can access individual pixels from an image or the sketch
screen, extract their RGB values, and make changes to the
pixels too!

*/

PImage img;


void setup() {
  size(750, 491);
  
  // load and draw an image
  img = loadImage("Sunset.jpg");
  image(img, 0,0);
  
  // if we want to access the sketch's pixels,
  // we first want to call loadPixels() to make sure
  // the data is up-to-date
  loadPixels();
  
  // the pixels of our sketch are stored as one really
  // long array, not two-dimensionally
  println("The first pixel's value is: " + pixels[0]);
  
  // note that the value that printed is an integer – the
  // Processing "color" variable type is actually an int, so
  // if we want RGB values, we have to extract them
  float r = red(pixels[0]);
  float g = green(pixels[0]);
  float b = blue(pixels[0]);
  println(r + ", " + g + ", " + b);
  
  // the red(), etc commands are fairly slow, though – better
  // is to do some "bit-shifting" and extract the values
  r = pixels[0] >> 16 & 0xFF;        // shift over by 16 bits and get the last 8 values
  g = pixels[0] >> 8 & 0xFF;         // shift by 8 bits and get last 8 vals
  b = pixels[0] & 0xFF;              // just get the last 8 bits
  println(r + ", " + g + ", " + b);  // should be the same as above
 
  // if we want to get the 1D pixels-array position from an X/Y
  // coordinate, we just do a little math – this equation is definitely
  // one to commit to memory!
  int x = width/2;
  int y = height/2;
  color centerPx = pixels[y * width + x];
 
  // we can also assign new colors to values in the pixels array
  // we'll see lots more ways to do this, but here's a simple example
  // showing how to set a bunch of random pixels to white
  for (int i=0; i<2000; i+=2) {
    x = int(random(0,width));
    y = int(random(0,height));
    pixels[y * width + x] = color(255);
  }
  
  // when done changing the pixels, we call updatePixels() to make
  // sure the changes can be seen onscreen
  updatePixels();
}