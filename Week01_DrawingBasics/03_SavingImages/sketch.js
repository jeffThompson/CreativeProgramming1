
/*
SAVING IMAGES
Jeff Thompson | 2020 | jeffreythompson.org

Running a sketch in the browser is cool, but often we'll
want to save the results to an image file – maybe to share
online, text to your friend, or print. Luckily, P5JS makes 
this really easy.*

Supported image formats for saving: jpg or png

* We'll see later that, with Javascript, file input/output 
isn't always super easy. The "affordances" of a programming 
language (what it lets you do, makes difficult, etc) is an 
important thing to think about – like all technologies,
programming languages are made by people who have a particular
set of interests, needs, values, and biases and those get 
baked into the tools we make.

CHALLENGES
+ Can you add a save() function to all our previous examples,
  each with descriptive filenames?
+ Do some research: why would you want to choose JPG vs PNG when
  saving your sketch? For the examples we've done so far, which
  do you think would be the best choice?

*/


function setup() {
    createCanvas(800,800);

    // when using the save() command, your browser will 
    // open a prompt and ask you where you want the image
    // to be saved; for this reason, you probably don't 
    // want to put the save() command in the draw() loop!
    
    // instead, we can specify that we want the draw() function
    // to run once and then stop using noLoop()
    noLoop();
}


function draw() {

    // do something
    background(0);
    fill(255);
    ellipse(width/2, height/2, 100,100);

    // indicate the filename and file extension
    // (remember to include noLoop() in the setup!)
    save('WhiteCircle.png');

    // later, we'll see how we can use variables and other
    // functions to build dynamic filenames!
}

