
import processing.pdf.*;

/*
AXIDRAW DEMO
Jeff Thompson | 2019 | jeffreythompson.org

A quick demo that re-creates Vera Molnar's 1968 piece
"Interruptions" (or, at least, a quick but perhaps not
perfect version inspired by Molnar's original).

Exported a PDF file (vector graphics) so we can load
it into Inkscape and draw using the Axidraw plotter.

*/


int margin =       50;  // space around edges
int gridSize =     10;  // size of grid (and lines)
int chanceNoLine = 60;  // % chance no line will be drawn


void setup() {
  size(800,800);
  beginRecord(PDF, "Interruptions.pdf");
  
  // no background, since we don't want that shape
  // to be included when we try to draw!
  
  // draw all rotated lines in a grid
  for (int y=margin; y<height-margin; y+=gridSize) {
    for (int x=margin; x<width-margin; x+=gridSize) {
      
      // randomly skip drawing some lines
      // "continue" means skip any code ahead
      // but continue with the for-loop
      if (random(100) < chanceNoLine) {
        continue;
      }
      
      // draw the randomly-rotated line
      pushMatrix();
      translate(x,y);
      float a = random(0,TWO_PI);
      rotate(a);
      line(-gridSize,0, gridSize,0);  // len = gridSize*2 to create overlap
      popMatrix();
    }
  }
  
  // save PDF file
  endRecord();
}
  
