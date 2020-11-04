
/*
ANIMATION TEMPLATE
<your name>

This template is intended as a starting point for your animation
project – it includes some basic structure for your three scenes
and imports the Sound and easing code as well.

Of course, this is a really rough starting point – don't feel
tied to this as the only way to structure your project!

*/

let whichScene = 0;   // variable to control which scene is shown


function preload() {
  // load your sound files here
}


function setup() {
  createCanvas(windowWidth, windowHeight);
}


function draw() {
  // intro code could go here, if you want one
  if (whichScene === 0) {
    intro();
  }
  else if (whichScene === 1) {
    sceneOne();
  }
  else if (whichScene === 2) {
    sceneTwo();
  }
  else if (whichScene === 3) {
    sceneThree();
  }
}


function mousePressed() {
  // if you want to have a background sound, you can start it
  // and trigger the first scene here
}


function intro() {
  // put code for an intro (optional) here
  // this can be helpful if the user needs to click to start
  // the animation, or if you just want to include a title screen
}


function sceneOne() {
  // put your code for the first scene here (feel free to rename the
  // function to be more clear!)

  // you'll need to include some way to going to the next scene (can
  // be using frameCount, millis(), an event like a shape's position,
  // or the end of a sound file)
  // whichScene = 2;
}

function sceneTwo() {
  // same for the second scene
}

function sceneThree() {
  // and the third
}

