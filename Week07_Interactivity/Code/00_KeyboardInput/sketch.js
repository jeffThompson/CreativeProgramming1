
/*
KEYBOARD INPUT
Jeff Thompson | 2017/20 | jeffreythompson.org

Your computer's keyboard provides a simple way to
get input to your sketch. This can be helpful for
switching on/off parts of your code, typing onscreen,
moving objects with the arrow keys, etc. The downside,
which we'll see in the next demo, is that the keyboard 
only gives us binary on/off input rather than the 
fluid, expressive (but less accurate) input from the 
mouse.

SEE ALSO:
+  For more on ASCII: https://en.wikipedia.org/wiki/ASCII

CHALLENGES:
1. Can you make a cheat-sheet with all the keyCodes
   for future reference?
2. Can you have the square stop when it hits the edges
   of the screen?

*/

// values that we'll changed with keyboard input
// (see below for more info)
let x, y;
let c = 'hsl(180, 100%, 50%)';


function setup() {
  createCanvas(400, 400);

  // starting point for the square
  x = width/2;
  y = height/2;

  // since the noLoop() command runs the draw()
  // function once and then stops the program, if
  // we kept it here in setup() we wouldn't be
  // able to read any keyboard input!
}


function draw() {
  background(c);

  // draw a little square that we can move
  // using the arrow keys
  fill(255);
  noStroke();
  rectMode(CENTER);
  square(x,y, 50);  
}


// we can capture all keys pressed using the built-in
// keyPressed() function!
function keyPressed() {

  // what key has been pressed?
  // (note what happens when you press return or spacebar)
  console.log('key pressed:\t' + key);

  // under the hood, each key on your keyboard
  // maps numbers defined by the ASCII standard
  // which was developed in the 1960s for teletype 
  // printers – if we want to see the number assigned
  // for each key we can use the 'keyCode' variable
  console.log('key code:\t' + keyCode);

  // we can grab the control keys (arrow keys, return,
  // etc) with this keyCode value
  if (keyCode == LEFT_ARROW) {
    x -= 10;
  }
  else if (keyCode == RIGHT_ARROW) {
    x += 10;
  }
  if (keyCode == UP_ARROW) {
    y -= 10;
  }
  else if (keyCode == DOWN_ARROW) {
    y += 10;
  }

  // we can use the keyCode input for other things too!
  // here we map the ascii value (0–127) to change the
  // color of the background
  // this uses another color model: hue, saturation, lightness
  // (in this case, we just change the hue which goes from
  // 0–360º, keeping the saturation maxed out and 50%
  // brightness)
  let hue = int(map(keyCode, 0,127, 0,360));
  console.log(hue);
  c = 'hsl(' + hue + ', 100%, 50%)';
}

