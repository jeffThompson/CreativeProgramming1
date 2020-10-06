/*
COMPUTATIONALLY-GENERATED IMAGE MASKS
Jeff Thompson | 2020 | jeffreythompson.org

In the last example, we created masks as an uploaded
image file – this is easy and lets us use complicted
tools like brushes and feathered edges. But we can
also create mask images entirely in code! This is super
helpful if we want to make a bunch of mask images or
if the masks should be driven by user input.

Here we draw a kitty moon surrounded by puppy stars :)

CHALLENGES:
1. Can you vary the number of points in the stars?
2. Can you use alpha to create a mask with varying opacity
   like a gradient? (Hint: use map() to vary the alpha
   values based on position)

*/

let kitty;    // the image we'll apply the mask to
let mask;     // a 'graphics' object we'll use to make the mask
let puppy;    // another image we'll mask later


function preload() {
  kitty = loadImage('assets/kitty.jpg');
}


function setup() {
  createCanvas(400, 400);
  noLoop();
}


function draw() {
  background(0, 50, 100);

  // the 'graphics' object in p5.js works like another
  // canvas we can draw shapes to!
  // first we create the graphics object...
  mask = createGraphics(kitty.width, kitty.height);
  
  // then draw a circle to it for our mask
  // (note we have to specify 'mask.' in front of all the 
  // drawing commands so p5.js knows to apply them to our
  // graphics object and not the main canvas!)
  mask.noStroke();
  mask.fill(255);    // try adding an alpha value here!
  mask.circle(mask.width/2, mask.height/2, 150);
  
  // with our mask image finished, we can apply it and
  // draw the masked image onscreen
  kitty.mask(mask);
  imageMode(CENTER);
  image(kitty, width/2, height/4);
  
  // a more complex version
  // note: we load the image here and use a 'callback function'
  // which runs when the image is done loading
  puppy = loadImage('assets/puppy.jpg', addPuppyStars);
}


function addPuppyStars() {
  // this function is called when the puppy image is done
  // loading – super helpful if we want to load an image
  // outside of preload()!
  
  // the mask graphics object – a star drawing with begin/endShape()
  let star = createGraphics(50, 50);
  star.fill(255);
  star.noStroke();
  star.beginShape();
  
  // we can't use matrix transformations inside of begin/endShape()
  // so we need to use some extra math here...
  let angleAmt = radians(30);
  for (let angle=0; angle<TWO_PI; angle+=angleAmt) {
    
    // we can calculate the x/y position from a given angle
    // and distance using these formulas:
    // x = centerX + cos(angle) + radius
    // y = centerY + sin(angle) + radius
    
    let x = star.width/2 +  cos(angle) * star.width/2;
    let y = star.height/2 + sin(angle) * star.height/2;
    star.vertex(x, y);
    
    // to get a star shape, we draw a second vertex between the
    // outer points at a shorter radius (and half the angle)    
    x = star.width/2 +  cos(angle+angleAmt/2) * star.width/4;
    y = star.height/2 + sin(angle+angleAmt/2) * star.height/4;
    star.vertex(x, y);
  }
  star.endShape(CLOSE);
  
  // fit the puppy image to the star and apply the mask
  puppy.resize(star.width, star.height);
  puppy.mask(star);
  
  // now draw a bunch of randomly-placed puppy-stars!
  for (let i=0; i<20; i++) {
    push();
    let x = random(0, width);
    let y = random(0, height);    
    let a = random( -radians(45), radians(45) );
    translate(x, y);
    rotate(a);
    image(puppy, 0,0);
    pop();
  }
}
  
