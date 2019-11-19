
class Pizza {  
  int pieDiameter =    700;  // overall pizza diameter
  int cheeseRadius =   260;  // diameter for toppings
  int numToppings =    40;   // how many toppings to add?
  
  float x, y;
  PImage pie;
  ArrayList<Topping> toppings;
  
  Pizza(float _x, float _y) {
    x = _x;
    y = _y;
    
    pie = loadImage("Pizza.png");
    
    // create randomized toppings at random
    // angle and position
    toppings = new ArrayList<Topping>();
    for (int i=0; i<numToppings; i++) {
      float angle = random(0,TWO_PI);
      float dist =  random(0,cheeseRadius);
      float tx =    x + cos(angle) * dist;
      float ty =    y + sin(angle) * dist;
      Topping t = new Topping(tx, ty);
      toppings.add(t);
    }    
  }
  
  
  // display the pizza! 
  void display() {
    
    // shadow
    fill(0,80);
    noStroke();
    circle(x+15,y+15, pieDiameter);
    
    // pizza image
    imageMode(CENTER);
    image(pie, x,y);
    
    // and the toppings
    for (Topping t : toppings) {
      t.display();
    }
  }
}
