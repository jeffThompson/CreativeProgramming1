
class Face {
  
  // generic settings for all faces
  float dia =    200;    // diameter
  float eyeX =   45;     // x position for eyes (relative to center)
  float eyeY =   -20;    // y position too
  float mouthY = 35;     // same for mouth
  
  float nodSpeed =  1;   // speed to nod/shake head
  float maxNodAmt = 15;  // max travel when nodding/shaking
  
  // other variables, set when the face is instantiated
  float x, y;
  PImage leftEye, rightEye;
  PImage mouth;
  boolean nod;
  float nodOffset = 0;

  // lists of possible eyes and mouths to choose from
  String[] eyes =   { "Closed", "Open", "Squint", "Surprised" };
  String[] mouths = { "Frown", "Smile", "SmileWide", "TongueOut", "ToothSmile" };
  
  
  Face(float _x, float _y) {
    x = _x;
    y = _y;
    
    // pick a left eye image, load it
    int whichEyeLeft =  int(random(0,eyes.length));
    leftEye =           loadImage("Eyes/" + eyes[whichEyeLeft] + "-Left.png");
    
    // same thing for right eye
    int whichEyeRight = int(random(0,eyes.length));
    rightEye =          loadImage("Eyes/" + eyes[whichEyeRight] + "-Right.png");
    
    // and mouth
    int whichMouth =    int(random(0,mouths.length));
    mouth =             loadImage("Mouths/" + mouths[whichMouth] + ".png");
    
    // based on which mouth is selected, nod up/down or shake left/right
    if (whichMouth == 0 || whichMouth == 3) {
      nod = false;
    }
    else {
      nod = true;
    }
  }
  
  
  void display() {
    pushMatrix();
    translate(x,y);
    
    // draw the face
    noStroke();
    fill(255,216,70);
    ellipse(0,0, dia,dia);
    
    // either nod or shake, depending on which mouth
    // was chosen when the face was created
    if (nod) {
      translate(0,nodOffset);
    }
    else {
      translate(nodOffset,0);
    }
    nodOffset += nodSpeed;
    if (nodOffset < -maxNodAmt || nodOffset > maxNodAmt) {
      nodSpeed *= -1;
    }
    
    // draw each of the face elements in their
    // locations (relative to the center)
    imageMode(CENTER);
    image(leftEye, -eyeX,eyeY);
    image(rightEye, eyeX,eyeY);
    image(mouth, 0,mouthY);
    
    popMatrix();
  }  
}
