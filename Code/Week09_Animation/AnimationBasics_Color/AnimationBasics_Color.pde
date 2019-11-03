
/*
ANIMATION BASICS: COLOR
Jeff Thompson | 2019 | jeffreythompson.org

Alongside position and rotation, we can also animate
the color of an object. We could have the color change
when triggered by something (like a mouse-press in
the interactivity project) or smoothly using lerpColor().

CHALLENGES:
+ Can you have the colors randomly changed every
  time the shape hits the edge? Or what about every
  five times it hits the edge (hint: use modulus %)

*/


float speed =  3;    // move this much each frame
float radius = 100;  // radius of the circle

int bumpCount = 0;   // how many times have we hit the edge?

// for a fancier version: rotate around the
// center of the shape too
float rotationSpeed = radians(3);

float x;
float angle = 0;


void setup() {
  size(600,600);
  
  // start in the center
  x = width/2;
}


void draw() {
  background(50);
  
  // each frame, use the x position, as well as the
  // min and max x position in map() to set the fill
  // color using lerpColor()
  color from = color(255,150,0);
  color to =   color(0,150,255);
  float pct =  map(x, radius,width-radius, 0,1);
  
  fill( lerpColor(from, to, pct) );
  noStroke();
  ellipse(x,height/2, radius*2,radius*2);
  
  // a fancier version, which uses a polygon instead
  // of a circle and rotates every frame
  //pushMatrix();
  //translate(x, height/2);
  //rotate(angle);
  //fill( lerpColor(from, to, pct) );
  //noStroke();
  //beginShape();
  //for (float a=0; a<TWO_PI; a+=radians(45)) {
  //
  //// what is this crazy thing?!
  //// these formulas let us compute the x/y position
  //// of a point given an angle and radius – super helpful
  //// for games as well as drawing complex shapes like
  //// polygons, since we can't use translate() or rotate()
  //// inside beginShape()
  //  float px = cos(a) * radius;
  //  float py = sin(a) * radius;
  //  vertex(px,py);
  //}
  //endShape(CLOSE);
  //popMatrix();
  
  // update the x position
  x += speed;
  
  // for the fancy version, also update
  // the angle of rotation
  angle += rotationSpeed;
  
  // bounce when shape hits the edges of the screen
  if (x + radius > width) {
    x = width - radius;
    speed *= -1;            // reverse direction of motion
    rotationSpeed *= -1;    // reverse rotation too
    bumpCount += 1;         // update edge-bump count
    println(bumpCount);
  }
  else if (x - radius < 0) {
    x = radius;
    speed *= -1;
    rotationSpeed *= -1;
    bumpCount += 1;
    println(bumpCount);
  }
}
  
  
  
  
  
  
  
  
  
