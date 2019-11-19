
class Topping {
  float x, y;
  float angle;
  PImage img;
  
  Topping(float _x, float _y) {
    x = _x;
    y = _y;
    angle = random(0, TWO_PI);
    
    // pick a random topping image
    int whichImage = int(random(0,toppingImages.size()));
    img = loadImage(toppingImages.get(whichImage));
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    imageMode(CENTER);
    image(img, 0,0);
    popMatrix();
  }  
}
