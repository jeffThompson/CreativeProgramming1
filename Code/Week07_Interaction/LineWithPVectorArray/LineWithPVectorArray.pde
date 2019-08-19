
/*
LINE WITH PVECTOR ARRAY
Jeff Thompson | 2017 | jeffreythompson.org

In the Semi-Transparent Background example, we used an
alpha value to leave trails behind a set of lines. But
what if we want to draw them all at once, so we can do
cool things like shift the color of the line?

To do this, we'll store an array of the previous N points,
updating the list each frame with the current mouse
coordinates. Processing's PVector class is perfect for
this, storing 2D points as a single value.

CHALLENGES:
1. Can you play with the fill, stroke, and beginShape() 
   modes (see the ref page for details) to make different
   kinds of lines?
2. What else could you use the array position to change
   in the line?

*/

int numPoints = 20;                            // how many coordinates to keep?
PVector[] vectors = new PVector[numPoints];    // list of N coordinates


void setup() {
  size(800,800);
  
  // start all points at the center of the screen
  for (int i=0; i<vectors.length; i++) {
    vectors[i] = new PVector(width/2, height/2);
  }
}

void draw() {
  background(0);
  
  // shift array if the mouse has moved
  if (mouseX != pmouseX && mouseY != pmouseY) {
    for (int i=vectors.length-1; i>=1; i-=1) {    // walk backwards through array
      vectors[i] = vectors[i-1];                  // current = item from left
    }
    vectors[0] = new PVector(mouseX, mouseY);     // most recent = mouse coords
  }
  
  // draw as a line using the array of PVectors
  stroke(255);
  strokeWeight(5);
  noFill();
  beginShape();
  for (PVector v : vectors) {
    curveVertex(v.x, v.y);      // gives us a more fluid line than vertex()
  }
  endShape();
  
  // a more complex example, changing color along
  // the line using the position in the vectors array
  // and lerpColor()
  //color c1 = color(255,150,0);                        // start color
  //color c2 = color(0,150,255);                        // end color
  //strokeWeight(5);
  //noFill();
  //PVector prev = vectors[0];                          // a line requires two points!
  //for (int i=0; i<vectors.length; i++) {
  //  float amount = map(i, 0, vectors.length, 0,1);    // how far along are we?
  //  stroke( lerpColor(c1, c2, amount) );              // create stroke color
  //  line(vectors[i].x, vectors[i].y, prev.x, prev.y); // draw line
  //  prev = vectors[i];                                // set previous to the current position
  //}
}