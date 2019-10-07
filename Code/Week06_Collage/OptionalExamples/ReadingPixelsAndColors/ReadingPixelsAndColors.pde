
/*
READING PIXELS AND COLORS
Jeff Thompson | 2017 | jeffreythompson.org

Since our screens are made of up pixels, basically anything we
do in computer graphics (type in a Word doc, watch a video, move
a window) involves manipulating pixel values. Processing lets us
read the values of all the pixels onscreen, which are stored in
an array (aptly named "pixels"), extract their RGB values, and
even change individual pixels, too!

CHALLENGES:
+ While there's a lot of science to our visual perception, the
  red value in an image is a good approximation of brightness.
  Can you calculate the average red value for the image?
+ A better measure of brightness uses this formula:
    brightness = (0.2126 * r) + (0.7152 * g) + (0.0722 * b)
  Try using it to find a better value for the average brightness?
+ Can you implement any of the Processing drawing commands (like
  rect() or line()) using the pixel array?
*/


PImage img;


void setup() {
  size(900,700);
  
  // load the image and display it onscreen
  img = loadImage("../Test.jpg");
  image(img, 0,0);
  
  // pixels
  // a raster image is made up of individual pixels, each a single
  // rgb color – we can access them through the "pixels" array, which
  // contains one element for each pixel in the image
  loadPixels();
  println("There are " + pixels.length + " in the image");
    
  // we can iterate this array, just like any other!
  println("\n" + "The first 10 pixel values...");
  for (int i=0; i<10; i++) {
    println(pixels[i]);        // print the pixel values
  }
  
  // what's with the weird numbers?!
  // when we print a pixel's value, it comes out a really strange, large
  // number – that's because it's of the variable type "color"
  // let's extract the individual rgb values and print them a little nicer
  println("\n" + "The first 10 pixel values, in rgb...");
  for (int i=0; i<10; i++) {
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    println(r + ", " + g + ", " + b);
  }
  
  // this works well and is very readable, but can be slow if we want
  // to process an entire image (especially if we need to do it quickly,
  // like frames of a video) – instead, we can do some fancy binary math
  // to get the rgb values
  
  // here's the same code as above, but in a much faster version
  println("\n" + "The first 10 pixel values, in rgb but faster...");
  for (int i=0; i<10; i++) {
    float r = pixels[i] >> 16 & 0xFF;
    float g = pixels[i] >> 8 & 0xFF;
    float b = pixels[i] & 0xFF;
    println(r + ", " + g + ", " + b);
  }
  
  // we can also change values in the pixels array!
  // let's randomly set some of the pixels to be black
  for (int i=0; i<pixels.length; i++) {
    if (random(100) < 50) pixels[i] = color(0);
  }
  updatePixels();    // when we change pixel values, we have to update the screen
  
  // x/y positions
  // you might have noticed that our pixel array is one-dimensional,
  // not 2D like we normally see pictures – that's because we store images
  // as a single list, then reconstruct the rows and columns by knowing
  // how wide and tall the image is supposed to be!
  
  // if we have an x/y position and want to figure out where that pixel
  // is in an image, we can use this formula
  int x = 51;
  int y = 207;
  int index = y * width + x;
  println("\n" + "The color at (" + x + "," + y + ") = " + pixels[index]);
  
  // we can do the reverse, too
  index = 12845;
  y = index / width;      // how many rows down?
  x = index % width;      // how far across the row?
  println("The index " + index + " is at (" + x + "," + y + ")");  
}
