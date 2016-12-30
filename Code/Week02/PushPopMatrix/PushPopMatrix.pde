
/*
PUSH/POP MATRIX
Jeff Thompson | 2016 | jeffreythompson.org

If we want to draw a complex set of shapes, the numbers
can quickly get messy. pushMatrix() and popMatrix() let us
temporarily move the origin to a new location, making 
this much easier.

Additionally, we can do further transformations like
rotation, then set the origin back to (0,0) again.

CHALLENGES:
+  Can you implement similar code within a nested for loop
   to draw complex shapes across the screen?
+  Within your for loops, can you change the angle of
   rotation across the screen? (Hint: division or the map()
   command)

*/


void setup() {
  size(800,800);
  background(100);
  
  // the "old" method – not how messy
  // this code would get if we tried to
  // draw many arrows (and even nastier
  // if we wanted to rotate them)
  stroke(255);
  strokeWeight(4);
  strokeCap(ROUND);
  line(400,350, 400,450);    // arrow body
  line(400,350, 380,370);    // left arrow head
  line(400,350, 420,370);    // right arrow head
  
  // every time we wanted to update this code, we'd have
  // to redo our math! (this would be even easier using
  // a custom function, which is covered in another example
  // this week)
  
  // move origin instead!
  // this draws the same arrow, but all coordinates
  // are relative to (0,0)
  pushMatrix();            // enter "local" mode
  translate(200,200);      // move origin to (200,200)
  line(0,-50, 0,50);
  line(0,-50, -20,-30);
  line(0,-50, 20,-30);
  popMatrix();             // reset origin to (0,0)
  
  // now we can just copy/paste our arrow code and change
  // the values in translate()
  
  // additionally, we can add in rotation!
  // note that angles need to be in radians (0–TWO_PI) or
  // we can convert from degrees, like here
  float angle = radians(45);
  
  pushMatrix();
  translate(600,600);      // first move to new location
  rotate(angle);           // then rotate around new origin
  line(0,-50, 0,50);
  line(0,-50, -20,-30);
  line(0,-50, 20,-30);
  popMatrix();
  
  // why do we translate first, then rotate?
  // try switching the commands and see what happens
  
}
  
  
  
  
  