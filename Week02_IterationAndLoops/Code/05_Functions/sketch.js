
/*
FUNCTIONS
Jeff Thompson | 2016/20 | jeffreythompson.org

Being clear and concise: these are some of the marks of
great code. As your projects grow they can get very messy, 
but one way we can offload code into "funtions."

Functions are self-contained bits of code that can be easily
re-used. They often allow for "arguments" or parameters that
are passed into them.

p5.js is actually full of functions: setup(), rect(), fill(), 
and console.log() are all functions you've used already! When
we give rect() a position and dimensions, we're passing
arguments to a reusable bit of code.

STRUCTURE:
The structure of a function looks like this:

    function name(argument1, argument2) {
        // some code
    }

Some functions, like noStroke(), have no arguments.

RETURNING VALUES:
So far, the functions we've used don't send anything back.
But if we want to perform some kind complex calculation or
want to get confirmation that a process completed successfully,
we can use a "return" statement to send something back to
where the function was called from.

	function add(a, b) {
		let result = a + b;
		return result;
	}

We can then call this function from inside our code to get
the resulting value:

	let sum = add(1, 2);
	console.log(sum);		<< the "sum" variable now equals 3!

CHALLENGES:
1. Can you make a function to compute the Pythagorean 
   theorem? What input arguments do you need, and what
   variable type should it return?

*/


function setup() {
	createCanvas(400, 400);
    noLoop();
}


function draw() {
	background(50);

	// here we call a simple function that draws
	// four circles around a center point
	fill(255);
	noStroke();
	drawFourCircles(width/2, height/2, 50, 30);

	// on its own, the example above isn't that useful
	// but what about putting this into a for-loop?
	// this function makes our loop waaay easier to read
	// and update later!
	fill(255, 100);
	for (let y=0; y<=height; y+=100) {
		for (let x=0; x<=width; x+=100) {
			drawFourCircles(x,y, 10, 10);
		}
	}

	// we can also create "utility" functions to compute
	// values that we might want to use – this one returns
	// the area of our sketch window
	let area = computeArea(width, height);
	console.log('The sketch window has an area of ' + area + ' pixels');

	// other built-in "utility" functions include:
	// radians()	converts degrees (0-36) to radians (0-TWO_PI)
	// dist()		distance between two points
}


// draws four circles around a point
// doesn't return anything since it doesn't compute a value
function drawFourCircles(x, y, spacing, dia) {
  push();
  translate(x, y);
  circle(-spacing, -spacing, dia);
  circle(spacing,  -spacing, dia);
  circle(-spacing, spacing,  dia);
  circle(spacing,  spacing,  dia);
  pop();  
}


// this function returns the area, given a width/height
function computeArea(w, h) {
	let area = w * h;		// calculate the area
	return area;			// send back the result
}

