
/*
FLAGS
Jeff Thompson | 2019 | jeffreythompson.org

So far, our sketches have done one thing and then 
displayed the result or quit. But often we're going to
want our sketch to have multiple parts, for example
a loading screen followed by the main sketch or, like
our assignment, different animations triggered auto-
matically or via mouse or keyboard input.

One way to structure this is through a "flag," a boolean
variable that determines what is shown onscreen. When
paired with functions this can make our draw() loop
minimal and easy to read: essentially a script for what
should be displayed.

CHALLENGES:
+ When showing mainSketch(), can you have the key
  press reset us back to the intro?
+ In the keyPressed() function at the bottom, take a
  look at the example for more than one section.
  Can you add another section to this sketch (and a 
  second flag to control which is shown)?

*/


// a single flag, controlling whether the intro
// or main sketch should be shown
boolean showIntro = true;

PFont font;


void setup() {
  size(600,600);
  
  font = loadFont("Lora-Italic-120.vlw");
  textFont(font, 120);
  textAlign(CENTER, CENTER);
}


void draw() {
  
  // if the "showIntro" flag is true, run
  // its function, if not run mainSketch()
  // note how clean this makes our draw loop!
  if (showIntro) {
    intro();
  }
  else {
    mainSketch();
  }
}


// if any key is pressed, change "showIntro"
// to false
void keyPressed() {
  showIntro = false;
  
  // need more than one flag?
  // imaging three sections: "intro," "main," and "end"
  //if (showIntro) {
  //  showIntro = false;
  //  showMain =  true;
  //}
  //else if (showMain) {
  //  showMain = false;
  //  showEnd =  true;
  //}
}
