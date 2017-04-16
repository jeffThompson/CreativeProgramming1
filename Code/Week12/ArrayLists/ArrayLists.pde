
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
int numRabbits = 5;

// an ArrayList of Rabbit objects (starts out empty)
ArrayList<Rabbit> rabbits = new ArrayList<Rabbit>();


void setup() {
  size(800, 800);

  // create a bunch of rabbits
  for (int i=0; i<numRabbits; i++) {
    Rabbit r = new Rabbit(random(width), random(height));
    rabbits.add(r);
  }
}


void draw() {
  background(15,190,25);
  
  // each frame, go through all rabbits
  // draw and update its position
  for (Rabbit r : rabbits) {
    r.display();
    r.update();
  }
  
  // randomly create a new rabbit in the center
  if (random(1) < 0.01) {
    Rabbit r = new Rabbit(width/2, height/2);
    rabbits.add(r);
  }
}


class Rabbit {
  float x, y;            // x/y position
  float speedX, speedY;  // speed of motion
  float direction = 1;   // 1 = facing right, -1 = left
  PImage body;           // image of the bunny
  
  // initial position passed as an argument
  Rabbit (float _x, float _y) {
    
    // set x/y position
    x = _x;
    y = _y;
    
    // create random speed, use to set direction
    speedX = random(-6,6);
    if (speedX < 0) direction = -1;
    speedY = random(-3,3);
    
    // load image
    body = loadImage("Rabbit.png");
  }
  
  // draw the bunny
  void display() {
    pushMatrix();
    translate(x, y);
    scale(direction, 1);  // flip depending on which direction it's moving
    imageMode(CENTER);
    image(body, 0,0);
    popMatrix();
  }
  
  // make them run!
  void update() {
    x += speedX;
    if (x < 0 || x > width) {    // if past the edge
      speedX *= -1;              // reverse speed
      direction *= -1;           // and direction
    }
    
    y += speedY;                 // same for y direction too!
    if (y < 0 || y > height) {
      speedY *= -1;
    }
  }
}
    
    
    
    
    
    
    