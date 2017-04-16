
void threshold() {
  
  /* 
  This simple filter looks at every pixel in the image. If 
  the brightness is below a certain threshold, the pixel is
  made black, if above it's made white.
  
  CHALLENGES:
  + Instead of coloring black and white, can you try other
    colors and see how the image changes?
  
  */

  for (int i=0; i<pixels.length; i++) {
    float r = pixels[i] >> 16 & 0xFF;                // * see note below
    float threshold = map(mouseX, 0,width, 0,255);   // use mouse to drive threshold
    if (r < threshold) {
      pixels[i] = color(0);
    }
    else {
      pixels[i] = color(255);
    }
  }
  
  /*
  ** WHY JUST THE RED VALUE?
  Science tells us that the red part of a color is the best
  indicator of brightness – there are other, fancier ways of
  determine this more accurately, but for our purposes, just
  getting the red value works very well and is super fast.
  
  More info on calculating perceived brightness (aka "luminance") here: 
  http://stackoverflow.com/a/596243/1167783
  
  And here:
  http://www.nbdtech.com/Blog/archive/2008/04/27/
  Calculating-the-Perceived-Brightness-of-a-Color.aspx
  
  */
}