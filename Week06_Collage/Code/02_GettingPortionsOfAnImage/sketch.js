
/*
GETTING PORTIONS OF AN IMAGE
Jeff Thompson | 2019/20 | jeffreythompson.org

With loadImage() and resize(), we can easily load and
display images. But if we want to make collages, we'll
want a way to cut out a portion of an image. There lots
of mathy ways we might think about doing this, but p5.js
comes to the rescue with a much easier tool: get()

CHALLENGES:
+ Can you grab random squares from the source image and
  draw them in random locations? Can you add random rotation
  as well? (Hint: use push() and imageMode(CENTER) to
  draw the images from the center like ellipse() does)

*/

let img;      // the image we'll load and cut


function preload() {
  img = loadImage('assets/test.jpg');
}


function setup() {
  createCanvas(400, 400);
  noLoop();
}


function draw() {
  background(0);

  // use the get() command to create a new image made up of
  // a portion of the original
  // arguments are:
  // + start x/y in the source image
  // + width/height to extract
  let leftCorner = img.get(0, 0, img.width/2, img.height/2);
  image(leftCorner, 0, 0);

  // a bit fancier: draw random strips from the image
  // (note the for-loop starts halfway down the screen)
  for (let y=height/2; y<height; y+=10) {

    // pick a y point to get the strip from
    let stripYPosition = int(random(0, img.height-10));

    // use get() to extract a strip of the image
    let strip = img.get(0, stripYPosition, img.width, 10);
    image(strip, 0, y);
  }
}

