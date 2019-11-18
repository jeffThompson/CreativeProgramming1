
class Fungus {
  
  // values common to all Fungus objects
  float angleChangeAmt = radians(8);
  float speed =          1;
  
  float chanceSplit =    2;
  float splitAngle =     radians(16);
  
  // variables set when instantiated and/or
  // updated every frame
  float x, y, prevX, prevY;
  float angle;
  float distFromCenter;
  int age = 0;
  
  
  // default instantiation: just x/y coords
  // then set random angle
  Fungus(float _x, float _y) {
    x =     _x;
    y =     _y;
    prevX = x;
    prevY = y;
    angle = random(0, TWO_PI);
  }
  
  // a second version with an extra argument:
  // an initial angle instead of a random one
  // (used when the line splits in half)
  Fungus(float _x, float _y, float _angle) {
    x = _x;
    y = _y;
    angle = _angle;
  }
  
  
  void update() {
    
    // increase age of this tendril
    age += 1;
 
    // calculate the distance from the center of
    // the sketch using the Pythagorean theorem
    distFromCenter = sqrt(pow(width/2-x, 2) + pow(height/2-y, 2));
    
    // move in a random direction
    angle += random(-angleChangeAmt, angleChangeAmt);
    prevX = x;
    prevY = y;
    x += cos(angle) * speed;
    y += sin(angle) * speed;    
    
    // randomly split into two Fungus objects
    // new one will split off in one direction,
    // current splits in the opposite direction
    if (random(100) < chanceSplit) {
      Fungus f = new Fungus(x,y, angle+splitAngle);
      fungi.add(f);
      angle -= splitAngle;
    }
  }
  
  
  // not much here!
  // all the work is done above, leaving
  // the display function to really just be
  // doing drawing commands
  void display() {    
    stroke(255,245,235, 60);
    line(prevX,prevY, x,y);
  }
}
