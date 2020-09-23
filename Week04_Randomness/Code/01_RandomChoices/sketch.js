
/*
RANDOM CHOICES
Jeff Thompson | 2017/20 | jeffreythompson.org

Random values can be used to make choices in our
program: to draw one shape or another, pick colors
from an array, etc. Some examples are shown below,
but you should try thinking of some yourself too!

RANDOM PROBABILITY:
Let's say we want to draw a circle 60% of the time
and a square 40% of the time. We have to think about
how to accomplish this in an if/else statement.

Since we're thinking in percentages, we can generate
a random number between 0–100 (like 0–100%) and check
if that number is above or below the threshold of 60%:

	if (random(0,100) < 60) {
		circle(100,100, 50);
	}
	else {
		square(100,100, 50);
	}

This can be super useful in things like games and
simulations, where you might want to trigger an event
randomly, or for building complex, nested rulesets
for generative drawings!

CHALLENGES:
1. Can you make the lines random lengths too?
2. Can you change the code to use matrix transformations
   (like push, pop, translate, and rotate) to make
   the line drawn at a random angle? How does this
   change the visual look 

*/

// an array of colors to randomly choose from
let colors = [ 'rgb(255, 150, 0)', 
               'rgb(150, 255, 0)', 
               'rgb(0,   150, 255)', 
               'rgb(150, 0,   255)' ];

// note the slightly weird format for listing these
// colors – this is so we can keep the RGB values all
// together in a readable way (which is also how CSS
// defines color, if you've done any web design)


function setup() {
	createCanvas(400, 400);
    noLoop();
}


function draw() {
	background(50);

	// draw 100 random lines (note we use a custom
	// function to keep our code tidy and easy to update!)
	for (let i=0; i<100; i++) {
		drawRandomLine();
	}

}


function drawRandomLine() {

	// create random x/y coordinates for the line
	let x = random(0, width);
	let y = random(0, height);
	
	// select a random color for each line
	// note that we have to convert the random number
	// to an integer (a whole number, no decimal) since
	// random() returns a floating-point number and we
	// can't pick element 3.5 from a list!
	let whichColor = int(random(0, colors.length));
	stroke(colors[whichColor]);

	// pick a random direction for the next line
	// random(100) returns a value b/w 0-100 – if
	// less 50 (50% chance) then draw in the x 
	// direction, otherwise draw in the y direction

	// 50% chance that we move left or right
	if (random(100) < 50) {

		// do the same thing again to determine 
		// which direction!
		if (random(100) < 50) {
			line(x, y, x-12, y);
		} 
		else {
			line(x, y, x+12, y);
		}
	}

	// if not left/right, then move up or down
	else {
		if (random(100) < 50) {
			line(x, y, x, y-12);
		} 
		else {
			line(x, y, x, y+12);
		}
	}
}

