
/*
WIDTH/HEIGHT VARIABLES
Jeff Thompson | 2016 | jeffreythompson.org

Drawing shapes with set pixel values is ok, but
if you want to resize your sketch*, it will be
much better if everything automatically
resizes itself to fit.

We can do that with a little math and the built-
in "width" and "height" variables, set by the
size() command.

* Why might you want to resize your sketch? One
common reason is showing your project in a gallery.
Not all computer monitors are the same resolution,
so if you create code that automatically runs full-
screen, without auto-resizing it will either be small
or cut off!

*/


void setup() {
  
  // by setting size() we automatically create
  // values for "width" and "height" – try
  // changing the size below to see the results
  size(800,800);
  background(100);
  
  // a non-dynamic rectangle set to top-right
  // corner using exact pixel location and dimensions
  fill(255,150);
  noStroke();
  rect(400,0, 200,200);
  
  // now a circle in the center that changes based on the window size
  ellipse(width/2,height/2, 300,300);
  
  // we can also use math to dynamically set shapes
  // here's another square, set in the bottom-right
  // corner and 100px square
  rect(width-100,height-100, 100,100);
  
  // of course, this works for lines too
  stroke(255,150,0);
  strokeWeight(5);
  line(width/2,0, width/2,height);
  line(0,height/2, width,height/2);
}