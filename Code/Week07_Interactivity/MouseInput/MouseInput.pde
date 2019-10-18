
/*
MOUSE INPUT
Jeff Thompson | 2017 | jeffreythompson.org

While the keyboard can provide varied, detailed input,
the mouse is much more expressive and immediate. There
are lots of things we could do with mouse input, but
this basic example uses the built-in mouseX/Y variables
to draw a circle onscreen, and to change the background
color.

CHALLENGES:
1. Can you use push/popMatrix() to draw objects at the
   mouse's coordinates? Can you make them rotate around
   the mouse when clicked?

*/

void setup() {
  size(800, 800);
  noCursor();        // turn off normal cursor
                     // see also the cursor() command for other options
}


void draw() {
  
  // a bit fancier than the ellipse() code below
  // change the background color from orange to blue
  // based on the mouse position
  color c1 = color(255,150,0);
  color c2 = color(0,150,255);
  float pos = map(mouseX*mouseY, 0,width*height, 0,1); 
  background( lerpColor(c1,c2, pos) );
 
  // draw a white circle in the mouse's position
  fill(255);
  noStroke();
  ellipse(mouseX,mouseY, 60,60);
  
  // bonus: change the circle's size based on the position too!
  // add this above the ellipse() command and use
  // the "dia" variable instead of 60
  float dia = map(mouseX, 0,width, 10,200);
}


// can also capture different mouse events: click,
// release, and drag (clicked and moving)
// these are useful for turning on and off boolean
// flags in your code, and for different kinds of
// interaction in your sketch
void mousePressed() {
  println("click");
}

void mouseReleased() {
  println("released");
}

void mouseDragged() {
  println("- dragging...");
}
