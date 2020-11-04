
/*
FRAME COUNT AND TIMING
Jeff Thompson | 2019 | jeffreythompson.org

There are a few different ways we can control the
timing of events, each with their own benefits and
drawbacks.

FRAME COUNT
The built-in variable 'frameCount' tells us how many
frames have passed since the program started. This
can be nice for rough timing but the frame rate of our
sketch can vary depending on the tasks your computer
is doing (including things *not* in your sketch like
updating software!). This means timing can go faster/
slower as your sketch runs, resulting in uneven motion.

With frameCount, the modulus operator (%) is very
helpful. It returns the remainder from division, so
if you wanted something to happen every 100 frames,
you could write:

  if (frameCount % 100 === 0) {
  // since 100 can be divided by 100 evenly,
  // the remainder is zero – code inside this
  // if-statement will be triggered every 100 frames
  }

MILLISECOND TIMER
If we want more accurate timing, we can use another
built-in variable: millis(). This functions gives us the
amount of time that has passed since the program started,
measured in milliseconds. A millisecond is 1000th of a
second (1000ms = 1 second, 500ms = 1/2 second, etc).

This code is much less intuitive but lets us do careful
and regular timing of events by comparing the current
time with the last time the event happened. When that
interval passes a certain amount, we can trigger an event.

CHALLENGES
1. Can you make the interval used in either the frameCount
   or millis() examples vary using the mouse position?
2. Can you make the millis() timer have different on/off
   durations?
3. Can you create two separate timers using millis()?
   Hint: you'll need two separate variables for
   'prevMillis' and 'interval'. Try checking out Steve
   Reich's amazing composition 'Music for 18 Musicians'
   as inspiration for what you can do with slightly-
   varying intervals!

*/

// variable to turn on/off a blue 'light' on the left
// side of the screen using the sketch's frameCount
let blinkLeft = true;

// same thing on the right but using millis() instead
let blinkRight = false;
let interval =   800;   // in milliseconds
let prevTime;           // stores the last time the
                        // light was turned on/off

function setup() {
  createCanvas(windowWidth, windowHeight);

  // record the current time for the millis() example
  prevTime = millis();
}


function draw() {
  background(50);

  // show the current frame count in the console
  // (note how this value just gets larger and larger)
  console.log(frameCount);

  // FRAME COUNT
  // (see the info at the top for the benefits and
  // drawbacks of this method for controlling events)

  // every 30 frames, switch the 'blinkLeft' variable
  // between true and false
  if (frameCount % 30 === 0) {
    blinkLeft = !blinkLeft;
  }

  // if 'blinkLeft' is true, draw a blue 'light'
  if (blinkLeft) {
    drawLight(width/4, height/2, color(0,150,255));
  }

  // MILLISECONDS
  // check if enough time has passed since the last
  // event and, if it has, switch the light on/off
  // this syntax is a bit confusing: we check if the
  // current time millis() is greater than the previous
  // time plus the interval we specified
  if (millis() > prevTime + interval) {
    
    // if so, flip the variable...
    blinkRight = !blinkRight;
    
    // ...and reset the timer to the current time
    prevTime = millis();
  }

  // if the light should be on, draw it using the
  // same function we used for the right side!
  if (blinkRight) {
    drawLight(width-width/4, height/2, color(255,255,0));
  }
}


// a function that draws a 'light' at a specified
// location and color – this is a good use for a
// function since it's code we want to use more
// than once but can be customized with arguments
function drawLight(x, y, c) {
  let r = red(c);
  let g = green(c);
  let b = blue(c);
  for (let i=0; i<10; i++) {
    let dia =   map(i, 0,9, 200,30);
    let alpha = map(i, 0,9, 20,255);
    fill(r,g,b, alpha);
    noStroke();
    circle(x, y, dia);
  }
}

