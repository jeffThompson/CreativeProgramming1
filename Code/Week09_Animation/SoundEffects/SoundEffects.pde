
import processing.sound.*;

/*
SOUND EFFECTS
Jeff Thompson | 2019 | jeffreythompson.org

Adding sound effects that are tied to events in your
animation can add a ton of character. Imagine a circle
on screen: a pop or burp or swoosh gives totally different
feeling.

Processing's Sound library lets us load, play, and loop
sounds as well as some other modifications (like panning).
For more control and for audio synthesis, try the Minim
library instead.

WHERE TO GET SOUNDS:
+ Gathering your own can be super fun! Use your phone to
  capture sounds. You can even trim them right in the 
  recording app. "Foley" is the art of creating sound effects,
  often using weird sources (see this awesome documentary on
  Treg Brown who made sound effects for Looney Toons:
  https://www.youtube.com/watch?v=Xqaeds-wO4A)
+ Freesound.org is a great source of recorded sound effects,
  all free to download and use!

CHALLENGES:
+ What color/shape makes sense with this sound effect? Try
  swapping out different sounds and match a shape to them.
+ Can you create two different circles that move in random
  directions, each with a different sound effect?

*/


int dia = 50;           // diameter of the circle

SoundFile pop;          // the sound effect we'll use
float x, y;             // position of the circle
float speedX, speedY;   // and x/y speed too


void setup() {
  size(600,600);
  
  // load the sound file (should be in the sketch's
  // data folder – wav and aiff supported)
  // there are some addition sound files in there, so
  // try them out and see how the overall feel changes!
  pop = new SoundFile(this, "pop.wav");
  
  // set initial position and speed
  x = width/2;
  y = height/2;
  speedX = random(-5,5);
  speedY = random(-5,5);
}


void draw() {
  background(50);
  
  // draw a circle at the x/y position
  fill(255);
  noStroke();
  ellipse(x, y, dia,dia);
  
  // optional: use the x position of the circle to
  // set the left/right "panning" of the sound!
  float panning = map(x, 0,width, -1,1);
  pop.pan(panning);
  
  // update the circle's position
  x += speedX;
  y += speedY;
  
  // if hitting the edges, bounce and play the sound
  if (x <= dia/2 || x >= width-dia/2) {
    if (!pop.isPlaying()) {    // if not already playing...
      pop.play();              // ...play the sound
    }
    speedX *= -1;              // and reverse direction    
  }
  if (y <= dia/2 || y >= height-dia/2) {
    if (!pop.isPlaying()) {
      pop.play();
    }
    speedY *= -1;
  }
}
