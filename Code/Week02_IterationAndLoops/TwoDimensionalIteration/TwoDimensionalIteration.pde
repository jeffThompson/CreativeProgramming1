
/*
ITERATION AND PUSH/POP
Jeff Thompson | 2017 | jeffreythompson.org

Combining two ideas often results in something much
more interesting than each on their own – by using 
two for loops and push/popMatrix(), we can draw a grid
of complex patterns using code that's easy to read and
modify.

The nested for loop walks a grid, one row at a time.
Inside each step, we enter "local" mode using pushMatrix()
and translate(), then draw our shapes. This has the
benefit of making our positions start at 0,0 and is a
lot easier to picture in your head.

CHALLENGES:
+ Can you add rotation as well? Hint: you many need to
  translate to the center of the grid square.
+ Can you use the modulus (%) operator, which returns the
  remainder of division, or another variable to draw shapes
  of alternating color?

*/

int gridSize = 100;


void setup() {
  size(800,800);
  background(0,200,75);
  
  // go row-by-row all the way down
  for (int y=0; y<height; y+=gridSize) {
    
    // in each row, draw squares across the screen
    for (int x=0; x<width; x+=gridSize) {
      
      // go into "local" mode at the current x,y coordinate
      pushMatrix();
      translate(x,y);
      
      // draw two triangles inside this square
      // note: we use relative values so the grid dimensions
      // can be changed dynamically!
      noStroke();
      fill(0,150,255);
      triangle(0,0, gridSize,0, gridSize/2,gridSize/2);
      fill(0,0,150);
      triangle(gridSize/2,gridSize/2, gridSize,gridSize, 0,gridSize);
      
      // pop back and continue the for loop
      popMatrix();      
    }
  }
}