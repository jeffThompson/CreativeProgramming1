
/*
MOUSE INPUT
Jeff Thompson | 2017/20 | jeffreythompson.org

While the keyboard can provide varied but singular input,
the mouse is much more expressive. There are lots of things 
we could do with mouse input, but this basic example uses 
the built-in mouseX/Y variables to draw a circle onscreen 
that changes color and size.

For more info, see:
https://p5js.org/reference/#group-Events

CHALLENGES:
1. Can you use push/popMatrix() to draw complex shapes at 
   the mouse's coordinates? Can you make them rotate around
   the mouse when clicked?
2. Like our code to change the cursor's diameter, can you
   use the mouse position to change the background color?
   (Hint: use map() and lerpColor() to have the colors change
   smoothly)

*/

let cursorColor = 'rgb(0,0,0)';
let cursorDia =   60;


function setup() {
  createCanvas(windowWidth, windowHeight);

  noCursor();   // turns off the pointer, letting
                // us create a custom one!
                // (see also the cursor() command for
                // other options)
}


function draw() {

  // we'll add this background command later :)
  // background(255);

  // getting the mouse coordinates is super easy!
  // p5.js offers us the built-in mouseX and mouseY
  fill(cursorColor);
  noStroke();
  circle(mouseX, mouseY, cursorDia);
  
    // notice that our mouse leaves a trail of circles
    // across the screen?
    // this may be what you want, but we can fix this by
    // uncommenting the background command above

    // bonus:
    // change the circle's size based on position too!
    cursorDia = map(mouseX, 0,width, 10,200);
}


// we can also capture a bunch of different mouse/touch
// events: click, drag, released, moved, double-click,
// and even the mousewheel!
// these can be useful for turning on/off settings in
// your code and for other forms of interaction

// if the mouse is being clicked, change the cursor to blue
function mousePressed() {
  console.log('click!');
  cursorColor = 'rgb(0,150,255)';
}

// when the mouse is released, change the cursor back to black
function mouseReleased() {
  console.log('released!');
  cursorColor = 'rgb(0,0,0)';
  cursorDia =   60;
}

// when the mouse is dragged, change the color to orange
function mouseDragged() {
  console.log('- dragged...');
  cursorColor = 'rgb(255,150,0)';
}


// resize the canvas if we adjust the window's size
function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}

