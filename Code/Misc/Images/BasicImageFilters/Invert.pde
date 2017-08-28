
void invert() {
  
  // Inverts the color of each pixel (by subtracting
  // its value from 255. Easy!
  for (int i=0; i<pixels.length; i++) {
    float r = pixels[i] >> 16 & 0xFF;
    float g = pixels[i] >> 8 & 0xFF;
    float b = pixels[i] & 0xFF;

    r = 255 - r;
    g = 255 - g;
    b = 255 - b;
    
    pixels[i] = color(r, g, b);
  }
}