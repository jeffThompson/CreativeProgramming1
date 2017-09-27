
/*
SIMPLE CLOCK
Jeff Thompson | 2017 | jeffreythompson.org

There are a ton of ways you could visually display
time – this is a simple example to show you how you
could use time values, map(), and simple animation
to create a visual clock.

*/

void setup() {
  size(800,800);
  noStroke();
}

void draw() {
  background(50);
  
  // get time values and convert them into a usable range
  float sec = map(second(), 0,59, 0,width);
  float min = map(minute(), 0,59, 0,width);
  float hour = map(hour(), 0,23, 0,width);
  
  // millis (fraction of a second) will be a little different
  // since it runs continuously, and there are 1000 ms in a second,
  // we can use modulus (the remainder of division) to get its value 
  float millis = millis() % 1000;
  
  // draw each one as a rectangle 20px wide and a quarter
  // of the height of the screen
  
  fill(255,150,0);
  rect(millis,0, 20,height/4);
  
  fill(150,255,0);
  rect(sec,height/4, 20,height/4);
  
  fill(0,255,150);
  rect(min,height/2, 20,height/4);
  
  fill(0,150,255);
  rect(hour,height-height/4, 20,height/4);
}