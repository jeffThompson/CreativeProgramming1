
/*
OFFSCREEN CANVAS
Jeff Thompson | 2017/20 | jeffreythompson.org

We've covered almost everything you'd need to make
your own drawing app! The only problem with our approach
so far is that, if we draw the background every frame,
our previous drawing gets lost. If we skip the background,
then everything we draw onscreen, including our cursor,
is recorded.

Instead, we can use a separate, invisible canvas that
we draw shapes to, then display the canvas onscreen as
an image. This is called an 'offscreen buffer,' where
'buffer' means a spot in your computer's memory that
stores the image, like a virtual screen!

CHALLENGES:
1. Can you add a button that clears the screen? Hint:
   use pg.clear() to erase everything in it.
2. What other forms could our homemade cursor take?
   Could you design some cool brushes like in Photoshop?
   Try using push/pop() and draw the new cursor in
   the mouse's position.

*/


let pg;    // a variable for our offscreen canvas


function setup() {
  createCanvas(800,800);
  noCursor();
  
  // create the offscreen canvas at the same size
  // as our main canvas
  pg = createGraphics(width,height);
}


function draw() {

  // when the mouse is pressed, we'll draw shapes
  // into the offscreen canvas, then display that
  // canvas as an image – you'll find the deteails
  // in the mousePressed() function below
  
  // our offscreen canvas has a clear background, 
  // (another useful thing!) but it means we have to 
  // redraw the background every frame
  background(200);
  
  // display the offscreen canvas
  image(pg, 0,0);
  
  // there may be elements, like our cursor, that
  // we want to see but don't want to be part of our
  // drawing – we can include those here!

  fill(0, 100);   // let us see the drawing underneath
  noStroke();
  square(mouseX,mouseY, 20);
}


// when the mouse is dragged, draw a square to the 
// offscreen canvas
function mouseDragged() {

  // if we want to draw shapes somewhere other than
  // the main canvas, we have to let p5.js know where
  // to draw them – for this, all our commands need
  // to take the form <graphics variable>.<command>

  pg.fill(0);
  pg.noStroke();
  pg.square(mouseX,mouseY, 20);
}


// // to save our PGraphics but not the entire screen
// // (which would have our cursor, etc), call the .save()
// // command on the PGraphics instance
// void keyPressed() {
//   if (key == 's') {
//     pg.save("MySuperCoolDrawing.png");
//   }
// }
