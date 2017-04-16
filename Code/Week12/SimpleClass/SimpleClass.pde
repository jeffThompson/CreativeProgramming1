
/*
SIMPLE CLASS
Jeff Thompson | 2017 | jeffreythompson.org

While the way we've been coding most of our examples up until
now, using loops and functions, has worked well, for more complex
projects we'll need a better system. One very common paradigm
is called "object-oriented programming" (or OOP, a term coined by
Alan Kay, famous for his work on early GUI systems), which lets us
create our own data types, and add features and actions to them.

In Java, we do this by creating a "class". We've actually already
used classes before – while an int is a primitive data type,
Strings are classes, and include lots of extras like the toUpperCase()
method.

For our first example, we'll create a really simple class for
a square.

Lots more about OOP here:
+ https://en.wikipedia.org/wiki/Object-oriented_programming
+ https://softwareengineering.stackexchange.com/questions/142327/
  what-did-they-call-object-oriented-programming-before-alan-kay-
  invented-the-term
+ http://www2.latech.edu/~box/ase/tp/Per%20Kjeldaas%20Research%20Paper%20.pdf

CHALLENGES
+ Here we have only one instance of the Square class – can you create
  another and see what happens?

*/

Square s;    // a Square object called "s"


void setup() {
  size(800,800);
  
  // create an "instance" of the Square class
  s = new Square();
}


void draw() {
  background(50);
  
  // run the Square class' display() function
  // to draw it onscreen...
  s.display();
  
  // ...then make it get bigger
  s.update();
}


// our Square class
class Square {
  
  // "attributes" are data for every instance
  // of the class – here we give our square
  // a position onscreen
  float x, y;
  
  // and a width
  float w = 10;
  
  // the "constructor" for our class, which creates
  // the Square – this can take arguments (as we'll
  // see in upcoming examples)
  Square() {
    x = random(0, width);
    y = random(0, height);
  }
  
  // a class can also have "methods", or custom-written
  // functions that let our object do something
  // this creates easily re-usable code, especially if
  // we have many instances of the class in a single sketch
  
  // this method draws the square onscreen
  void display() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    rect(x, y, w,w);
  }
  
  // every time this is called, the square
  // gets a little bigger
  void update() {
    w *= 1.01;
  }
}
    