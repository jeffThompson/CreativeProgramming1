/*
FILTERS
Jeff Thompson | 2017/20 | jeffreythompson.org

p5.js comes with some pre-built filters that change
the pixels onscreen, ranging from converting a color image
to grayscale to smooth blurring. The filters can be used
for artistic effect on their own (though, like the filters
in Photoshop, they tend to look a bit cheesy and pre-made)
but can be helpful when combined with other filters or
as a step before cutting out sections for collage.

While these filters are awesome, they are also a bit limited.
Think about when it makes the most sense to transform the
images (resize, crop, filter, etc) in your code vs ahead of
time in another piece of software like Photoshop.

In CP2 we'll implement a few of these ourselves! We'll also
see some of these filters used in computer vision to prepare
images for object detection, and again in machine learning
to make training and feature extraction easier.

ORDER MATTERS!
Like signal processing in audio, the order in which we apply
filters matters. If we first blur, then threshold, we'll get
a very different result than in the opposite order. Thinking
about how you apply the filters (or at least trying things and
see what happens) will be important to get the best results.

CHALLENGES:
1. Can you chain several filters together to make something
   more interesting than a single on by themselves? For example,
   try blurring before running a threshold filter.

*/

// which filter to apply to the image
// threshold, gray, invert, blur, dilate, or erode
// (adjust each filter's parameters below)
let whichFilter = 'blur';

let img;  // the image to be filtered


function preload() {
  img = loadImage('assets/waterfall.jpg');
}


function setup() {
  
  // bonus: set the image to the width of the window
  // and resize the canvas so the image fills it
  img.resize(windowWidth, 0);
  createCanvas(img.width, img.height);
  noLoop();
}


function draw() {
  
  // draw the image first, then we apply the filters
  image(img, 0,0);
  
  // THRESHOLD
  // if the brightness of a pixel is below a set threshold,
  // set it to black; if above, set it to white
  if (whichFilter === 'threshold') {
    filter(THRESHOLD, 0.5);    // threshold value should be 0–1
  }
  
  // GRAYSCALE
  // converts an image to grayscale
  if (whichFilter === 'gray') {
    filter(GRAY);              // no arguments for this one!
  }
  
  // INVERT
  // set each pixel's color to its opposite
  if (whichFilter === 'invert') {
    filter(INVERT);            // no arguments here either
  }
  
  // BLUR
  // executes a Gaussian blur (though there are lots of
  // other methods to blur images)
  if (whichFilter === 'blur') {
    filter(BLUR, 8);           // radius of the blur in pixels
  }
  
  // DILATE
  // increases light areas in the image, which we'll see later
  // can be useful in computer vision for filling holes 
  // and smoothing edges – for more on this, see:
  // https://docs.opencv.org/2.4/doc/tutorials/imgproc/
  // erosion_dilatation/erosion_dilatation.html
  if (whichFilter === 'dilate') {
    filter(DILATE);             // no args, though can be used many times
    //filter(DILATE);           // try un-commenting and see what happens
    //filter(DILATE);
  }
  
  // ERODE
  // reduces light areas in the image, also useful in computer
  // vision for removing bridges between separate objects that
  // appear connected
  if (whichFilter === 'erode') {
    filter(ERODE);              // no args, same as dilation
  }
}
  
