
void keyPressed() {
  
  // p = pause/un-pause
  if (key == 'p') {
    pause = !pause;
  }
  
  // all other keys resets
  // the sketch
  else {
    setup();
  }
}
