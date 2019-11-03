
// a simple intro screen, stored in its own function,
// which makes updating much easier and our draw()
// easier to read
void intro() {
  background(50);
  
  fill(255);
  noStroke();
  textFont(font, 120);
  text("INTRO", width/2,height/2);
  
  textFont(font, 16);
  text("[ press any key to start ]", width/2, height-height/4);
}
