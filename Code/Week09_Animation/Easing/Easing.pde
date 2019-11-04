
/*
EASING
Jeff Thompson | 2019 | jeffreythompson.org

Up to this point, all motions have been linear: the same
speed between one point and another. This can tend to
look unnatural, since real objects have mass and inertia.
But a variety of "easing" methods exist; ways to create
natural (and interesting) motion. To implement these in
Processing, we could build them ourselves but luckily
Manohar Vanga has gathered them all together into a really
easy-to-use package: an update to the built-in map() 
function!

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

There are lots of other libraries (see Ani, for example)
that work well too, but Vanga's code is super simple to
use and, because it's just a tab in our code, easy for us
to mod or extend if we want, too!

REQUIRES:
+ https://github.com/sighack/easing-functions

CHALLENGES:
+ Can you apply easing to something else? What about the
  alpha value of a shape, the number of sides of a polygon,
  or the size of an image?

*/


float speed = 3;    // speed of motion up/down
float y;            // position to change over time


void setup() {
  size(600,600);
  
  // start us in the center, pls
  y = height/2;
}


void draw() {
  background(50);
  
  // draw a circle moving at the standard
  // linear rate
  fill(255,150,0);
  noStroke();
  ellipse(width/4,y, 50,50);
  
  // create a new y value using the map2() function
  // looks a little weird, since we feed in the same
  // input and output range, but the key here is the
  // last two values – the first is the type of motion
  // (see above for a list) and the second if we want 
  // it applied to the start (ease in), end (ease out), 
  // or both 
  float newY = map2(y, 0,height, 0,height, SINUSOIDAL, BOTH);
  
  fill(0,150,255);
  ellipse(width-width/4,newY, 50,50);
  
  // but this can be used for all kinds of motion!
  // here we can also change the rotation of an object...
  float angle = map2(y, 0,height, 0,TWO_PI, QUADRATIC, BOTH);
  
  // ...and size!
  float dia = map2(y, 0,height, 50,150, QUARTIC, BOTH);
  
  // ...and color too!
  float pct =  map2(y, 0,height, 0,1, EXPONENTIAL, BOTH);
  color from = color(255,150,0);
  color to =   color(0,150,255);
  
  // then draw a rectangle in the center using 
  // all of our eased values
  translate(width/2,height/2);
  rotate(angle);
  rectMode(CENTER);
  fill( lerpColor(from, to, pct) );
  rect(0,0, dia,dia);
  
  // at the end of the draw() loop, update the y position
  // and bounce when it hits the edges
  y += speed;
  if (y < 25 || y > height-25) {
    speed *= -1;
  }
}
