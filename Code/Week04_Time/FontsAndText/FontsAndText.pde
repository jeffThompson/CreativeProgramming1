
/*
FONTS AND TEXT
Jeff Thompson | 2017 | jeffreythompson.org

Displaying text can be very helpful for onscreen feedback
of how a program is doing, settings of variables, or as
a visual part of your sketch. Luckily, we're not stuck with
the default Processing font, and can load (most) any font
from our system.

Note this example loads a font from your computer, meaning if
another user doesn't have that font, it won't look the same.
If you do need to be able to package a font with your sketch,
use the Tools > Create Font... tool to make a separate version.

CHALLENGES:
1. If you remember from a while back, strings are made up
   of individual char variables, which are stored as numerical
   ASCII values. Can you use those numbers to make morphing
   text that changes? (Hint: for a really fancy version, try
   a for loop and <string>.charAt(index) to manipulate the text.)
2. Can you create a second PFont object (giving it another
   variable name) and display two fonts onscreen together?

*/

PFont font;    // the PFont object for displaying text
               // it will get loaded later in setup()

void setup() {
  size(800,800);
  
  // first we create a font from one on our system
  // (to find its name, look in Tools > Create Font...
  font = createFont("Times-Roman", 120);    // 60 = font size in px
  textAlign(CENTER);                        // set alignment (LEFT, CENTER, RIGHT)
  
  // note that we do this in the setup(), so that the font doesn't
  // get loaded and re-loaded every frame
  
  // bonus!
  // on high-resolution displays (like Mac Retina screens) fonts
  // can look super cruddy in normal mode – but we can set the
  // sketch to run at a higher pixel density to make up for that
  pixelDensity(displayDensity());    // displayDensity() of 1 = normal, 2 = high-res
}


void draw() {
  background(255);

  // display some text!
  textFont(font, 120);         // set current font and size
  fill(0);
  noStroke();
  text("Hello, world.", width/2, height/2);
  
  // we can also build strings and display them on the screen
  // (and we can change the font size dynamically too!)
  textFont(font, 18);
  text("MILLISECONDS: " + nfc(millis()), width/2, 72);
  text("FRAME: " + nfc(frameCount), width/2, height-72);
}
  