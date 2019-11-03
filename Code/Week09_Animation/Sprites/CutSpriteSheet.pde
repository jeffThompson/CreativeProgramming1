
// a function that takes a "sprite sheet" with multiple
// frames tiled on it and cuts them into individual frames
PImage[] cutSpriteSheet(String path, int numTilesW, int numTilesH, boolean saveTiles) {
  
  // load the sprite sheet image
  PImage spriteSheet = loadImage(path);

  // create an array for the individual frames
  PImage[] frames = new PImage[numTilesW*numTilesH];
  
  // calculate how wide and high the tiles are
  int tileWidth =  spriteSheet.width  / numTilesW;
  int tileHeight = spriteSheet.height / numTilesH;

  // extract the frames from the sprite sheet
  int x = 0;
  int y = 0;
  for (int i=0; i<frames.length; i++) {
    
    // get the image and add to the array
    PImage frame = spriteSheet.get(x,y, tileWidth,tileHeight);
    frames[i] = frame;

    // if specified, save the frames to file
    if (saveTiles) {
      frame.save("frames/" + i + ".png");
    }

    // update the x/y position based on the tile
    // dimensions (needed since we're not using a
    // 2D for-loop)
    x += tileWidth;
    if (x >= spriteSheet.width) {
      x = 0;
      y += tileHeight;
    }
  }

  // when done, send back the array of PImage frames
  return frames;
}
