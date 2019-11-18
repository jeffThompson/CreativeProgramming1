
/*
RANDOM GROWTH
Jeff Thompson | 2019 | jeffreythompson.org

The simulating of natural systems is a perfect fit
for object-oriented programming. Populations of
animals interacting with each other, terrain of
different types, etc. In this example, a simplified
fungus starts in the center of the screen, randomly
growing out. Periodically it splits in two. After 
it reaches a certain age, the branch dies.

Use 'p' key to pause/continue the growth, or any
other key to restart the process.

A more rigorous scientific simulation would involve
tons of research into fungal growth, etc, but even
this version, more "inspired by" natural phenomena
than simulating it, produces exciting and varied
visual output.

For way more on this topic, see Daniel Shiffman's
excellent online book "Nature of Code".

CHALLENGES:
+ Can you make the sketch save an image every time
  it resets? Can you make the filenames a unique
  timestamp so they don't overwrite every time?
+ Can you make the tendrils change color as they
  get older? (Hint: use the "age" variable and map())
+ Could you add a random "bloom" that periodically
  gets added to the tendril?

*/

int maxAge = 100;           // tendrils older than this will
                            // be removed – try changing!

ArrayList<Fungus> fungi;    // list of objects
boolean pause = false;      // use 'p' to pause/un-pause


void setup() {
  size(800,800);
  
  // draw the background in setup(), since after
  // that every frame draws on top of the previous
  background(120,110,100);
  
  // create a bunch of Fungus objects growing
  // from the center
  fungi = new ArrayList<Fungus>();
  for (int i=0; i<3; i++) {
    Fungus f = new Fungus(width/2,height/2);
    fungi.add(f);
  }
}


void draw() {
  
  // if not paused (ie running)...
  if (!pause) {
    
    // go through all Fungus objects
    // must be in reverse so we can delete
    // objects as we go (otherwise, we might delete
    // one, then try to draw it, causing an error!)
    for (int i=fungi.size()-1; i>=0; i-=1) {
      
      // get the current object
      Fungus f = fungi.get(i);
      
      // update and, if it has reached a
      // certain radius or is too old, remove it
      f.update();
      if (f.distFromCenter >= width/2-50 || f.age > maxAge) {
        fungi.remove(i);
      }
      
      // draw it onscreen
      f.display();
    }
    
    // if the simulation starts to bog down,
    // start over automatically
    if (frameRate < 30) {
      setup();
    }
  }
}
