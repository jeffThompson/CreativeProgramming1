
/*
PIXEL MANIPULATION
Jeff Thompson | 2017 | jeffreythompson.org

In addition to drawing shapes, Processing can also
access the individual pixels onscreen and, as we'll
see later, of images too. The pixel values of the
sketch are stored in an array of color values.

*/


void setup() {
  size(800,800);
  background(255);
  
  // we can access individual pixels by calling the
  // pixel array's indices, just like any other array,
  // but first we have to make sure the array is current
  loadPixels();
  color firstPx = pixels[0];
  
  // we can also set a pixel to a specific color
  // once done, we update the sketch's pixels
  pixels[320000] = color(0);
  updatePixels();
  
  // the pixel array is one-dimensional, but our image
  // is 2D – to access a specific coordinate, we have
  // to do a little math
  int xPos =  192;                  // position of the pixel we want
  int yPos =  347;
  int pos1D = yPos * width + xPos;  // gives us the 1D position from 2D coord
  color px = pixels[pos1D];
  
  // let's color some pixels!
  loadPixels();
  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      pixels[y * width + x] = color(x%255, y%255, 0);
    }
  }
  updatePixels();
}



  