
class Fungus {  
  
  // the default constructor uses just an x/y position
  // but, when splitting in half, we can pass the angle
  // of its parent too!
  // (see Optional Arguments in the code for week 2 for
  // more info)
  constructor(x, y, angle) {

	  // values common to all Fungus objects
	  this.angleChangeAmt = radians(2);
	  this.speed =          1;

	  this.chanceSplit =    2;
	  this.splitAngle =     radians(16);

    // passed in from the arguments
    this.x =     x;
    this.y =     y;
    this.prevX = x;
    this.prevY = y;

    // if the angle variable is passed in, use that
    // otherwise, set to a random angle
    this.angle = angle || random(0, TWO_PI);

    // variables updated every frame
	  this.distFromCenter;
	  this.age = 0;
  }
  
  
  update() {
    
    // increase age of this tendril
    this.age += 1;
 
    // calculate the distance from the center of the sketch
    this.distFromCenter = dist(width/2,height/2, this.x,this.y);
    
    // move in a random direction
    this.angle += random(-this.angleChangeAmt, this.angleChangeAmt);
    this.prevX = this.x;
    this.prevY = this.y;
    this.x += cos(this.angle) * this.speed;
    this.y += sin(this.angle) * this.speed;    
    
    // randomly split into two Fungus objects
    // new one will split off in one direction,
    // current goes in the opposite direction
    if (random(100) < this.chanceSplit) {
      let f = new Fungus(this.x, this.y, this.angle+this.splitAngle);
      fungi.push(f);
      this.angle -= this.splitAngle;
    }
  }
  
  
  // not much here, all the work is done above!
  display() {    
    stroke(255,245,235, 60);
    line(this.prevX, this.prevY, this.x, this.y);
  }
}

