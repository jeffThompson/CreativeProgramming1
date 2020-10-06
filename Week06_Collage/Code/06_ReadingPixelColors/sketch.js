/*
READING PIXEL COLORS
Jeff Thompson | 2017/20 | jeffreythompson.org

Since our screens are made of up pixels, basically anything we
do in computer graphics (type in a Word doc, watch a video, move
a window) involves manipulating pixel values. p5.js lets us
read the values of all the pixels in our sketch (or in an image,
a frame of video, etc). These values are stored in an array aptly named "pixels." We can also extract their RGB values and even 
change individual pixels, too!

This is how most image filters work as well – if you take CP2
we'll build lots of cool filters together, but for now see the
challenges below if you want to try it yourself!

RASTER vs VECTOR IMAGES
The graphics we've drawn in previous projects make 'vector'
images. They're made of math, with shapes defined by coordinates
and formulas. File formats like PDF and Illustrator files are
meant for vector graphics. The benefit is you can scale them up
and down (from the size of a postage stamp to a billboard) with
no loss in quality!

Raster images are made of pixels: little squares with a single
color value. Photographic images are usually raster images, as
are the images captured by your phone's camera and frames of
videos. Since the image has a finite number of pixels, if you
blow them up too big they lose quality.

CHALLENGES:
1. While there's a lot of science to our visual perception, the
   red value in an image is a good approximation of brightness.
   Can you calculate the average red value for the image?
2. A better measure of brightness uses this formula:
     brightness = (0.2126 * r) + (0.7152 * g) + (0.0722 * b)
   Try using it to find a better value for the average brightness?
3. Can you implement any of the p5.js drawing commands (like rect() 
   or line()) using the pixel array?

*/

let img;


function preload() {
  img = loadImage('assets/waterfall.jpg');
}


function setup() {
  img.resize(windowWidth, 0);
  createCanvas(img.width, img.height);
  noLoop();
}


function draw() {
  
  // draw the image first, then we apply the filters
  image(img, 0,0);
  
  // we can access the pixel values of our canvas but first we
  // need to ask p5.js to make sure it has the most recent values
  loadPixels();
  
  // the 'pixels' array contains rgba values for each pixel:
  // 0 1 2 3 4 5 6 7 8 9...
  // r g b a r g b a r g...
  
  // this means the array is actually 4x the number of pixels in the image
  console.log('the image is ' + img.width + ' x ' + img.height + ' px');
  console.log('there are ' + (pixels.length/4) + ' pixels in the image');
  
  // since the pixels array is stored this way, looping through the
  // image's pixels would be a total pain (though a great for-loop
  // exercise for you to try!)
  // luckily, p5.js has a really easy get() command that let's us
  // specify an x/y coordinate and it gives us the pixel values there
  console.log('the first five pixels in the image...');
  for (let x=0; x<5; x++) {
    let px = get(x, 0);
    console.log(px);
  }
  
  // notice it gives us little four-element arrays?
  // those are the rgba values – we can further split them
  for (let x=0; x<5; x++) {
    let px = get(x, 0);
    let r = px[0];
    let g = px[1];
    let b = px[2];
    let a = px[3];
    console.log('r: ' + r + ', g: ' + g + ', b: ' + b + ', a: ' + a);
  }
  
  // we can use the same process in reverse to change a pixel's value!
  for (let i=0; i<5000; i++) {
    let x = random(0, width);    // random x/y position
    let y = random(0, height);
    let c = color(0);            // color variable containing rgba values
    set(x, y, c);
  }
  
  // to make the pixel changes take effect, we have to call
  // updatePixels() so we can see them onscreen
  updatePixels();
}
  
