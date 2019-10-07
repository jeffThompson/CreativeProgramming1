
/*
COLLAGE EXAMPLE
Jeff Thompson | 2019 | jeffreythompson.org

One example about how you might think about this
collage project. By means not the only option!

*/


int tileSize =  40;    // size of the original image to cut out


void setup() {
  size(800,800);
  background(255);
  
  // load the image (you could load several different
  // images in your sketch!)
  PImage img = loadImage("Test.jpg");
  
  // variables for drawing the spiral
  float radius = 10;    // initial radius
  float angle =  0;     // initial angle
  
  // run until the radius reaches the edge of the
  // sketch, with 50px margin
  while (radius < width/2-50) {
    
    // random x/y coordinates to grab from the source image
    int portionX = int(random(0, img.width-tileSize));
    int portionY = int(random(0, img.height-tileSize));
    
    // use get() to grab that section
    PImage portion = img.get(portionX,portionY, tileSize,tileSize);
    
    // calculate x/y coordates from the angle and radius
    // not as scary as it looks!
    // cos(angle) and sin(angle) gives you a value between -1 and 1
    // multiply by the radius to get the distance from center    
    float x = width/2 +  (cos(angle) * radius);
    float y = height/2 + (sin(angle) * radius);
    
    // move the origin to x/y, rotate along the spiral
    // and draw the image portion there
    pushMatrix();
    translate(x,y);
    rotate(angle);
    image(portion, 0,0);
    popMatrix();
    
    // update the angle and radius so the spiral
    // expands outward as the while loop continues
    angle += radians(6);
    radius += 0.5;
  }
}
