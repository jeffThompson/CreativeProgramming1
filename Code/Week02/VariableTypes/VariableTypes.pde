
/*
VARIABLE TYPES
Jeff Thompson | 2016 | jeffreythompson.org

In Java, which Processing is built on, we have to specify
what type our variables are (whole numbers or text or
true/false values, etc) and they can't change type later
in the program.* This makes Java/Processing a "strongly 
typed" language.

* As we'll see later in the semester, not all programming
languages require this kind of specificity (for example, 
Python).

*/


void setup() {
  
  // note we're skipping size() here, since
  // we're just printing values to the console
  
  
  // NUMBERS
  // integers (int) are whole numbers, positive or negative
  // useful for: counting, numbers that don't need decimal precision
  int i = -5;
  
  // floating point numbers (floats) are decimal
  // numbers, also positive or negative
  // useful for: more precise values than ints
  float f = 3.14;
  
  // we can convert numbers between types, too
  int floatToInt = int(f);
  float intToFloat = float(i);
  println("Integer to float: " + floatToInt);
  println("Float to integer: " + intToFloat);
  
  // these values have min/max values, which can become
  // an issue if you're working with really large numbers
  println("Integer range: " + MIN_INT + " / " + MAX_INT);
  println("Float range:   " + MIN_FLOAT + " / " + MAX_FLOAT);
  
  // if you need larger numbers, look at long, double, and BigInt 
  
  
  // TEXT
  // characters (char) are single symbols, marked with single-quotes
  // useful for: reading keyboard input
  char c = 'a';
  
  // under the hood, each char is mapped to an integer, defined by
  // the ASCII system (more info: http://www.asciitable.com)
  // useful for: displaying text, debugging messages
  println("The ASCII code for " + c + " is " + int(c));
  
  // strings are a sequence of characters, marked with double-quotes
  String s = "The quick brown fox jumps over the lazy dog.";
  
  
  // BOOLEAN
  // true/false values take only one bit to store
  // useful for: control structures in program, setting options
  boolean skyIsBlue = true;
  boolean pizzaIsHealthy = false;
  
}