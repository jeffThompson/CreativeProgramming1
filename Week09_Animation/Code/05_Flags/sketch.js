
/*
FLAGS
Jeff Thompson | 2019/20 | jeffreythompson.org

So far, our sketches have done one thing and then 
displayed the result. But often we're going to want 
our sketch to have multiple parts, for example a
loading screen followed by the main sketch or, like
our assignment, different animations triggered 
automatically after a period of time or an event.

One way to structure this is through a 'flag,' a boolean
variable that determines what is shown onscreen. When
paired with functions this can make our draw() loop
minimal and easy to read: essentially a script for what
should be displayed.

For more on web-safe fonts, see:
https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Fundamentals#Web_safe_fonts

CHALLENGES
1. When showing mainSketch(), can you have the key
   press reset us back to the intro?
2. In the keyPressed() function below, take a
   look at the example for more than one section –
   can you add an 'end' section to this sketch (and a 
   second flag to control which is shown)?
*/

// a single 'flag' variable, controlling whether the
// intro or main sketch should be shown
let showIntro = true;

// a font, which we'll load in setup()
let font;


function setup() {
  createCanvas(windowWidth, windowHeight);

  // lots more to cover on fonts and typography in
  // CP2, but here we load a 'web-safe' font (one that
  // virtually everyone has installed on their
  // computer) to display the title
  textFont('Georgia');
}


function draw() {

	// if the 'showIntro' variable is true, run
	// the function that displays the intro screen
	if (showIntro) {
		intro();
	}
	// otherwise, show the main sketch
	else {
		mainSketch();
	}

	// see how clean this makes our draw loop?
	// ideally, we can think of draw() being like
	// an outline that's easy to read and change,
	// with details being offloaded to functions  
}


// if any key is pressed, changed 'showIntro' to false
function keyPressed() {
	showIntro = false;

	// want more than one section?
	// you'll need more variables, then switch
	// between them as the keys are pressed, 
	// depending on which screen we're on

	// ex: three sections named 'intro,' 'main,'
	// and 'end'
	// if (showIntro) {
	// 	showIntro = false;
	// 	showMain = true;
	// }
	// else if (showMain) {
	// 	showMain = false;
	// 	showEnd = true;
	// }
}


// a simple intro screen, stored in its own function
// which makes it easier to read and update
function intro() {
	background(50);

	fill(255);
	noStroke();
	textSize(100);
	textAlign(CENTER, CENTER);
	text('INTRO', width/2, height/2);

	textSize(24);
	text('[ press any key to start ]', width/2, height-height/4);
}


// a little main section as well, also in its own function
function mainSketch() {
	background(255, 150, 0);

	fill(0);
	noStroke();
	textSize(height/2);
	textAlign(CENTER, CENTER);
	text('BOO!', width/2, height/2);
}

