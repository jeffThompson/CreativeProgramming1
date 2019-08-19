
Face jeff;


void setup() {
  size(600,600);
  
  jeff = new Face(width/2, height/2);
}


void draw() {
  background(255);
  
  jeff.display();
}


class Face {
  float x, y;
  int dia;
  color c;
  
  // constructor
  Face(int _x, int _y) {
    x = _x;
    y = _y;
    dia = int(random(10,30));
    c = color(random(255), random(255), random(255));
    
    String noseFilename = noses[ int(random(0,noses.length)) ];
    nose = loadShape(noseFilename);
  }
  
  // methods
  void display() {
    pushMatrix();
    translate(x,y);
    
    fill(c);
    noStroke();
    ellipse(0,0, dia,dia);
    
    //fill(0);
    //ellipse(-5,-5, 2,2);   // left eye
    //ellipse(5,-5, 2,2);    // right eye
    
    //rect(-7,3, 14,2);
    shape(nose, 0,0, 10,5);
    
    popMatrix();
  }
  
  void move() {
    x += random(-5,5);
    y += random(-5,5);
  }
  
}
