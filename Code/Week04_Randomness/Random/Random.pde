
/*
RANDOM
Jeff Thompson | 2017 | jeffreythompson.org

We can use random numbers to do lots of creative things (in
fact, some artists and musicians have spent nearly their 
entire careers exploring randomness), but when paired with
the repetitive power of the computer, really interesting 
things can happen.

This is a very simple example, drawing 1000 random dots
of random color, but the sample principle can be used
to really great effect.

Every time you run the sketch, it will be slightly different,
so try it a bunch of times!

CHALLENGE:
1. What happens when you play with the size and transparency
   of the circles? How does that change the look of the sketch?
2. Can you modify the random color to be between two pre-
   chosen colors?
3. Can you move the random color generation to its own function?
   (Hint: it should return a "color" variable.)
4. Can you make this code change every time you press a key
   on the keyboard?

*/


void setup() {
  size(800, 800);
  background(0);
  
  // draw 1000 random dots of random color
  for (int i=0; i<1000; i++) {
    
    // create a random RGB color
    float r = random(0,255);      // arguments = min,max possible values
    float g = random(0,255);      // returns a float, so you may have
    float b = random(0,255);      // to cast it to an integer to use
    fill(r,g,b, 200);             // add some alpha too for depth
    noStroke();
    
    // draw in a random position, too
    // if only 1 argument given, random() assumes min = 0
    ellipse(random(width), random(height), 20,20);
  }
}