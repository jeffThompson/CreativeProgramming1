
/*
DRAWING BASICS
Jeff Thompson | 2020 | jeffreythompson.org

While P5JS includes lots of fancy ways to draw shapes, 
modify images, and make cool artworks, the basics are 
very simple: color, outline, and shape.

There are two main, required structures for any P5JS
program...

SETUP
This runs once when the sketch is first loaded. We use
setup() for changing the size of our sketch, loading
images, setting parameters, etc.

DRAW
Once setup() is finished, P5JS runs the draw() section
over and over in a loop. We can use it to draw shapes and
images, handle interactive events like mouse clicks, etc.
In the first few projects, the draw() section will be
static (it won't change from frame-to-frame) but later in
the semester we'll add animation and interactivity!

CHALLENGES
+ Can you try drawing something recognizable using the basic
  shape commands? Try something simplified like a geometric face
+ Using the drawing commands in clever ways is what a huge part
  of creative programming. Can you draw a grayscale gradient across 
  the screen? (Hint: use multiple rectangles with changing fill
  colors)

*/


function setup() {
    // we'll almost always use the createCanvas() command first
    // it sets the size of our <canvas> in pixels
    // try changing and see what happens!
    createCanvas(600,600);
}


function draw() {

    // colors are (by default) set to red, green, blue (RGB)
    // these values in in a range of (0–255) and with that we 
    // can create any color you might need!
    // the background() command fills the entire <canvas> with
    // a color – try changing the RGB values below, refresh your
    // sketch, and see what happens!
    background(0,150,255);

    // mixing in RGB can take some getting used to – try
    // an interactive color selector like Adobe Color:
    // https://color.adobe.com

    // we can set the stroke (outline) color
    stroke(0,0,0);

    // lines are probably the simplest shape we can draw
    // they require four values, called "arguments":
    // start X position (in pixels)
    // start Y position
    // end X position
    // end Y position
    line(0,0, 600,600);
    line(600,0, 0,600);

    // thinking in terms of pixel coordinates takes some getting used
    // to (and lots of practice) but becomes way easier over time!

    // we can set the inside colors for shapes using fill()
    // (note that fill/stroke stay set until you explicitly change
    // them later in your code)
    fill(255,150,0);

    // ellipses, including circles, have four arguments:
    // center X position
    // center Y position
    // width
    // height
    ellipse(300,300, 100,100);

    // we can also turn off fill and/or stroke
    noFill();
    // noStroke();      // try commenting these out to switch

    // rectangles are drawn with four arguments too but are
    // slightly different than ellipses:
    // upper-left X position
    // upper-left Y position
    // width
    // height
    rect(200,200, 200,200);

    // colors can also include a 4th value, alpha, which
    // set transparency (0 = fully transparent, 255 = fully opaque)
    fill(255,255,255, 150);

    // other shape types include triangles, which have six
    // arguments: a set of three X/Y coordinates
    triangle(200,200, 400,200, 300,100);    // top
    triangle(200,400, 400,400, 300,500);    // bottom

    fill(0, 150);
    triangle(400,200, 400,400, 500,300);    // right
    triangle(200,200, 200,400, 100,300);    // left

    // the thickness of stroke can be set (default = 1px)
    strokeWeight(5);
    stroke(255,255,0);
    line(300,0, 300,600);
    line(0,300, 600,300);

    // wait, what happened?!?!
    // when things don't go the way you hoped, it can be really
    // frustrating but it's useful to think of this as a way to
    // learn more about programming!
    // notice that strokeWeight() changed the thickness of ALL
    // shapes in our sketch – that's because the draw() section
    // repeats over and over (which later we'll use for animation
    // and interactivity)
    // since P5JS keeps any changes you make to fill() and stroke()
    // until you tell it otherwise, it changes the weight to 5px and
    // then, when the draw() section runs again, that's the thickness
    // it's set to!
    // if we wanted other shapes to have 1px stroke, we could either
    // reset it here or explicitly state strokeWeight(1) at the top

    // lastly, we can draw more complex shapes with begin/endShape()
    // in between these commands we can specify as many points as
    // we need using vertex()
    // NOTE! our points do need to go around the shape in order,
    // otherwise you'll get weird hourglass-like, self-intersecting,
    // glitchy shapes :)
    noFill();
    stroke(255);
    strokeWeight(1);    // reset from the thicker stroke above
    beginShape();
    vertex(50,50);
    vertex(300,100);
    vertex(550,50);
    vertex(500,300);
    vertex(550,550);
    vertex(300,500);
    vertex(50,550);
    vertex(100,300);
    endShape(CLOSE);    // stop the shape and draw a line from the
                        // the last point to the first

    // for more info on a command, go to Help > Reference in
    // the P5JS online editor or go to:
    // https://p5js.org/reference
}

