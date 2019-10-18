
/*
DYNAMIC FOR-LOOPS
Jeff Thompson | 2019 | jeffreythompson.org

Mouse input can drive a *ton* of different parameters,
too many to demo all of them. But this example shows
how to use the mouse's position to change the way a
for-loop runs.

*/


float gridSizeX = 100;  // x/y grid size, changed
float gridSizeY = 100;  // by the mouse position


void setup() {
  size(800,800);
  
  // nothing else here!
}


void draw() {
  
  // update the grid size based on the mouse
  // position using map()
  gridSizeX = map(mouseX, 0,width, 10,100);
  gridSizeY = map(mouseY, 0,width, 10,100);
  
  // the for-loops now step by the grid size,
  // which changes as the mouse moves
  for (int y=0; y<height; y+=gridSizeY) {
    for (int x=0; x<width; x+=gridSizeX) {
      
      // draw the grid square
      color from = color(255,150,0);
      color to = color(0,150,255);
      float pct = map(x+y, 0,width+height, 0,1);
      fill(lerpColor(from,to, pct));
      stroke(0);
      strokeWeight(1);
      rect(x,y, gridSizeX,gridSizeY);
    }
  }
  
  // another way to control a for-loop is how many
  // iterations it will run – here we draw random lines
  // on top of the grid, with the number of those lines
  // being set by the mouse's y position
  int numRandomLines = int(map(mouseY, 0,height, 3,100));
  for (int i=0; i<numRandomLines; i++) {
    pushMatrix();
    translate(random(0,width), random(0,height));
    rotate(random(0,TWO_PI));
    stroke(255);
    strokeWeight(3);
    line(-10,0, 10,0);
    popMatrix();
  }
  
  // optional: try using randomSeed(0) before the for-loop
  // above to make the random lines always drawn in the same
  // location – note how it changes the feel of the interaction!
}
