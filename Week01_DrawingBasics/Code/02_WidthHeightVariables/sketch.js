
/*
WIDTH/HEIGHT VARIABLES
Jeff Thompson | 2020 | jeffreythompson.org

Drawing shapes with set pixel values is ok, but if you 
want to your sketch to be resizable,* it will be much 
better if everything your drawing commands aren't based
on fixed values (also called "hard-coded") but instead
are relative to the width/height of the <canvas>.

We can do that with a little math and the built-in "width" 
and "height" variables, set by the createCanvas() command!

* Why might you want to resize your sketch? For projects
that live on the web, everyone's screens are different
sizes and you want your work to look great on all of
them. This is part of a process called "responsive
design." Another common reason would be showing your
project on a computer monitor or projector in a gallery.
Like phones, monitors and projectors have different
resolutions; a sketch that auto-sizes to fit will look
much better and be easier to install!

CHALLENGES
+ Can you re-write the code from the DrawingCommands example
  to be all relative to width/height?
+ What other cool ways can you think of to make your sketch
  elements change size (or not change!) as the browser
  window is resized?

*/


function setup() {

    // we can specify the <canvas> be a set size, but
    // we can also make it fill the window!
    createCanvas(windowWidth, windowHeight);

    // even cooler: by adding a little bit of code at the
    // very bottom, you can resize the window and the
    // sketch will re-render at that new size!
}


function draw() {
    background(100);
  
    // a non-dynamic rectangle set to top-right
    // corner using exact pixel location and dimensions
    fill(255,150,0);
    noStroke();
    rect(400,0, 200,200);

    // but using width/height, we can easily draw a circle 
    // in the center that changes based on the <canvas> size!
    fill(255);
    ellipse(width/2,height/2, 300,300);

    // the values of "width" and "height" are automatically
    // set when we use createCanvas() or resizeCanvas()

    // we can also use math to dynamically set shapes
    stroke(0);
    strokeWeight(5);
    line(width/2,0, width/2,height);        // centered vertically
    line(0,height/2, width,height/2);       // and horizontally

    // lastly, here's another square, set in the bottom-right
    // corner, that's always 1/4 the size of the screen
    fill(0,150,255);
    noStroke();
    rect(width-width/4,height-height/4, width/4,height/4);
}


// this extra code gets run every time the browser window
// is resized – in this case, we use it to resize the canvas
// to fill the window
function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}

