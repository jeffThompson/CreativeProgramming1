
/*
TWO-DIMENSIONAL ITERATION (with push/pop)
Jeff Thompson | 2017/20 | jeffreythompson.org

Combining two ideas often results in something much
more interesting than each on their own: by using 
two for-loops and push/pop(), we can draw a grid
of complex patterns using code that's easy to read and
modify.

The nested for-loop walks a grid, one row at a time:
- y starts at the top of the canvas
- then we draw shapes across the full width
- y shifts down a row
- we draw shapes across again
- repeat until y reaches the bottom

Inside each step, we enter "temporary" mode using 
push(), change the origin using translate(), then
draw our shapes. This has the benefit of making our 
drawing commands relative at (0,0) and is a lot 
easier to modify.

CHALLENGES:
1. Can you add rotation as well? Hint: you many need to
   translate to the center of the grid square instead of
   the upper-left corner
2. Can you use the modulus (%) operator (returns the remainder
   of division) or a boolean variable to draw shapes of 
   alternating color?

*/

// a "global" variable that sets the grid size – by 
// changing just this number, we can alter the whole drawing!
let gridSize = 100;


function setup() {
	createCanvas(400, 400);
}


function draw() {
	background(0, 200, 75);

	// go row-by-row all the way down
	for (let y=0; y<height; y+=gridSize) {

		// in each row, draw squares across the screen
		for (let x=0; x<width; x+=gridSize) {

			// for each step x/y, go into "temporary" mode
			push();

			// now x/y will be (0,0), making our
			// drawing commands much easier
			translate(x, y);

			// draw some shapes in this grid square
			// (note: we're making all positions/sizes
			// relative to the "gridSize" variable so
			// that, if we change that value, our shapes
			// automatically resize too!)
			noStroke();
			fill(0,150,255);
			triangle(0,0, gridSize,0, gridSize/2,gridSize/2);
			fill(0,0,150);
			triangle(gridSize/2,gridSize/2, gridSize,gridSize, 0,gridSize);

			// pop back to the normal origin and continue
			// the loops
			pop();
		}
	}
}

