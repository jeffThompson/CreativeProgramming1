
/*
ARRAY LISTS
Jeff Thompson | 2017 | jeffreythompson.org

One instance of a class is not so helpful, but if we wanted
lots of them, keeping track of separate variables would be
a disaster. Luckily, there's the ArrayList: kind of like a
regular array, ArrayLists have the added benefit of being
really flexible. We can add and remove elements from them
easily, so they're perfect for interactive projects.

Here, we create an ArrayList of Rabbit objects, and randomly
spawn new rabbits to join their friends.

CHALLENGES:
+ Can you give the rabbits a little shadow beneath them?
+ Can you make the rabbits grow in size the older they get?
  Hint: add a variable for their length to the class.

*/


// how many rabbits to start?
int numRabbits = 1;

// an ArrayList of Rabbit objects (starts out empty)
ArrayList<Rabbit> rabbits = new ArrayList<Rabbit>();


void setup() {
  size(800, 800);

  // create a bunch of new rabbits
  for (int i=0; i<numRabbits; i++) {
    
    // pass the class' arguments: initial x and y position
    Rabbit r = new Rabbit(random(width), random(height));
    
    // ...and add the new rabbit to the ArrayList
    rabbits.add(r);
  }
}


void draw() {
  background(15,190,25);
  
  // each frame, go through all rabbits
  // draw and update their positions
  for (Rabbit r : rabbits) {
    r.display();
    r.update();
  }
  
  // randomly create a new rabbit in the center
  // every so often
  if (random(1) < 0.01) {
    Rabbit r = new Rabbit(width/2, height/2);
    rabbits.add(r);
  }
}
