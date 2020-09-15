
/*
PUSH/POP MATRIX
Jeff Thompson | 2016/20 | jeffreythompson.org

If we want to draw a complex set of shapes, it can quickly
get messy trying to keep track of all those numbers. Working
relative to an X/Y position helps, but is still hard to read.
If we want to add more complex changes like rotation, it
gets nearly impossible.

But! Using "matrix transformations," we can let p5.js do the
math for us – nice! These temporarily change our frame of
reference, similar to moving or rotating the sheet of paper
you're drawing on.

COMMANDS BELOW:
push()      go into "temporary mode"
pop()     reset all transformations done after push()
translate()   move the origin (0,0) point
rotate()    rotate the canvas
scale()     make things bigger/smaller or mirror

CHALLENGES:
1. Can you create your own complex shape relative to the
   origin and draw it in several locations?
2. Can you draw a bunch of your shape across the screen using
   a for-loop? Within that loop, can you change the angle
   of the shape as it goes across the screen? (Hint: use
   division or the map() command)

*/


function setup() {
  createCanvas(400, 400);
}


function draw() {
  background(50);
  
  stroke(255);
  strokeWeight(4);
  strokeCap(ROUND);

  // let's say we want to draw an arrow
  // using the "old" way you can see how messy
  // the code gets
  line(200,150, 200,250);    // arrow body
    line(200,150, 180,170);    // left arrow head
    line(200,150, 220,170);    // right arrow head

    // if we wanted to change the position of the
    // arrow, we'd have to update all the code :(

    // (we'll see next time how to make a custom
    // "function" that would make this easier, but
    // it will still be hard if we want to rotate
    // the arrow)

    // much better: use push/pop() and translate() to
    // temporarily move the origin point and draw
    // everything relative to (0,0) instead!
    push();         // go into "temporary" mode
    translate(100,200);   // move origin to (100,100)
    line(0,-50, 0,50);
    line(0,-50, -20,-30);
    line(0,-50, 20,-30);
    pop();          // reset origin back to (0,0)

    // this is much easier to read and, if we want to
    // draw more arrows, we can just copy/paste and 
    // change translate() to position it!

    // bonus: we can also rotate the arrow
    // (angles are in a unit called "radians" which go
    // from 0 to TWO_PI – this takes some getting used
    // to but we can also convert angles from degrees 
    // using the radians() function)
    let angle = radians(45);
    push();
    translate(300,200);
    rotate(angle);
    line(0,-50, 0,50);
    line(0,-50, -20,-30);
    line(0,-50, 20,-30);
    pop();

    // why do we translate() first, then rotate()?
    // try switching the commands and see what happens
}

