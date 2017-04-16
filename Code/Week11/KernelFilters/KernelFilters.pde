
/*
KERNEL FILTERS
 Jeff Thompson | 2017 | jeffreythompson.org
 
 A filter that looks at its neighbors can be very useful,
 since a single pixel in context doesn't tell us a whole lot.
 If we add in the idea of weighted changes based on the
 neighboring pixels, we call this a "kernel" filter.
 
 Kernel filters can be used for lots of things, but they're
 often used for things like blurring, which average pixels in
 a region, and edge detection (the opposite).
 
 More info and some example kernels here:
 https://en.wikipedia.org/wiki/Kernel_(image_processing)
 http://setosa.io/ev/image-kernels/
 https://docs.gimp.org/en/plug-in-convmatrix.html
 
 CHALLENGES:
 + Try changing the kernel to match some of the ones listed
   in the links above – can you get a simple edge detection 
   working? Can you expand our kernel from 3x3 to 5x5?
 
 */

// amount to weight each item in the kernel
// here we set all of them to 0.1111, but in
// some filters it will be different for
// each neighbor
float amt = 1/9.0;

// a 2D array that stores our weighted
// kernel values
float[][] kernel = {
  { amt, amt, amt }, 
  { amt, amt, amt }, 
  { amt, amt, amt }
};

PImage img;


void setup() {
  size(750, 491);
  img = loadImage("Sunset.jpg");
  image(img, 0, 0);
  loadPixels();

  // loop through image, skipping the edges
  for (int y=1; y<height-1; y++) {
    for (int x=1; x<width-1; x++) {

      // for each pixel, add up RGB value for
      // itself and its neighbors, weighted by
      // the kernel
      float sumR = 0;
      float sumG = 0;
      float sumB = 0;
      for (int ky=-1; ky<2; ky++) {
        for (int kx=-1; kx<2; kx++) {
          int neighbor = (y + ky) * width + (x + kx);
          float r = img.pixels[neighbor] >> 16 & 0xFF;
          float g = img.pixels[neighbor] >> 8 & 0xFF;
          float b = img.pixels[neighbor] & 0xFF;

          sumR += kernel[ky+1][kx+1] * r;
          sumG += kernel[ky+1][kx+1] * g;
          sumB += kernel[ky+1][kx+1] * b;
        }
      }
      pixels[y * width + x] = color(sumR, sumG, sumB);
    }
  }
  
  updatePixels();
}