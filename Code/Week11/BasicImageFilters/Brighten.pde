
void brighten() {
  
  /*
  Brightens individual pixels by a certain amount!
  
  CHALLENGES:
  + Can you try just brightening the red, green, or
    blue channel and see what happens?
  */
  
  // use mouseX to decrease (negative) or increase
  // (positive) the brightness of each pixel
  float amount = map(mouseX, 0,width, -255,255);
  
  for (int i=0; i<pixels.length; i++) {
    float r = pixels[i] >> 16 & 0xFF;
    float g = pixels[i] >> 8 & 0xFF;
    float b = pixels[i] & 0xFF;
    
    // add amount to color, make sure it doesn't
    // go past the 0-255 range
    r += amount;
    r = constrain(r, 0,255);
    g += amount;
    g = constrain(g, 0,255);
    b += amount;
    b = constrain(b, 0,255);
    
    pixels[i] = color(r, g, b);
  }
}