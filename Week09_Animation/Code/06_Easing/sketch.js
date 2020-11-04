
/*
EASING
Jeff Thompson | 2019/20 | jeffreythompson.org

Note! You'll need to change your index.html file and
include the easing.js file to make this work with your
code – see index.html for more info.

Up to this point, all motions have been linear: the same
speed between one point and another. This can tend to
look unnatural, since real objects have mass and inertia
they don't start and stop moving suddenly.

Luckily, a variety of "easing" methods exist. These are 
ways to create natural (and interesting) motion. To 
implement these in p5.js, we could build them ourselves 
but luckily Manohar Vanga has gathered them all together 
into a really easy-to-use package: an update to the built-
in map() function! (I've modified these to work with p5.js,
but Vanga really did all the work here.)

This lets us specify a number of different easing methods,
listed here from least to most exaggerated:
  
  LINEAR       the motion we've done before
  SINUSOIDAL   slightly slower at the ends, faster in the middle
  QUADRATIC    ...
  CUBIC        ...
  QUARTIC      ...
  QUINTIC      ...
  EXPONENTIAL  slowest at the ends, fastest in the middle

And a few others:
  
  CIRCULAR     gentle, a bit light SINUSOIDAL
  SQRT         fast at the ends, slow in the middle

Vanga's website has a great explanation and visualizations
of the different easing functions, which may be helpful
when selecting one:

  https://sighack.com/post/easing-functions-in-processing

See also the images in this week's "Images" folder.

There are lots of other libraries in Javascript that
do easing really well too, but Vanga's code is super 
simple to use and, because it's just a second Javascript
file imported into our code, it's easy for us to mod or 
extend it if we want, too!

CHALLENGES
1. Can you apply easing to another parameter of the circles? 
   What about the alpha value or its size?
2. Can you make the center square's animation happen at a
   different speed than the circles? Can you make it move
   up and down too? (Hint: you'll need separate y and 
   speed variables)

*/

let speed = 3;  // speed of motion
let y;          // y position


function setup() {
  createCanvas(windowWidth, windowHeight);

  // start both shapes in the center
  y = height/2;
}


function draw() {
  background(50);

  // draw a circle on the left, moving using the
  // basic linear motion we've used previously
  fill(255,150,0);
  noStroke();
  circle(width/4, y, 50);

  // to create motion with easing, we can use the same
  // y value as the linear version, but use our new
  // map2() function to convert it to another kind of
  // motion
  let easedY = map2(y, 0,height, 0,height, SINUSOIDAL, BOTH);

  // what are the arguments in this function?
  // the first five arguments are the same as the
  // original map() function:
  // input value:  the y position using linear motion
  // input range:  the min/max of its travel
  // output range: in this case, the same as the input range

  // but the last two arguments are where the magic
  // happens:
  // type of motion: see above for a list of options
  // start/end/both: where we want easing to be applied

  // draw the circle with easing on the right
  fill(0,150,255);
  circle(width-width/4, easedY, 50);
  
  // for both eased motion, we can just update the 
  // y position linearly, like we've done in the past
  // if it reaches either end of its travel, reverse
  y += speed;
  if (y < 25 || y > height-25) {
    speed *= -1;
  }

  // but wait, there's more!
  // we can apply easing to all kinds of parameters
  // here, we can use it to change the rotation of
  // an object...
  let angle = map2(y, 0,height, 0,TWO_PI, QUADRATIC, BOTH);

  // ...and size!
  let dia = map2(y, 0,height, 50,150, QUARTIC, BOTH);

  // ...and color too!
  let pct =  map2(y, 0,height, 0,1, EXPONENTIAL, BOTH);
  let from = color(255,150,0);
  let to =   color(0,150,255);

  // then draw a square in the center using
  // all of our eased values
  push();
  translate(width/2, height/2);
  rotate(angle);
  rectMode(CENTER);
  fill( lerpColor(from, to, pct) );
  square(0,0, dia);
}

