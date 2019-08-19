
/*
RANDOM SEED
Jeff Thompson | 2017 | jeffreythompson.org

Software-based random number generators are actually 
"pseudo-random" – they have varying levels of randomness,
but being made by a deterministic algorithm, they aren't
generating "true" random numbers. In Java (and Processing)
the algorithm is called Linear Congruential Generator. You
can read more about it here:

https://en.wikipedia.org/wiki/Linear_congruential_generator

One feature of most of these algorithms is a "seed" number,
one that kicks off the chain of random numbers. Normally, the
seed is set to the current time in milliseconds, providing
the appearance of random values every time the program runs.
But we can also set the value manually using the randomSeed()
command. We might want to do that to get the same results
every time (for simulation or scientific work, or for rendering
out something like a video with pre-selected results), or
so that the randomness can be interactive, like below.

*/

void setup() {
  size(800,800);
}

void draw() {
  background(100);
  
  // if we set the random seed every frame, it 
  // will always generate the same random numbers
  // (and the circles will stay in one place, instead
  // of bouncing all over the place)
  randomSeed(0);
  
  // why would we want to use this? one reason can
  // be to make a random system that's interactive
  // try un-commenting this line and see what happens
  // randomSeed(mouseX);
  
  // draw 30 randomly-placed circles
  for (int i=0; i<30; i++) {
    fill(255);
    noStroke();
    float x = random(0, width);
    float y = random(0, height);
    ellipse(x,y, 50,50);
  }
}