
/*
OBJECT-ORIENTED FACES
Jeff Thompson | 2019/20 | jeffreythompson.org

One of the great things about object-oriented programming is
that we can define a template, which then gets customized. In
this example, we make random emoji-like faces, each with different
(randomly-chosen) eyes and mouth. This could easily be expaned
to make more realistic faces (with extra parts) or even whole
characters.

See the face.js file for more details; press any key to re-generate 
the faces randomly!

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

let faces;
let eyes =   [];
let mouths = [];


function preload() {
  // each face will be made up of two eyes and a mouth
  // we load these images here into an array, which we can then use later
  // when displaying our faces – there's lots of ways we could do this,
  // but loading the images here is probably best
  // it avoids loading the same 'Smile.png' image a bunch of times, which
  // could slow down our code

  // first, a list of filenames we'll want to load
  let mouthFiles = [ 'Frown', 'Smile', 'SmileWide', 'TongueOut', 'ToothSmile' ];

  // then, using a for-loop, we can dynamically create the path and filename,
  // then load the image and add it to our list of mouths
  for (let i=0; i<mouthFiles.length; i++) {
    let mouth = loadImage('mouths/' + mouthFiles[i] + '.png');
    mouths.push(mouth)
  }

  // do the same thing for the eyes
  let eyeFiles = ['Closed-Left', 'Closed-Right', 'Open-Left', 'Open-Right', 'Squint-Left', 'Squint-Right', 'Surprised-Left', 'Surprised-Right' ];
  for (let i=0; i<eyeFiles.length; i++) {
    let eye = loadImage('eyes/' + eyeFiles[i] + '.png');
    eyes.push(eye)
  }
}


function setup() {
  createCanvas(windowWidth, windowHeight);

  // create lots of faces in a grid
  faces = [];
  for (let y=200; y<height-200; y+=300) {
    for (let x=200; x<width-200; x+=300) {
      let face = new Face(x, y);
      faces.push(face);
    }
  }
}


function draw() {
  background(255);

  // go through the list of faces and display them
  for (let i=0; i<faces.length; i++) {
    faces[i].display();
  }
}


// if any key is pressed, re-generate all the faces!
function keyPressed() {
  setup();
}

