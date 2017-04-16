
class Particle {
  PVector pos;                // position onscreen
  PVector velocity, accel;    // variables for movement
  float lifespan = 255;       // when this reaches 0, it's dead
  
  Particle(PVector _pos) {
    pos = _pos.copy();                // passed from System
    accel = new PVector(0, 0.05);     // speed moving down
    
    // direction of movement (either left or right, always down)
    velocity = new PVector(random(-1,1), random(-2,0));
  }
  
  // update position of the particle
  void update() {
    velocity.add(accel);  // get faster every frame
    pos.add(velocity);    // add movement to position
    lifespan -= 1;        // decrease lifespan :(
  }
  
  // draw me!
  void display() {
    noStroke();
    fill(255, lifespan);
    ellipse(pos.x, pos.y, 8,8);
  }
  
  // deterimine if the particle is dead – if so, 
  // it gets removed from the system
  boolean isDead() {
    if (lifespan < 0 || pos.y > height) {
      return true;
    }
    else {
      return false;
    }
  }
}