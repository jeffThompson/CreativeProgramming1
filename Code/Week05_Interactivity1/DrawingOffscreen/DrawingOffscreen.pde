
/*
DRAWING OFFSCREEN
Jeff Thompson | 2017 | jeffreythompson.org

If you want onscreen interface elements like a cursor
or text feedback but don't want that included in your
saved image, you can draw to an offscreen "buffer"* using
Processing's PGraphics class.

A "buffer" in this sense is a space in memory, like a 
virtual screen we can draw to without displaying it. We
can draw shapes to it and do anything else possible in a
normal Processing sketch.

This can be helpful for things like interactive drawing
apps, but also for rendering really big images without
having to display the results on screen (which can be
much slower).

CHALLENGES:
1. What other forms could your homemade cursor take? Can
   you use push/popMatrix() to draw the cursor? Can you
   move it to a special drawCursor() function?

*/


PGraphics pg;    // a PGraphics "buffer" where we can draw to


void setup() {
  size(800,800);
  noCursor();
  
  // create the PGraphics buffer at the same size
  // as our sketch window
  pg = createGraphics(width,height);
}

void draw() {
  
  // PGraphics has a clear background, so we
  // have to redraw the background every frame
  background(200);
  
  // draw the PGraphics image onscreen
  image(pg, 0,0);
  
  // draw our cursor (and anything else we don't
  // want in our output image like text, menus, etc
  fill(0, 100);                // semi-transparent lets us see the drawing underneath
  noStroke();
  rect(mouseX,mouseY, 20,20);
}


// when the mouse is pressed, draw a
// square to the PGraphics image
void mousePressed() {
  pg.beginDraw();                  // start drawing to PGraphics
  pg.fill(0);                      // note that we use pg.<command>
  pg.noStroke();
  pg.rect(mouseX,mouseY, 20,20);
  pg.endDraw();                    // endDraw() to update for display
}


// to save our PGraphics but not the entire screen
// (which would have our cursor, etc), call the .save()
// command on the PGraphics instance
void keyPressed() {
  if (key == 's') {
    pg.save("MySuperCoolDrawing.png");
  }
}