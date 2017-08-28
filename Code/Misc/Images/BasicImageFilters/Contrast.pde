
void contrast() {
  
  /*
  Contrast is the amount of variation between light and
  dark in an image – higher contrast means lighter lights 
  and darker darks. The math of this is a bit tricky, but 
  that's why the internet exists, right?
  
  Mostly via:
  http://stackoverflow.com/q/13500289/1167783
  */
  
  // calculate the amount of contrast based on mouse position
  // 0-4 is what our algorithm expects, so convert to that
  float amt = map(mouseX, 0,width, 0,4);

  // go through each pixel and modify
  for (int i=0; i<pixels.length; i++) {
    float r = pixels[i] >> 16 & 0xFF;
    float g = pixels[i] >> 8 & 0xFF;
    float b = pixels[i] & 0xFF;
    
    // get RGB values in range of 0-1
    r = map(r, 0,255, 0,1);
    g = map(g, 0,255, 0,1);
    b = map(b, 0,255, 0,1);
    
    // formula for changing contrast
    r = (((r - 0.5) * amt) + 0.5) * 255.0;
    g = (((g - 0.5) * amt) + 0.5) * 255.0;
    b = (((b - 0.5) * amt) + 0.5) * 255.0;
    
    // make sure we don't go past 0-255 range
    r = constrain(r, 0,255);
    g = constrain(g, 0,255);
    b = constrain(b, 0,255);
    
    pixels[i] = color(r, g, b);
  }
}