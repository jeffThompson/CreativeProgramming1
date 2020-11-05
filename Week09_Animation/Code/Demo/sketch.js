
let showIntro = true;

let dia =    50;
let speedX = 5;
let speedY = -3;
let x,y;

let pop;

function preload() {
	soundFormats('wav');
	pop = loadSound('assets/pop.wav');
}


function setup() {
	createCanvas(windowWidth, windowHeight);
	
	x = width/2;
	y = height/2;
}


function draw() {
	background(50);

	if (!showIntro) {

		let panning = map(x, 0,width, -1,1);
		pop.pan(panning);

		fill(255);
		noStroke();
		circle(x,y, dia);
		x += speedX;
		y += speedY; 

		if (x < dia/2 || x > width-dia/2) {
			pop.play();
			speedX *= -1;
		}
		if (y < dia/2 || y > height-dia/2) {
			pop.play();
			speedY *= -1;
		}
	}
}

function mousePressed() {
	showIntro = false;
}
















