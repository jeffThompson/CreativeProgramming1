
/*
BASIC CLASS
Jeff Thompson | 2017/20 | jeffreythompson.org

The way we've been coding most of our examples up until now 
(using individual variables and lists, loops and functions) 
has worked well, but for more complex projects we'll need a 
better system. One very common paradigm is called 'object-
oriented programming' (or OOP, a term coined by Alan Kay, 
famous for his work on early GUI systems), which lets us 
define objects with a generic template. We can then create 
*instances* of that template. Each instance has variables 
defined in the template (position, size, etc) and actions 
that can be applied (move position, display onscreen, etc). 
The power here is that we can abstractly create object templates, 
create many instances of that object, access them individually 
or delete them as needed, and even nest classes inside each other!

In Javascript, our template is called a 'class.' The class has 
a name (always uppercase), a 'constructor' that defines the 
variables for the class, and 'methods' which are functions that 
can be run.

For our first example, we'll create a really simple class for
a square, which includes variables like position and size, and
methods to display and change its size.

Lots more about OOP here:
+ https://en.wikipedia.org/wiki/Object-oriented_programming
+ https://softwareengineering.stackexchange.com/questions/142327/
  what-did-they-call-object-oriented-programming-before-alan-kay-
  invented-the-term
+ http://www2.latech.edu/~box/ase/tp/
  Per%20Kjeldaas%20Research%20Paper%20.pdf

CHALLENGES
1.  Can you add another variable to the class for the rate 
    of growth?
2.  Here we have only one instance of the Square class – can 
    you create another and see what happens?
3.  Our square eventually gets so big it fills the screen. Can 
    you modify the update() method to prevent that?
*/

let s;      // an instance of the Square class named 's'
let another;  // and another one too!


function setup() {
  createCanvas(windowWidth, windowHeight);

  // create an 'instance' of the Square class
  s = new Square();

  // make another: the power of OOP is how easy it is to
  // create and keep track of multiple instances of an object!
  another = new Square();
}


function draw() {
  background(50);

  // run the update() function of the square
  // class on the variable 's' to make it get
  // bigger each frame...
  s.update();

  // ... then run display() to show it onscreen
  s.display();

  // do the same for the other square too!
  another.update();
  another.display();
}


// our Square class
// there is some basic required structure for a
// class – more info in each section below
class Square {
  
  // the 'constructor' for our class, which creates
  // the Square object – this can take arguments too
  // (we'll see that in an upcoming example)
  constructor() {

    // this?!?
    // the word 'this' refers to the individual
    // instance of the Square class, which we use
    // to set and change variables stored inside it

    this.w = 10;                            // width
    this.x = random(this.w, width-this.w);  // random x/y position
    this.y = random(this.w, height-this.w);

    // this is just like when we access the width
    // and height of an image (img.width) or the
    // length of an array (points.length), etc
  }

  // a class can also have 'methods,' or custom-written
  // functions that let us change variables, display the 
  // object, etc

  // note! methods in a class don't use the word
  // 'function' in front of them, just the function's name

  // this method draws the Square onscreen
  display() {
    rectMode(CENTER);
    fill(255, 150);
    noStroke();
    square(this.x, this.y, this.w);
  }

  // every time this is called, the square gets a
  // little bigger until it reaches a certain size
  update() {
    this.w *= 1.01;
    if (this.w > height/2) {
      this.w = height/2;
    }
  }
}

