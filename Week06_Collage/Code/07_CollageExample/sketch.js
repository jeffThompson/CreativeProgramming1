/*
COLLAGE EXAMPLE
Jeff Thompson | 2019/20 | jeffreythompson.org

Just one way you might approach your collage! This combines
the ideas we've covered this week: loading and displaying
images, getting portions of them, and filters.

The creative (and most important part!) comes from how you
use the tools you have at your disposal and the images that
you choose. Think about the poetic, narrative, and political
content of found images.

*/

let tileSize = 50;  // contols the size of image grabbed from the original
let img;


function preload() {
  img = loadImage('assets/waterfall.jpg');
}


function setup() {
  createCanvas(windowWidth, windowHeight);
  noLoop();
}


function draw() {
  
  // draw the image filling the screen
  imageMode(CENTER);
  image(img, width/2, height/2, width,height);
  
  // spiral time!
  let radius = 10;    // initial radius
  let angle =  0;     // initial angle
  
  // run until the radius reaches the edge of the sketch
  // with a 50px margin
  while(radius < width/2-50) {
    
    // random x/y coords to grab from the source image
    let portionX = int(random(0, img.width-tileSize));
    let portionY = int(random(0, img.height-tileSize));
    
    // use get() to grab that section
    let portion = img.get(portionX,portionY, tileSize,tileSize);
    
    // randomly apply the INVERT filter to the tile
    // (note: we can apply filters to image variables too, not just
    // the whole screen!)
    if (random(100) < 20) {
      portion.filter(INVERT);
    }
    
    // draw the image in place around the spiral
    push();
    translate(width/2, height/2);   // spiral around the center
    rotate(angle);                  // rotate to current angle
    translate(radius, 0);           // move out to radius
    rotate(random(0, TWO_PI));      // optional rotation-madness :)
    image(portion, 0,0);            // and draw the image there
    pop();
    
    // update the angle and radius to create the spiral
    angle += radians(6);
    radius += 0.5;
  }
}
  
