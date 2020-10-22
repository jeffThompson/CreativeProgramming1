
/*
LINE WITH ARRAY OF POINTS
Jeff Thompson | 2017/20 | jeffreythompson.org

In the Previous Mouse Position example, we used an
alpha value in the background to leave trails behind 
a set of lines. But what if we don't want the background
to fade the drawing?

To do this, we'll store an array of the previous N points,
updating the list each frame with the current mouse
coordinates. We could create a two-dimensional array:

  let points = [
    [ 0, 0 ],
    [ 10, 10 ],
    ...
    [ 100, 100 ]
  ];

...but that gets a little cumbersome. Instead, we can
use p5.js' very helpful vector object, which stores x/y
points in a single variable!

CHALLENGES:
1. What happens when you change the number of points
   in the line?
2. Can you add shapes along the line? Could you vary
   their size, color, etc as the line is drawn? 

*/

let numPoints = 20;   // how many points to keep?
let points = [];      // list of points


function setup() {
  createCanvas(600, 600);

  // since our 'points' array is currently empty,
  // we need to initialize it will something – in this
  // case, we start all points in the center of the
  // screen
  for (let i=0; i<numPoints; i++) {

    // first, create a vector with x/y coords
    let point = createVector(width/2, height/2);
    
    // the push (add) it to the array!
    points.push(point);
  }
}


function draw() {
  background(50);

  // if the mouse has moved, remove the oldest point
  // from the list of points and add the current mouse
  // position
  if (mouseX !== pmouseX && mouseY !== pmouseY) {

    // remove the oldest element using shift()
    points.shift();

    // then add the current mouse position
    let point = createVector(mouseX, mouseY);
    points.push(point);
  }

  // draw a line using the points!
  stroke(255);
  strokeWeight(5);
  strokeJoin(ROUND);
  noFill();
  beginShape();
  for (let i=0; i<points.length; i++) {
    let pt = points[i];
    curveVertex(pt.x, pt.y);
  }
  endShape();

  // a fancier version which changes color along the line
  // using the position in the list of points and lerpColor()
  // let c1 = color('rgb(255,150,0)');
  // let c2 = color('rgb(0,150,255)');
  // for (let i=1; i<points.length; i++) {
  //   let howFar = map(i, 1,points.length, 0,1);
  //   let c = lerpColor(c1, c2, howFar);
  //   stroke(c);
  //   strokeWeight(5);
  //   noFill();

  //   let prev = points[i-1];
  //   let curr = points[i];
  //   line(prev.x, prev.y, curr.x, curr.y);
  // }
}

