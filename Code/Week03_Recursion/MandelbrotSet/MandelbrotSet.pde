
/*
MANDELBROT SET
Jeff Thompson | 2017 | jeffreythompson.org
 
A different kind of fractal than the recursive ones
we've looked at so far, the Mandelbrot set was "defined
and drawn" by Peter Brooks and Peter Matelski in 1978
and named as a tribute to mathematician Benoit Mandelbrot.

We won't get into the details of the math involved in
computing the set (because we can investigate it as a
visual system to be hacked and explored), but the fractal
we see is essentially a visualization of a set of complex
numbers C defined by the function z = z^2 + C

Lots more info here:
https://en.wikipedia.org/wiki/Mandelbrot_set
http://mathworld.wolfram.com/MandelbrotSet.html
 
For a really insane version of this, see the 3D
"Mandelbub" fractal:
http://www.skytopia.com/project/fractal/mandelbulb.html
 
Based on code by Daniel Shiffman from his excellent
"Nature of Code" book.

CHALLENGES:
1. Try playing with the zoom, maxIterations, and infinity
   values and see how they change the resulting fractal.
   You could also try some of the other variables, too.
2. Can you change the colorizing algorithms below to make
   more distinct banding or psychedelic colors? Hint: try
   using modulus on "n" to change colors.
3. Mega challenge: can you implement some of the changes
   shown in the Wikipedia article above to make variations
   on the fractal?
 
*/


float zoom =        3;       // zoom into the fractal space
int maxIterations = 100;     // how many steps to run before quitting
float infinity =    4;       // approximate "infinity" to end
                             // calculation – changes the detail
                             // in our fractal
                             
void setup() {
  size(600, 600);
  loadPixels();

  // variables for setting up the fractal –
  // you can try changing these, but the
  // settings below should be a good starting
  // point

  // calculate min/max values for x and y
  float xMin = -zoom/1.5;    // sets center position
  float yMin = -zoom/2;
  float xMax = xMin + zoom;  // sets width/height
  float yMax = yMin + zoom;

  // calculate increment for x and y
  float dx = (xMax - xMin) / width;
  float dy = (yMax - yMin) / height;

  // draw it!
  float y = yMin;
  for (int j=0; j<height; j++) {
    
    float x = xMin;
    for (int i=0; i<width; i++) {

      // iterate values until we reach the max
      // number of iterations or "infinity"
      float a = x;
      float b = y;
      int   n = 0;
      while (n < maxIterations) {
        
        // values for calculating the set
        // (for more info on this, see the links above)
        float aa = a * a;
        float bb = b * b;
        float twoAB = 2.0 * a * b;
        a = aa - bb + x;
        b = twoAB + y;
        
        // if we've reached infinity, end the while loop
        // since actual infinity would take forever, we 
        // approximate it instead :)
        if (dist(aa, bb, 0, 0) > infinity) {
          break;   // exit the while loop
        }
        
        // update iteration count
        n++;
      }

      // color each pixel based on how long it takes to get to infinity
      // if we never got there, set to black
      if (n == maxIterations) {
        pixels[j * width + i] = color(0);
      } 
      // otherwise, set color (could get really fancy here!)
      else {
        float norm = map(n, 0, maxIterations, 0, 1);  // set to range 0-1
        color c = color(sqrt(norm) * 255);            // sqrt gets us more pronounced banding
        pixels[j * width + i] = c;                    // ...and set pixel value
      }
      x += dx;  // update x position
    }
    y += dy;    // update y position
  }
  
  // all done, set new pixel values to the screen
  updatePixels();
}