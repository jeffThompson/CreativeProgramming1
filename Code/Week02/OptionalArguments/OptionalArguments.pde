
/*
OPTIONAL ARGUMENTS FOR FUNCTIONS
Jeff Thompson | 2017 | jeffreythompson.org

Sometimes you want a function to have optional parameters,
and want a default if they aren't specified. Languages like
Python make this really nice, but Java requires a little
more work from us.

Essentially, we create two versions of the same function – they
have the same name, but one has all the parameters as arguments,
and the other (without those extra parameters) calls the first
with a default value.

This process is called "overloading" – read more about it here:
http://beginnersbook.com/2013/05/method-overloading

*/


void setup() {
  
  // get the percentage of a value as a String
  // the third parameter is the precision of the %
  println(percentDone(42, 800, 5));
  
  // another format of the same function, which uses
  // the default precision of 2 decimal places
  println(percentDone(42, 800));
  
  exit();
}


// our main percentage function, including all three parameters
String percentDone(float i, float n, int precision) {
  return nf((i / n) * 100.0, 0, precision);
}

// the second version, with no precision, calls the main
// function from inside it, using a default value of 2
String percentDone(float i, float n) {
  return percentDone(i, n, 2);
}