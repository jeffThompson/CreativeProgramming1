
/*
LIST OF OBJECTS
Jeff Thompson | 2017/20 | jeffreythompson.org

One of the benefits of OOP is that we can define a template
for an object, then make multiple instances of it.

Imagine a code-generated rabbit: using the methods we've
covered before now, each rabbit would need an x/y position,
direction of motion, etc. You'd end up with a mess of variables
like rabbitX1, rabbitX2, etc.

With classes, this gets a little simpler: we'd have a bunch
of instances of the Rabbit class. But if we wanted to have
dozens or hundreds of rabbits, this would face a similar
problem. We'd have rabbit1, rabbit2, etc and, to display them,
we'd have to call display() on each one – too messy!

But, we can create lists of objects too! We can add them, remove
them, and use a for-loop to iterate through the list to
update, display, and otherwise work with each instance.

Here, we create an array of Rabbit objects and randomly
spawn new rabbits to join their friends.

CHALLENGES:
1. Can you give the rabbits a little shadow beneath them?
2. Can you make the rabbits grow in size the older they get?
   Hint: add a variable for their length to the class.

*/

// how many rabbits to start?
let numRabbits = 1;

// an empty array to store our Rabbit objects
let rabbits = [];

// and a rabbit image to display onscreen
let body;

function preload() {
  body = loadImage('assets/Rabbit.png');
}


function setup() {
  createCanvas(windowWidth, windowHeight);

  // create new rabbits (how many is specified by the)
  // 'numRabbits' variable above
  for (let i=0; i<numRabbits; i++) {

    // create a new Rabbit in a random location
    // (we pass the x/y values to the constructor as arguments)
    let x = random(width);
    let y = random(height);
    let r = new Rabbit(x, y);

    // then add the rabbit to the list
    rabbits.push(r);
  }
}


function draw() {
  background(15, 190, 25);

  // each frame, go through all the rabbits:
  // update their positions and draw them onscreen
  for (let i=0; i<rabbits.length; i++) {
    let r = rabbits[i];
    r.update();
    r.display();
  }

  // randomly create a new rabbit in the center
  // every so often...
  if (random(100) < 1) {
    let r = new Rabbit(width/2, height/2);
    rabbits.push(r);
  }
}


class Rabbit {
  constructor(x, y) {
    
    // set the position to the x/y arguments
    // that were passed in
    this.x = x;
    this.y = y;

    // create random speed
    this.speedX = random(-6,6);
    this.speedY = random(-3,3);

    // use the speed to figure out which way
    // the rabbit is facing too
    if (this.speedX < 0) {
      this.direction = -1;
    }
    else {
      this.direction = 1;
    }
  }

  // make them run!
  // (if they hit the edges, reverse direction)
  update() {
    this.x += this.speedX;
    if (this.x < 0 || this.x > width) {
      this.speedX *= -1;
      this.direction *= -1;
    }
    this.y += this.speedY;
    if (this.y < 0 || this.y > height) {
      this.speedY *= -1;
    }
  }

  // draw the bunny
  display() {
    push();
    translate(this.x, this.y);
    scale(this.direction, 1); // flip, depending on which
    imageMode(CENTER);      // it's moving
    image(body, 0,0);
    pop();
  }
}

