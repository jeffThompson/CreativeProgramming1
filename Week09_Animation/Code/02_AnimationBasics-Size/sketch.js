
/*
ANIMATION BASICS: SIZE
Jeff Thompson | 2020 | jeffreythompson.org

Alongside position and rotation, we can also animate
any parameter of a shape! Here, we change the size
of a bouncing face, while also changing the pupil
and mouth sizes too.

CHALLENGES:
1. Can you add other features to the face that are
   responsive in size?
2. Can you create a second, independently-moving
   face? (Hint: you'll need separate variables for
   speed, position, and angle)

*/

let minRadius = 50;		// min/max size for the face
let maxRadius = 200;	// we'll use these with map()

let speedX = 5;			// try changing these and see
let speedY = 3;			// how the movement changes!

let x, y;				// position of the face onscreen
let angle = 0;			// and overall rotation


function setup() {
  createCanvas(windowWidth, windowHeight);

  // start in the center
  x = width/2;
  y = height/2;
}


function draw() {
  background(50);

  // calculate the radius of the face using the x position
  // and map(), which we pass to the drawFace function
  let radius = map(x, 0,width, minRadius,maxRadius);
  drawFace(x, y, angle, radius);
  
  // update position and angle
  x += speedX;
  y += speedY;
  angle -= radians(2);

  // if the face has hit the edges, reverse direction
  if (x < 0 || x > width) {
    speedX *= -1;		// reverse direction
  }
  if (y < 0 || y > height) {
    speedY *= -1;
  }
}


// we move this code to a function so it's easier to read
// and update – otherwise, all these drawing commands
// would become unweildly
function drawFace(x, y, angle, radius) {
  push();
  translate(x, y);
  rotate(angle);

  // overall face
  fill(0,150,255);
  noStroke();
  circle(0,0, radius*2);

  // eyes
  fill(255);
  circle(-radius/1.75,-radius/4, radius/2);
  circle(radius/1.75, -radius/4, radius/2);
  
  // pupils
  let pupilDia = map(radius, minRadius,maxRadius, radius/4,radius/16);
  fill(0);
  circle(-radius/1.75, -radius/4, pupilDia);
  circle(radius/1.75,  -radius/4, pupilDia);

  // mouth
  let mouthHeight = map(radius, minRadius,maxRadius, 2,radius/3);
  fill(0);
  ellipse(0,radius/5, radius/3,mouthHeight);

  pop();
}

