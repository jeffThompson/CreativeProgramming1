
/*
PREVIOUS MOUSE POSITION
Jeff Thompson | 2017/20 | jeffreythompson.org

Not only does p5.js keep track of our current mouse
position, it also records the previous mouse coordinates
too! This is useful if, like this example, we want to
draw lines using the mouse.

Bonus: we've also added a semi-transparent background,
which leaves ghosted versions of the previous frames
visible! This creates an effect similar to video feedback:
https://en.wikipedia.org/wiki/Video_feedback

*/


function setup() {
  createCanvas(windowWidth, windowHeight);
  noCursor();
}


function draw() {
  // alpha in the background!
  // try changing this value and see how the result changes
  background(255, 30);

  // like mouseX/Y, we can get the previous mouse
  // position using pmouseX/Y
  stroke(0);
  line(mouseX,mouseY, pmouseX,pmouseY); 

  // we can also calculate the speed our cursor is
  // moving by figuring out the distance traveled
  // by the mouse – we can then use map() to change
  // the diameter of our cursor!
  let speed = dist(mouseX,mouseY, pmouseX,pmouseY);
  let dia = map(speed, 0,100, 4,100);
  fill(0, 100);
  noStroke();
  circle(mouseX,mouseY, dia); 
}

