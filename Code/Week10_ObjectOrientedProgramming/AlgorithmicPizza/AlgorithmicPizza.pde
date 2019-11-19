
/*
ALGORITHMIC PIZZA
Jeff Thompson (and you) | 2019 | jeffreythompson.org

Let's make some pizza! 

Pizza image via:
https://bestmargheritapizza.com/index.php/product/tomato-cheese/

*/


Pizza pizza;                      // pizza, please!
PImage tablecloth;                // tablecloth image
ArrayList<String> toppingImages;  // list of toppings files


void setup() {
  size(800,800);
  
  // load the tablecloth image
  tablecloth = loadImage("Tablecloth.png");
  
  // load a list of all the images in the "toppings"
  // folder (see function below for more info)
  toppingImages = getListOfToppings();
  println("Available toppings:");
  printArray(toppingImages);
  
  // create the pizza!
  // all details are handled inside the class' constructor
  pizza = new Pizza(width/2, height/2);
}


void draw() {
  
  // draw the tablecloth image
  imageMode(CENTER);
  image(tablecloth, width/2,height/2);
  
  // and the pizza!
  pizza.display();
}


// function that lists all png files in a folder
// keeps our sketch from trying to load non-images,
// hidden files, etc
ArrayList<String> getListOfToppings() {
  ArrayList<String> toppings = new ArrayList<String>();
  File dir = new File(sketchPath("toppings"));
  File[] files = dir.listFiles();
  for (File f : files) {
    if (f.getName().endsWith(".png")) {
      toppings.add("toppings/" + f.getName());
    }
  }
  return toppings;
}
