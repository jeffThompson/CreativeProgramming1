
class Face {
  constructor(x, y) {
    // generic settings for all faces
    this.dia =    200;
    this.eyeX =   45;
    this.eyeY =   -20;
    this.mouthY = 35;

    // set position from arguments, passed in
    // when the Face is created
    this.x = x;
    this.y = y;

    // decide which random face parts to use
    this.mouthIndex = int(random(0, mouths.length));
    this.mouth = mouths[this.mouthIndex];

    this.leftEyeIndex = int(random(0, eyes.length));
    this.leftEye = eyes[this.leftEyeIndex];

    this.rightEyeIndex = int(random(0, eyes.length));
    this.rightEye = eyes[this.rightEyeIndex];

    // finally, nod up/down or shake left/right depending
    // on which mouth is selected
    if (this.mouthIndex === 0 || this.mouthIndex === 3) {
      this.nod = false;
    }
    else {
      this.nod = true;
    }
    this.nodSpeed =  1;
    this.maxNodAmt = 15;
    this.nodOffset = 0;
  }


  display() {
    push();
    translate(this.x, this.y);

    // draw the overall face
    noStroke();
    fill(255,216,70);
    circle(0,0, this.dia);

    // either nod or shake, depending on which mouth
    // was chosen when the face was created
    if (this.nod) {
      translate(0, this.nodOffset);
    }
    else {
      translate(this.nodOffset, 0);
    }
    this.nodOffset += this.nodSpeed;
    if (this.nodOffset < -this.maxNodAmt || this.nodOffset > this.maxNodAmt) {
      this.nodSpeed *= -1;
    }

    // draw each of the face elements in their locations
    // (which are relative to the center of the face)
    imageMode(CENTER);
    image(this.leftEye, -this.eyeX, this.eyeY);
    image(this.rightEye, this.eyeX, this.eyeY);
    image(this.mouth, 0,this.mouthY);

    pop();
  }
}

