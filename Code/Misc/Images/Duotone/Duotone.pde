
/*
DUOTONE FILTER
Jeff Thompsno | 2017 | jeffreythompson.org

Instagram is full of fun ways to tweak your images, but
a really popular one is Duotone. While it looks complicated,
the code to do this is actually easy.

*/

// file to filter
String filename =  "test.jpg";


// colors for pure white and pure black pixels
// all other values will be replaced with a color between
// these two – note that complementary colors (those opposite
// each other on the color wheel) will give the most contrast,
// but try playing with a variety of colors!
color whiteColor = color(255,255,0);
color blackColor = color(0,50,175);      


void setup() {
  size(1000,667);
  
  // load our image and access its pixels
  PImage img = loadImage(filename);
  img.loadPixels();
  
  // iterate through all pixels in the image
  for (int i=0; i<img.pixels.length; i++) {
    
    // get the brightness of the current pixel
    // here we just get the red value, which is a good
    // approximation of brightness
    float bright = img.pixels[i] >> 16 & 0xFF;
    bright /= 255.0;                            // lerpColor wants values 0-1
    
    // create new color for the pixel that's somewhere between
    // the two colors we specified above using lerpColor(), then
    // set the pixel to that value
    color newColor = lerpColor(blackColor, whiteColor, bright);
    img.pixels[i] = newColor;
  }
  img.updatePixels();
  
  // all done!
  image(img, 0,0);
}