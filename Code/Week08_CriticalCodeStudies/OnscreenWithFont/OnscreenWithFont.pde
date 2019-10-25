
/*
ONSCREEN DISPLAY
Jeff Thompson | 2019 | jeffreythompson.org

A slightly fancier version that loads a font and
draws the / and \ symbols onscreen. Notice how
this changes from the console version: it lets
us play with color, spacing, etc. 

Try changing the font, spacing, and/or probability
of one character or the other and see how the results
differ. Or try using different characters entirely!

*/


void setup() {
  
  // weird size, but it's picked to give nice
  // even margins based on the font size
  size(810,775);
  background(0,150,255);
  
  // load font from "data" folder
  PFont font = loadFont("Monospaced-48.vlw");
  textFont(font, 48);
  
  // draw random / or \ across the screen
  // (also slightly weird starting values,
  // which is also to get tidy margins)
  for (int y=42; y<height; y+=48) {
    for (int x=8; x<width; x+=32) {
      fill(255);
      noStroke();
      if (random(100) < 50) {    // 50% chance of "/"...
        text("/", x,y);
      }
      else {
        text("\\", x,y);         // ...and 50% chance of "\"
      }      
    }
  }
}
