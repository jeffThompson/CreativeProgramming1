
/*
SOUND EFFECTS
Jeff Thompson | 2019/20 | jeffreythompson.org

Adding sound effects that are tied to events in your
animation can add a ton of character. Imagine a circle
on screen moving onscreen: the sound it makes when it
hits the edges can totally change the character and feel
of the scene!

The p5.js Sound library lets us load, play, and loop
sounds like in the BackgroundMusic example as well as
some other modifications like panning and changing
volume.

WHERE TO GET SOUNDS:
+ Gathering your own can be super fun! Use your phone to
  capture sounds. You can even trim them right in the 
  recording app. 'Foley' is the art of creating sound effects,
  often using weird sources (see this awesome documentary on
  Treg Brown who made sound effects for Looney Toons:
  https://www.youtube.com/watch?v=Xqaeds-wO4A)
+ Freesound.org is a great source of recorded sound effects,
  all free to download and use!

CHALLENGES
1. Look in the assets folder and try changing the sound
   effect that's played. How does it change the feel of
   the animation?
2. What color/shape makes sense with this sound effect? Try
   swapping out different sounds and match a shape to them.
3. Can you create two different circles that move in random
   directions, each with a different sound effect?

*/

let dia =    50;  // diameter of the circle
let speedX = 5;   // speed in x/y directions
let speedY = -3;

let x, y;         // position of the circle
let pop;          // the sound effect we'll load


// load the sound in preload() like we do for images
// and in the BackgroundMusic example
function preload() {
  soundFormats('wav');
  pop = loadSound('assets/pop.wav');
}


function setup() {
  createCanvas(600,600);

  // start in the center
  x = width/2;
  y = height/2;
}


function draw() {
  background(50);

  // draw the circle
  fill(255);
  noStroke();
  circle(x,y, dia);

  // update its position with the speed variables
  x += speedX;
  y += speedY;

  // we can also pan (move left/right) the sound,
  // making it sound like it's moving around!
  // -1 = fully left, 1 = fully right, 0 = center
  // (best with headphones on)
  let panning = map(x, 0,width, -1,1);
  pop.pan(panning);

  // if the circle has hit the sides of the canvas,
  // have it bounce and play the sound effect
  if (x <= dia/2 || x >= width-dia/2) {
    if (!pop.isPlaying()) {
      pop.play();
    }
    speedX *= -1;
  }
  if (y <= dia/2 || y >= height-dia/2) {
    if (!pop.isPlaying()) {
      pop.play();
    }
    speedY *= -1;
  }
}

