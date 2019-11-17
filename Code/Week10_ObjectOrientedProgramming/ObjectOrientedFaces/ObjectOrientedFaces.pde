
/*
OBJECT-ORIENTED FACES
Jeff Thompson | 2019 | jeffreythompson.org

One of the great things about object-oriented programming is
that we can define a template, which then gets customized. In
this example, we make random emoji-like faces, each with different
(randomly-chosen) eyes and mouth. This could easily be expaned
to make more realistic faces (with extra parts) or even whole
characters.

Press any key to re-generate the faces randomly!

There is some extra stuff here that's not strictly necessary, like
nodding/shaking head, but it's all using ideas we've covered so
far: basic drawing commands with animation and interactivity!
Just combining fundamentals can lead to really wonderful, complex
results.

CHALLENGES:
+ In this version, the nodding/shaking is syncronized in all
  faces. Instead, can you have them all be different? Hint:
  use the "nodOffset" variable when instantiating each face.

*/


// let's make a bunch of faces :)
ArrayList<Face> faces;


void setup() {
  size(700,700);
  
  // create lots of faces in a grid
  faces = new ArrayList<Face>();
  for (int y=200; y<height; y+=300) {
    for (int x=200; x<width; x+=300) {
      Face face = new Face(x,y);        // arguments are x/y position
      faces.add(face);                  // add to list of face objects
    }
  }
}


void draw() {
  background(255);
  
  // go through list of faces and display them all
  for (Face face: faces) {
    face.display();
  }
}


// if any key is pressed, re-generate the faces!
void keyPressed() {
  setup();
}
