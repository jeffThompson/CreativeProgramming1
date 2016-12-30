
void setup() {
  size(600,600);
  background(255);
  
  for (int x=0; x<width; x+=10) {
    line(x,0, x,height);
  }
  
  int x = 0;
  recursiveLine(x);  
}


void recursiveLine(int x) {
  x += 10;
  
  // exit condition (when the recursion stops)
  if (x < width) {
    line(x, 0, x, height);
    recursiveLine(x);
  }
}