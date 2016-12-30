
/*
FUNCTIONS
Jeff Thompson | 2016 | jeffreythompson.org

Being clear and concise: these are some of the marks of
great code. But big projects can get very messy, so we
can offload code into "funtions".

Processing is actually full of functions: setup(), rect(),
etc are all functions you've used already!

A function can return a variable or "void", meaning
it doesn't return anything – like fill() or save(). It
can also take arguments, which set parameters for the
code to be run – like the position and dimensions
in ellipse() or the colors in stroke().

The structure of a function looks like this:

  type name(type argument1, type argument2) {
    // some code
  }


CHALLENGES:
+  Can you make a function to compute the Pythagorean 
   theorem? What input arguments do you need, and what
   variable type should it return?

*/


void setup() {
  size(800,800);
  background(100);
  
  // a function that draws four circles around 
  // a center point
  fill(255);
  noStroke();
  drawFourCircles(width/2, height/2, 50, 30);
  
  // this isn't super useful as is, but what if we
  // wanted to draw lots of these circle patterns in
  // a for loop? using a function makes our code 
  // cleaner, easier to update, and more re-usable
  fill(0, 100);
  for (int y=0; y<=height; y+=100) {
    for (int x=0; x<=width; x+=100) {
      drawFourCircles(x,y, 10, 10);
    }
  }
  
  // we can also create useful functions to compute
  // values, such as this one that returns the area
  // of our sketch window
  int area = computeArea(width, height);
  println("The sketch window has an area of " + area + " pixels");  
}


// draws four circles around a point
// returns "void" since it doesn't compute a value
void drawFourCircles(int x, int y, int spacing, int w) {
  pushMatrix();
  translate(x, y);
  ellipse(-spacing, -spacing, w,w);
  ellipse(spacing,  -spacing, w,w);
  ellipse(-spacing, spacing,  w,w);
  ellipse(spacing,  spacing,  w,w);
  popMatrix();  
}
  

// this function returns an integer, so we have to
// specify that when creating it
int computeArea(int w, int h) {
  int area = w * h;    // calculate the area
  return area;         // send back the result
}