
/*
PERLIN MOTION
Jeff Thompson | 2017/20 | jeffreythompson.org

In addition to generating great-looking static images from
Perlin noise, we can also use it to drive realistic motion.
This example uses a y and time offset into the Perlin noise
to create smoothly flowing waves.

Based on the NoiseWave example by Daniel Shiffman (in
the Java editor's Examples > Math... folder)

CHALLENGES: 
1. Can you try adding noiseDetail() to the setup() and change
   the overall smoothness and scale of the noise?

*/

let yIncrement =    0.05;    // how much to change b/w individual waves (0-1)
let timeIncrement = 0.01;    // speed of change over time (0-1)
let timeOffset =    0;       // incremented each frame to shift the noise


function setup() {
	createCanvas(400, 400);

	// try adding noiseDetail() here!
}


function draw() {
	background(180);

	fill(50);
	noStroke();
	beginShape();
	
	let yOffset = 0;
	for (let x=0; x<=width; x+=10) {

		// create points in the wave based on the y and time
		// offsets into the Perlin noise – multiply by height
		// to scale from 0-1 to the screen dimensions
		let y = noise(yOffset, timeOffset) * height;
		vertex(x, y);

		// update y offset for each part of the wave
		yOffset += yIncrement;
	}

	// draw bottom corners to shape and close
	vertex(width, height);
	vertex(0, height);  
	endShape(CLOSE);

	// update time position in the Perlin
	// noise each frame 
	timeOffset += timeIncrement;
}

