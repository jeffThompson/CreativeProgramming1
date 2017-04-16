
// class for a particle system, which contains
// an its own ArrayList of particles
class System {
  ArrayList<Particle> particles = new ArrayList<Particle>();
  PVector origin;
  
  System(float x, float y) {
    origin = new PVector(x, y);
  }
  
  // function to add a new particle at the origin
  // of the system
  void addParticle() {
    particles.add( new Particle(origin) );
  }
  
  // run command cleans up everything by putting it in the class
  void run() {
    
    // go backward through the ArrayList so we can remove
    // items (otherwise we get an error)
    for (int i=particles.size()-1; i>=0; i-=1) {
      Particle p = particles.get(i);          // get each particle object
      p.update();                             // update it too!
      p.display();
      if (p.isDead()) particles.remove(i);    // if dead, remove it from the system
    }
  }
}