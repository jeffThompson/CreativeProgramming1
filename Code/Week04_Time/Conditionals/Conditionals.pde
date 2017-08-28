
/*
CONDITIONALS
Jeff Thompson | 2017 | jeffreythompson.org

With the addition of iteration and recursion in your
toolbox, you have lots of powerful ways to run a sketch.
But if you want to control the flow, especially if you
want branching or complex choices. "Conditionals", also
known as if/else if/else statements, let our programs
make choices about what code to execute.

COMPARISONS:
We use a set of special symbols to compare values – you've
probably seen a few of these already:

  >    greater than                2 > 1
  <    less than                   1 < 2
  >=   greater than or equal to    4 >= 2+2
  <=   less than or equal to       1 <= 2+2 
  ==   equal to                    5 == 2+3
  &&   and                         a < b && b >= 10
  ||   or                          a < b || b > c

CHALLENGES:
1. Can you add a label for the circle's X position? Can
   you make it follow the ball? Can you make it switch
   to the left or right of the ball depending on where
   it is on the screen?
2. Can you make the circle move back-and-forth instead
   of just to the right? (Hint: you'll need a value for
   direction, and have that switch when the circle hits
   an edge.)
   
*/


// the simplest type of conditional is set with
// a "flag", a boolean variable that controls how
// a program functions – this can be helpful for
// changing how your sketch runs, like in this
// case adding debug info onscreen
boolean debug = true;

float x = 0;


void setup() {
  size(800,800);
  
  // basic comparison of two numbers
  int a = 1;
  int b = 2;
  if (a == b) {                        // are the two numbers equal?
    println("A is equal to B!");
  }
  else if (a > b) {                    // is a larger than b?
    println("A is greater than B!");
  }
  else {                               // if not equal and a is not greater than b...
    println("B is greater than A!");
  }
  
  // boolean comparison can be written using 
  // the == symbol, but we can also shorten it a
  // bit (which many people find easier to read, too)
  boolean enjoyIfStatements = true;
  if (enjoyIfStatements) {                // if true
    println("I enjoy if statements!");
  }
  
  boolean payingAttention = false;
  if (!payingAttention) {                 // if false
    println("Yeah, I'm not really listening to you right now.");
  }
  
  // multiple comparisons
  // if we want several conditions to be met in order
  // for something to happen, we can use the AND (&&) and
  // OR (||) symbols to combine conditional tests
  
  // for example, get hotdogs if I'm hungry and I've had
  // less than 6 hotdogs today
  boolean hungry = true;
  int numHotdogsEatenToday = 3;
  if (hungry && numHotdogsEatenToday < 6) {
    println("Let's go get a hotdog!");
  }
  
  // run away if zombies or cobras are present
  boolean zombies = true;
  boolean cobras = false;
  if (zombies || cobras) {
    println("Run away!");
  }
  
  // get a donut if I have enough money, or
  // if my friend is there and has enough for
  // both of us
  float donutCost = 1.50;
  float myMoney = 1.20;
  boolean friendPresent = true;
  float friendMoney = 4.50;
  if ( (myMoney > donutCost) || (friendPresent && (friendMoney > donutCost*2)) ) {
    println("I'm getting a donut!");
  }
  
  // string comparisons are a little different – for
  // the most reliable testing, we use the .equals()
  // comparison (if you want to know why, see this
  // http://stackoverflow.com/a/767379/1167783)
  String myName = "Jeff";
  String myCatsName = "Kahn";
  if (myName.equals(myCatsName)) {
    println("My cat and I have the same name!");
  }
  else {
    println("My cat and I have different names.");
  }
}


void draw() {
  background(200);
  
  // a simple "flag" set as a global variable
  // here, we show the frame rate for debugging
  // note that the if statement below is the 
  // same as "if (debug == true)"
  if (debug) {
    fill(0);
    noStroke();
    text(int(frameRate) + " fps", 30,height-30);
  }
  
  // we can also use the comparison symbols listed
  // above to control an object onscreen – here we
  // can make a circle move left-to-right, then jump
  // back to the left again
  x += 1;
  if (x > width) {    // if the circle is at the right edge...
    x = 0;            // ...reset its position to 0
  }
  fill(255,150,0);
  noStroke();
  ellipse(x,height/2, 200,200);
}