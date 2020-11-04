
/*
SPRITES
Jeff Thompson | 2019/20 | jeffreythompson.org

Sprites – a series of still images to create more 
complex animations or a hand-drawn look – are also
possible in p5.js! We can load in an array
(a list) of images, then draw one per frame, updating
which is drawn.

To keep track of everything, the frames of your 
animation should be stored in a folder (ours is 
called 'frames') and their filenames should be 
sequentially numbered so we can easily load them.

Explosion sprite sheet via SeekPNG:
https://www.seekpng.com/ipng/u2q8t4i1o0t4a9u2_drawn-
explosions-sprite-explosion-sprite-sheet-doom/

CHALLENGES:
1. Can you make the sprite move around? Either try
   making it follow your mouse or animate it like
   we did in Animation Basics: Position
2. Can you create two different sprites that get
   displayed onscreen? Hint: you'll need two different
   arrays, two different 'whichFrame' variables,
   and two different x/y positions.

*/

let numFrames = 48;

let frames = [];
let whichFrame = 0;
let x, y;


function preload() {
  // what is a 'cross-origin' or CORS error?!?!
  // if you're working with an offline editor, you
  // might be getting an error trying to load images
  // this has to do with Javascript's rather strict
  // security rules preventing you from opening a
  // random file
  // the two main solutions to this are:
  // 1. just use the p5.js editor, or...
  // 2. use a tool like browser-sync, which basically
  //    creates a local web server on your computer

  // load the frames of our sprite animation
  // we can use a for-loop for this, since we know
  // how many frames the animation has!
  for (let i=0; i<numFrames; i++) {
    let filename = './frames/' + i + '.png';
    let frame = loadImage(filename);
    frames.push(frame);
  }
}


function setup() {
  createCanvas(windowWidth, windowHeight);

  // start sprite in the center of the screen
  x = width/2;
  y = height/2;
}


function draw() {
  background(255);

  // draw the current image (which is at the index
  // 'whichFrame' in our list of images)
  imageMode(CENTER);
  image( frames[whichFrame], x,y);

  // update which frame we want to display
  whichFrame += 1;

  // if we've reached the end of the array...
  if (whichFrame === frames.length) {
    
    // ...reset the frame count to start
    // the animation over
    whichFrame = 0;

    // and in a new, random location
    x = random(0, width);
    y = random(0, height);
  }
}

