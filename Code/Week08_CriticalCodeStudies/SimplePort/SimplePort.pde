
/*
SIMPLE PORT
Jeff Thompson | 2019 | jeffreythompson.org

A simple port* of the one-line BASIC program:

10 PRINT CHR$(205.5+RND(1)); : GOTO 10

Inspired by a book of the same name, which is an
in-depth dive into this seemingly simple program,
the port below is one of many ways to interpret
this code in Processing.

As this code runs, note ways that it is similar
to and different from the original output. Can
you unpack why?

*A "port" is essentially the translation of some
code from one language to another. Sometimes the
only goal is that it function the same way, regard-
less of how that's accomplished. Other times the
port should do the same thing in the exact same
way.

*/


void setup() {
  // nothing here, since it's all printed
  // in the console below :)
}


void draw() {
  // 50% of the time draw a / character
  if (random(100) < 50) {
    print("/");
  }
  
  // and the other 50% draw a \
  else {
    print("\\");
    
    // the \ character is used to denote special
    // characters, either ones that can't be displayed
    // (like a line break "\n") or cases where the
    // literal character would cause problems (like
    // a double-quote character within a string) –
    // this is called an "escaped character"
    
    // to display a literal \ character, ie to have
    // Processing understand that it doesn't mean
    // a double-quote, we need a second \ character!
    
    // in BASIC this isn't necessary, one example
    // (of many) showing how a simple program can
    // show us how a language functions and what
    // assumptions and features it includes
  }
}
