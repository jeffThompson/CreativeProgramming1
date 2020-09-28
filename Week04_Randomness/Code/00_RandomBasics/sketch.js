
/*
RANDOM BASICS
Jeff Thompson | 2017/20 | jeffreythompson.org

We can use random numbers to do lots of creative things (in
fact, some artists and musicians have spent nearly their 
entire careers exploring randomness), but when paired with
the repetitive power of the computer, really interesting 
things can happen.

This is a very simple example, drawing 1000 random dots
of random color, but the sample principle can be used
to really great effect.

Every time you run the sketch, it will be slightly different,
so try it a bunch of times!

CHALLENGES:
1. What happens when you adjust the size and transparency
   of the circles? How does that change the look of the sketch?
2. Can you add other randomly-chosen values to the sketch? What
   about changing the size of the circles?
3. Can you move the random color generation to its own function?
   (Hint: it should return a color as a variable.)

*/


function setup() {
    createCanvas(400, 400);

    // for these examples, we're not doing animation (that's
    // coming really soon though!), so we include this command
    noLoop();
}


function draw() {
    background(0);
    noStroke();

    // draw 1000 random dots of random color
    for (let i=0; i<1000; i++) {

        // create a random RGB color
        let r = random(0,256);      // args = min,max possible values
        let g = random(0,256);      // calculate for green...
        let b = random(0,256);      // ...and blue too
        fill(r,g,b, 200);           // add alpha as well for depth

        // draw in a random position, too
        // if only 1 argument given, random() assumes min = 0
        circle(random(width), random(height), 20);
    }
}

