/*
MASKING IMAGES
Jeff Thompson | 2019/20 | jeffreythompson.org

The get() command is great if you want rectangular
sections of images, but what if you want to cut out
a more complicated shape? The mask() command lets
us load (or, later, create using code!) an image that 
we can use as a stencil to cut out complex shapes from
an input image.

CREATING MASK IMAGES:
The mask() command uses the alpha (transparency) from
the mask image to know what to show/hide. Our mask images
must contain an alpha channel, which jpg doesn't support
but png does. If you use Photoshop or Illustrator, use
File > Export > Save for Web... and select 'PNG' and the
'Transparency' option.

*/

let img, maskImage;


function preload() {
  img = loadImage('assets/puppy.jpg');
  
  // load a pre-rendered mask image to use
  // (see a 100% code-based way to do this below)
  maskImage = loadImage('assets/mask.png');
}


function setup() {
  createCanvas(400, 400);
  noLoop();
}


function draw() {
  background(0,50,100);

  // apply the mask to the original image
  // (note this is a "destructive" edit, meaning
  // it changes the original image)
  img.mask(maskImage);

  // show the resulting image
  image(img, 0, 0);
}

