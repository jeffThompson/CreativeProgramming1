
/*
FRAME COUNT AND TIMING
Jeff Thompson | 2019 | jeffreythompson.org

There are a few different ways we can control the
timing of events, each with their own positives and
negatives.

frameCount:
This built-in variable tells us how many frames have
passed since the program started. This can be nice for
rough timing but frame rate can vary depending on the
tasks your computer is doing (including things *not* in
your sketch) meaning timing can get off.

With frameCount, the modulus operator (%) is very helpful. 
It returns the remainder of division, so if you wanted 
something to happen every 100 frames, you could write: 

  if (frameCount % 100 == 0) { 
    // do something
  }
  
Timer with millis():
If we want more accurate timing, we can use another built-
in device: millis(). This function gives us the amount of
time that has passed since the program started in milli-
seconds, which are 1000th of a second (1000 milliseconds =
1 second, 500 ms = 1/2 second, etc).

This is a little less intuitive but lets us do careful and
regular timing of events by measuring a previous time and
an interval against the current time.

CHALLENGES:
+ Can you make the interval used in either the frameCount
  or millis() examples vary using the mouse position?
+ Can you make the millis() timer have different on and
  off durations?
+ Can you create two separate timers using millis()? Hint:
  you'll need two separate variables for prevMillis and
  interval. Try checking out Steve Reich's compositions
  such as "Music for 18 Musicians" as inspiration for what
  you can do with slightly-varying intervals.  

*/


// variable to turn on/off a blue "light" on
// the left side using the sketch's frame count
boolean blinkLeft =  true;

// same thing on the right but using millis()
boolean blinkRight = false;
int interval =       800;      // interval in milliseconds
long prevMillis;               // store last time the light
                               // was turned on/off

void setup() {
  size(600,600);
  
  // start the timer
  // millis() is the current time in milliseconds
  // (1000th of a second) since the sketch started 
  prevMillis = millis();
}

void draw() {
  background(50);
  
  // show the current frame count in the console
  // (note how this value just gets larger and larger)
  println(frameCount);
  
  // timing events with frameCount...
  // (see info at the top on the +/- of this
  // method for controlling events)
  
  // every 30 frames, switch the "blinkLeft"
  // variable between true and false
  if (frameCount % 30 == 0) {
    blinkLeft = !blinkLeft;
  }
  
  // if "blinkLeft" is true, draw a blue light
  if (blinkLeft) {
    drawLight(width/4, height/2, color(0,150,255));
  }
  
  // timing events with millis()...
  
  // check if enough time is passed to trigger
  // the light to turn of or off
  // syntax here is a bit confusing: we check if
  // the current time is greater than the previous
  // time the event happened plus the interval
  // specified – this can be confusing to think
  // of time that way but gets easier with practice
  if (millis() > prevMillis + interval) {
    
    // if so, flip the flag and reset the timer
    // to the current time
    blinkRight = !blinkRight;
    prevMillis = millis();
  }
  
  // if the light should be on, draw it using
  // the same function as above!
  if (blinkRight) {
    drawLight(width-width/4, height/2, color(255,255,0));
  }
}


// a function that draws a "light" at a specified
// location and color – this is a good use for a
// function since it's code we want to use more
// than once but can be customized with arguments
void drawLight(int x, int y, color c) {
  for (int i=0; i<10; i++) {
    float dia =   map(i, 0,9, 200,30);
    float alpha = map(i, 0,9, 20,255);
    fill(c, alpha);
    noStroke();
    ellipse(x,y, dia,dia);
  }
}
