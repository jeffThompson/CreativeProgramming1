
/*
SAVING IMAGES
Jeff Thompson | 2016 | jeffreythompson.org

Running a sketch on the screen is cool, but often we'll
want to save the results to an image file. Luckily,
Processing makes this really easy.

FORMATS
Supported image formats include jpg, png, tiff, and gif.

WHERE?
Images are saved to your sketch folder by default, or you
can specify a folder (which will get created) or a full
path. Note that images will be overwritten without warning!

*/

void setup() {
  size(800,800);
  
  // do something!
  background(0);
  fill(255);
  ellipse(width/2, height/2, 100,100);
  
  // save to the sketch folder – note we
  // need to include a file extension
  save("WhiteCircle.png");
  
  // save to a separate folder (will be
  // created automatically for us)
  // save("OutputImages/WhiteCircle.png");
}