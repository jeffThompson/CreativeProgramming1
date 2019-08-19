
/*
KEYBOARD INPUT
Jeff Thompson | 2017 | jeffreythompson.org

Keyboard input can be useful for switching flags in
code, typing onscreen, moving objects around, and 
otherwise controlling things in your sketch.

Most of our code will happen in the Processing
keyPressed() function, which watches for keyboard
input.

CHALLENGES:
1. Can you make a cheat-sheet with all the keyCodes
   for future reference?
2. Can you use the arrow keys to move an object
   around the screen? Hint: you'll need an X/Y
   position and change it with the key codes
   for the arrow keys.
3. Can you keep track of the previous key pressed
   and show both onscreen? Can you use an array to
   store several letters?

*/

String letterPressed = "a";   // current letter being pressed
int asciiCode;                // the ascii-code of current letter
PFont font;                   // font for display


void setup() {
  size(800,800);
  
  // change color modes to hue, saturation, brightness
  // for the fancy background-changing code below
  colorMode(HSB);
  
  // font for displaying the letters
  font = createFont("Arial", 288);
  textAlign(CENTER, CENTER);
}


void draw() {
  background(200);
  
  // fancier version: change the background color
  // based on the current key being pressed
  float h = map(asciiCode, 32,126, 0,255);
  background(h, 255,255);
  
  // display the current letter pressed and its
  // ascii code below
  fill(255);
  noStroke();
  textFont(font, 288);
  text(letterPressed, width/2, height/2);
  
  textFont(font, 36);
  text(asciiCode, width/2, height-56);
}


// capture the most recent key pressed
void keyPressed() {
  
  // ASCII (American Standard Code for Information Interchange) was
  // developed in the 1960s for teletype printers – it assigns a code
  // for upper- and lower-case letters, numbers, and most standard
  // symbols, plus some control keys (like return and escape)
  // https://en.wikipedia.org/wiki/ASCII
  asciiCode = key;
  
  // to show the key's value onscreen as a letter, we have to convert
  // it to a String (using the Character.toString() function)
  letterPressed = Character.toString(key);
  
  // key codes!
  // "special" keys like shift don't show up as letters
  // but instead have "key codes" – try shift, arrow keys,
  // etc and see what prints
  // more info: https://processing.org/reference/keyCode.html
  if (key == CODED) {
    println("Key code: " + keyCode);
  }
}