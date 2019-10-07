
/*
MASKING IMAGES
Jeff Thompson | 2019 | jeffreythompson.org

The get() command is great if you want rectangular
sections of images, but what if you want to cut out
a more complicated shape? The mask() command lets
us load (or, later create) a grayscale image that
we can use as a stencil to cut out complex shapes
from an input image. Black pixels in the mask will
be deleted, white pixels visible, and grayscale
pixels allow for feathered edges.

*/

PImage img, maskImage;


void setup() {
  size(800,800);
  background(255);
  
  // load the image
  img = loadImage("Test.jpg");
  
  // load a second image to use as a mask
  // see a purely code-based way to do this below
  maskImage = loadImage("Mask.jpg");
  
  // apply the mask to the original image
  // (note this is a "destructive" edit, meaning
  // it changes the original image)
  img.mask(maskImage);
  
  // show the resulting image
  image(img, 0,0);
  
  // more fun: resize the masked image and display
  // a bunch of times in random locations!
  img.resize(200,200);
  for (int i=0; i<30; i++) {
    pushMatrix();
    translate(random(width), random(height));
    image(img, 0,0);
    popMatrix();
  }
  
  // OPTIONAL: COMPUTATIONALLY-GENERATED MASKS
  // instead of loading a premade mask image from
  // file, you can use Processing to generate one!
  // this uses the PGraphics object, which is essentially
  // a separate sketch window you can draw into
  PGraphics pg = createGraphics(50,50);
  
  // once created, we can draw shapes to it
  pg.beginDraw();
  pg.background(0);
  pg.fill(255);
  pg.noStroke();
  pg.ellipse(pg.width/2, pg.height/2, 50,50);
  pg.endDraw();
  
  // ...apply the mask to an image
  PImage puppy = loadImage("Puppy.jpg");
  puppy.resize(50,50);
  puppy.mask(pg);
  
  // ...and draw a bunch of puppies! 
  for (int i=0; i<30; i++) {
    pushMatrix();
    translate(random(width), random(height));
    image(puppy, 0,0);
    popMatrix();
  }
}
