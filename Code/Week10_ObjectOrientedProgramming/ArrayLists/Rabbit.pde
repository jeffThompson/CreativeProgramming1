
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
    scale(direction, 1);   // flip depending on which direction it's moving
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
