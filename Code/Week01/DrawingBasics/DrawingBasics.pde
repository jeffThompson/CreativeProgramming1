
/*
DRAWING BASICS
Jeff Thompson | 2016 | jeffreythompson.org

While Processing includes lots of fancy ways to draw
shapes, modify images, and make cool artworks, the basics
are very simple: color, outline, and shape.

*/


void setup() {
  
  // we'll almost always use the size() command first
  // it sets the size of our window in pixels
  // try changing and see what happens!
  size(800,800);
  
  // colors are (by default) set to red, green, blue (RGB)
  // with these values (0–255) we can create any color
  // the background() command fills the entire screen with
  // a color – try changing the RGB values below
  background(255,150,0);
  
  // mixing in RGB can take some getting used to – try
  // Tools > Color Selector... for an interactive tool
  
  // we can set colors for shapes using fill (inside color) and
  // stroke (outline color)
  fill(0,150,255);
  stroke(0);        // single values = grayscale!
  
  // rectangles are drawn with four arguments: start X and Y
  // position, then width and height (in pixels)
  rect(10,10, 200,200);
  
  // changes to fill and stroke stay in effect until 
  // they're changed again
  stroke(255);
  
  // ellipses (including cirlces) also take four arguments,
  // but are drawn from the center X and Y
  ellipse(400,400, 200,200);
  
  // colors can also include a 4th value, alpha, which
  // set transparency (0 = fully transparent, 0 = fully opaque)
  fill(0,0,0, 150);
  
  // and we can turn off stroke and fill
  noStroke();
  // noFill();              // try commenting these out to switch
  rect(100,100, 200,200); 
  
  // the thickness of stroke can be set (default = 1px)
  strokeWeight(5);
  stroke(255,255,0);
  line(0,0, 800,800);    // args = start X/Y and end X/Y
  line(0,800, 800,0);
  
  // other shape types include triangles...
  noStroke();
  fill(255,0,0);
  triangle(800,800, 400,800, 600,600);
  
  // and more complex shapes
  fill(0,150,150, 150);
  beginShape();
  vertex(400,400);    // a vertex is a point
  vertex(600,400);    // string them together to draw complex shapes
  vertex(700,200);
  vertex(500,200);
  endShape();
  
  // for more info on a command, right-click it in the code and
  // click "Find in Reference..." to look it up
  
}