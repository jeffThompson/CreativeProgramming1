
/*
TIME
Jeff Thompson | 2017 | jeffreythompson.org

Getting the time can be useful for timing events in the
sketch or for things like formatting unique filenames
(by adding a timestamp)... and for making clocks, like
you'll do for your homework this week :)

CHALLENGES:
1. Can you add milliseconds to our clock? (Hint: since
   millis() gives us the time since the program started,
   use modulus to run from 0 – 999)

*/

PFont font;        // font to display the time
long prevMillis;   // keep track of the current time (used later)


void setup() {
  size(800, 800);
  pixelDensity(displayDensity());   // smooth fonts, please
  
  // font setup
  font = createFont("Arial", 100);
  textFont(font, 100);
  textAlign(CENTER);
  
  // we can get the current time in a variety of formats
  int sec =   second();
  int min =   minute();
  int hour =  hour();
  int day =   day();
  int month = month();
  int year =  year();
  println("Today is " + month + "/" + day + "/" + year);
  println("It is " + min + " minutes after " + hour);
  
  // we can also get the # of milliseconds since the sketch
  // started (FYI, there are 1000 ms in a second)
  println(millis() + " milliseconds have past since the sketch started");
  
  // this can be useful for timing events, as we'll see below
  prevMillis = millis();     // start our timer (used later in the sketch)
}


void draw() {
  background(0);
  
  // show us the time!
  // (use nf() to add leading zero the the digits)
  fill(255);
  noStroke();
  text(nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2), width/2, height/2);
  
  // the second() command is great, but if we want finer control
  // over timing, we can use millis() and a conditional statement
  // to trigger events at a set interval
  
  // if the current time in ms is greater than the previous time
  // plus the interval, it's time to trigger again
  if (millis() > prevMillis + 5000) {
    println("Five seconds have passed...");    // do something...
    prevMillis = millis();                     // ...and reset the timer
  }
}