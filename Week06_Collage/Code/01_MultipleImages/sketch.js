
/*
MULTIPLE IMAGES
Jeff Thompson | 2019/20 | jeffreythompson.org

You're not limited to just one image in your sketch! Since 
an image is just a variable like a number or string, we
can load lots of images with different names. We can even 
load an image later in your code if you want (though you
will probably want to use a callback to display it so p5.js
has time to load the image first – see the previous example
for code to do this).

CHALLENGES:
1. Can you add a third image to this sketch?
2. Can you tile images in a grid using resize() and their
   width/height values?
3. Can you make the grid alternate between two images? (Hint: 
   use the modulus % operator and an if-else statement)

*/

// this shorthand lets us create multiple empty
// variables in one line!
// not suggested for different types (ie a number and an
// image) but is great for creating multiple variables
// of the same type
let woman, puppy;


function preload() {
  // load the images
  woman = loadImage('assets/test.jpg');
  puppy = loadImage('assets/puppy.jpg');
}


function setup() {
  createCanvas(400, 311);
  noLoop();

  // images are loaded up in preload()!
}


function draw() {
  // since they are separate objects, we can
  // change them independently too!
  woman.resize(width, height);
  puppy.resize(50, 50);

  // it's easy to check how big the resized images are!
  // a lot like checking an array's length – this is
  // called 'dot notation' since we use a period followed
  // by the parameter we want to get
  console.log('woman: ' + woman.width + ', ' + woman.height + ' px');
  console.log('puppy: ' + puppy.width + ', ' + puppy.height + ' px');
  
  // display the image as usual
  image(woman, 0,0);

  // or draw them in a for-loop!
  for (let i=0; i<10; i++) {
    let x = random(0, width-puppy.width);
    let y = random(0, height-puppy.height);
    image(puppy, x, y);
  }
}

