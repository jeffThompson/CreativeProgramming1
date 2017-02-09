
/*
INCREASE MATRIX STACK
Jeff Thompson | 2017 | jeffreythompson.org

Sometimes, you may need more calls to pushMatrix()
and popMatrix() than allowed, especially when doing
things like recursion. Using some code (at the end
of this sketch) you can change the number of calls
allowed. This will be limited by your available
RAM, of course.

In this example, we just draw lots of rotated squares
to demo the code :)

Via and more info: 
http://wiki.processing.org/w/Matrix_stack

*/


int stackDepth = 512;    // number of calls to push/popMatrix() allowed


void setup(){
  size(800,800);
  
  // rectangle settings
  noFill();  
  stroke(0, 30);
  rectMode(CENTER);
  
  // initial translation to center
  // then draw
  translate(width/2,height/2);
  doSomething(0, 800);
}


void doSomething(int depth, int s) {
  
  // update size of square
  s *= 0.98;
  
  // rotate and draw
  pushMatrix();
  rotate(map(s, width,0, 0,PI));
  rect(0,0, s,s);
  
  // update depth count and recursively draw
  // up to the stack limit listed at the top
  depth += 1;
  if (depth < stackDepth) {
    doSomething(depth, s);
  }
  
  popMatrix();
}


// the code below overrides the default allowable stack
// size – to use, just copy & paste the following code
// to the end of your sketch

float[][] matrixStack = new float[stackDepth][6];
int matrixStackDepth;
 
// this version will override the built-in pushMatrix() function
public void pushMatrix() {
  if (matrixStackDepth >= stackDepth) {
    throw new RuntimeException("too many calls to pushMatrix()");
  }
  this.g.getMatrix().get(matrixStack[matrixStackDepth]);
  matrixStackDepth++;
}
 
// this version will override the built-in popMatrix() function
public void popMatrix() {
  if (matrixStackDepth == 0) {
    throw new RuntimeException("too many calls to popMatrix()" +
                               "(or too few to pushMatrix)");
  }
  matrixStackDepth--;
  PMatrix2D m = new PMatrix2D();
  m.set(matrixStack[matrixStackDepth]);
  this.g.setMatrix(m);
}