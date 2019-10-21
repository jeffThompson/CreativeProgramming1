
/*
RUNNING SKETCHES FULLSCREEN
Jeff Thompson | 2019 | jeffreythompson.org

Little sketch windows are nice, but what about more
finished work? Running a sketch in fullscreen mode not
only scales to the display but also gets rid of menu 
bars, the dock, etc. This makes for a really tidy
presentation, especially for interactive projects.

*/


void setup() {
  
  // instead of specifying size(), by calling
  // fullScreen() our sketch will run the full
  // width and height of the display
  fullScreen();
  
  // for debugging, it may be helpful to also have
  // a size() command, which you can comment out
  // or, more fancy: include a boolean variable
  // at the top and an if-statement that either
  // triggers the fullScreen() command or size()!
  
  // optionally: no cursor!
  noCursor();
}


void draw() {
  background(255,150,0);
  
  // just a little interactive circle that
  // rotates around the center of the screen
  // note that most positions here are relative
  // to the width/height of the screen, meaning
  // this will run the same on all monitors
  float angle =  map(mouseX, 0,width, 0,TWO_PI*4);
  float radius = map(mouseX, 0,width, 50,height/2-50);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  fill(255);
  noStroke();
  ellipse(0,radius, 100,100);  // white circle
  fill(0);
  ellipse(0,0, 10,10);         // center dot
  stroke(0);
  line(0,0, 0,radius);         // line between the two
  popMatrix();  
}
