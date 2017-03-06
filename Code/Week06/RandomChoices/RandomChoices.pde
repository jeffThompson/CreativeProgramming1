
/*
RANDOM CHOICES
Jeff Thompson | 2017 | jeffreythompson.org

Random values can be used to make choices in our
program. 

RANDOM ARRAY ELEMENTS:
If we want to have some pre-selected values and
randomly select from them, we can store them in 
an array and use random() to choose one. This is
useful for things like colors, where completely
random choices might not look as good as ones
chosen from a specific pallete.

PROBABILITY:
Since random(1) returns a value from 0-1, we
can set the probability of a certain event happening
in our code. This can be great for triggering events
you only want to happen every so often (like an enemy
spawning) or for building rulesets for generative
drawing. Try changing the chances of drawing horizontally
and see how the drawing changes! Small tweaks to systems
like this can produce very different drawings.

CHALLENGES:
1. Can you make the stroke change color randomly with
   a probability of 25%?
2. Can you keep the drawing from going off the edges
   of the sketch? (Hint: use constrain() or if statements
   to restrict the movement.)

*/

// an array of colors to randomly choose from
color[] colors = { color(255,150,0), 
                   color(150,255,0), 
                   color(0,150,255), 
                   color(150,0,255) };

float x,y, px,py;    // values for drawing lines


void setup() {
  size(800,800);
  background(50);
  
  // set initial positions to the 
  // middle of the screen
  x = px = width/2;
  y = py = height/2;
}


void draw() {
  
  // select a random color for each line
  // note that we have to "cast" the random value to an
  // integer, since random() returns a float but array
  // indices are integers
  int whichColor = int(random(0, colors.length));
  stroke(colors[whichColor]);
  
  // draw a line from the current to the
  // previous position
  line(x,y, px,py);
  
  // save current position as the previous
  px = x;
  py = y;
  
  // pick a random direction for the next line
  // random(1) returns a random value b/w 0-1
  // if less than 0.5 (50% chance), draw in the
  // x direction, otherwise draw in the y direction
  if (random(1) < 0.5) {
    if (random(1) < 0.5) {    // do the same thing to determine left or right!
      x -= 8;
    } 
    else {
      x += 8;
    }
  }
  else {
    if (random(1) < 0.5) {
      y -= 8;
    } 
    else {
      y += 8;
    }
  }
}