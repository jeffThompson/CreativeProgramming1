
/*
LOADING AND DISPLAYING IMAGES
Jeff Thompson | 2017/20 | jeffreythompson.org

So far, our only drawing tools have been shape-related. But
of course, computer graphics include a ton of other formats
including images! Luckily, p5.js has a bunch of really handy,
easy-to-use commands for loading and manipulating images.

In this simple example, we load and display an image.

WHERE SHOULD MY IMAGES BE?
If you have an image you want to display, p5.js needs to
have access to it! If you're using the p5.js editor, you
can follow along with this video: https://youtu.be/qbDT6g4Ink0

SUPPORTED FILE FORMATS:
jpg, png, gif, svg, tiff, and bmp

CHALLENGES:
1. Can you create a second image variable, loading and
   displaying it next to the first?
2. Can you create a callback function if the image fails
   to load? See the reference page for loadImage() for details
3. What else might be useful to do with the callback function?
   For example, you might display the image there instead
   of in the draw()... what else?

*/

let img; // variable that we'll load our image into
// (since it's like any other variable, we can
// have several of them, store them in arrays, etc!)


// a new function!
// preload() is run just before setup() and is useful
// for things, like loading images, that take time
// Javascript does many things asyncronously, meaning it
// will not wait for one command to finish before moving
// onto the next one – we could start loading an image and
// p5.js will try to display it before it's done!
// preload() will wait until everything inside is done
// before setup() is run
function preload() {

  // load the image, which is in a folder called 'assets'
  img = loadImage('assets/test.jpg');

  // bonus: we can optionally add the name of a funciton
  // to run when the image is successfully loaded or
  // if there is an error – this is called a 'callback'
  // function and is super common in Javascript
  // img = loadImage('assets/test.jpg', imageLoaded);
}


function setup() {
  createCanvas(400, 311);
  noLoop();
}


function draw() {

  // display the image onscreen!
  // arguments: image to show, x/y coordinates
  image(img, 0, 0);

  // we can also resize the image in two ways...

  // first, we can add a width and height to the
  // image() command right after the x/y coords
  image(img, 0, 0, 100, 100);

  // but we can also permanently change the image's
  // size using resize()
  img.resize(100, 0);
  image(img, width / 2, 0);

  // why 0 for the height?!?
  // if we put 0 for the width or height in resize()
  // p5.js will do the math for us and keep the image
  // proportional – super helpful!
}


// the 'callback' function used in preload() – this gets
// run if the image is loaded successfully
function imageLoaded() {
  console.log('the image loaded correctly!');
}

