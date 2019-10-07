
/*
IMAGES
Jeff Thompson | 2017 | jeffreythompson.org

While much of the previous code we've worked with used Processing's
drawing commands, this semester we'll also be exploring images
and pixels. Luckily, Processing has lots of very handy, easy to use
commands to work with images.

Here we just load an image from file and display it onscreen.

SUPPORTED TYPES:
Like saving images, Processing will load jpg, png, and gif files.

*/

PImage img;    // an object for loading and displaying images
               // it's just another variable, so we can have
               // several, store them in arrays, etc!

void setup() {
  size(900,300);
  background(50);
  
  // load the image from a file
  // the location of the file is important – it should be:
  // - in the sketch folder (and specify just a filename)
  // - in a folder called "data" in the sketch folder
  // - a complete (full) path to the file, if it's anywhere else
  // (we can also load from a url, if we want to!)
  img = loadImage("Test.jpg");
  
  // display the image onscreen
  image(img, 0,0);    // PImage to show, x/y position
  
  // we can resize the image, if necessary
  // if the width or height is set to 0, then Processing
  // automatically keeps the proportion the same – handy!
  img.resize(100, 0);    // fit to the 100px wide, keep height proportional
  image(img, 300,0);     // draw next to the first image
  
  // images can also be resized within the image() command
  // by specifying two more args: width/height to expand to
  image(img, 600,0, 300,150);    // stretch to fit a 150x300px square
}

  
