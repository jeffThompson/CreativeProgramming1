
/*
PARTICLE SYSTEM
Jeff Thompson | 2017 | jeffreythompson.org

Particle systems a very cool application of Object-Oriented-
Programming and ArrayLists. We apply some very basic physics
to a lot of simple objects to create interesting, realistic
behavior. Particle systmes are used in special effects for
things like smoke, comet trails, and explosions.

Lots more on particle systems here:
https://en.wikipedia.org/wiki/Particle_system

And see also Daniel Shiffman's excellent chapter on them
in his book "Nature of Code":
http://natureofcode.com/book/chapter-4-particle-systems/

CHALLENGE:
1. Can you make the System have a unique color? Or individual
   particles?
2. Can you change the behavior of the System or Particle in an
   interesting way?

*/


// an ArrayList for the entire system – each system
// contains its own ArrayList of particles
ArrayList<System> everything = new ArrayList<System>();


void setup() {
  size(800,800);
  
  // nothing else here – click to create a system
}


void draw() {
  background(50);
  
  // each frame, go through the ArrayList of
  // systems, add a particle and run everything
  for (System s : everything) {
    s.addParticle();
    s.run();
  }
}


// pressing the mouse creates a new system
void mousePressed() {
  System s = new System(mouseX, mouseY);
  everything.add(s);
}