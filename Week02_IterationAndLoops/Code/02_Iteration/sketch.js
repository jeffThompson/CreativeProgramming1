
/*
ITERATION
Jeff Thompson | 2016/20 | jeffreythompson.org

Iteration is a very important programming idea – it 
offers a structure to repeat lines of code. This can 
be purely functional (like going through every item 
in a list) or draw repeated shapes across the screen 
(like a grid).

The two main ways we can iterate are "while" loops 
and "for" loops. Each are described below, though 
you'll probably see for-loops much more often.

CHALLENGES:
1. Can you create a variable for the line-spacing
   below and use it in the for-loop code?
2. Can you use a for loop to draw concentric circles,
   coming out from the center and getting larger
   and larger?
3. Can you make every 10th line a different color? 
   (Hint: look at the "modulus" operator)

*/


function setup() {
    createCanvas(400, 400);

    // WHILE-LOOP
    // the "while" loop is an older form, dating
    // to some of the earliest computer programs
    // it's not so common now, but the syntax is
    // simple to understand: starting from an initial
    // value, any code inside the while-loop gets
    // executed over-and-over until a condition is met

    // this while-loop counts from 10 to 0, printing
    // the nubmers as it goes
    let count = 10;         // an initial value
    while (count >= 0) {    // runs until condition is met
        console.log(count); // do something
        count -= 1;         // update the variable*
    }

    // * NOTE! if you don't update the "count" variable,
    // your program gets stuck forever!

    // FOR-LOOP
    // the "for" loop is a little harder to understand,
    // but is a foundational structure in programming that
    // you'll need to use all the time
    // it combines the elements of the while-loop (initial
    // value, condition, update) in a single line

    // this for-loop counts from 0 to 9, printing the
    // numbers
    for (let i=0; i<10; i++) {
        console.log(i);
    }

    // a few new things here:
    // we create the variable INSIDE the loop statement!
    // i++ means "add one to the value of i"
}


function draw() {
    background(50);

    // printing numbers is pretty boring: more practical
    // is using for-loops to draw repeated shapes!

    // first, draw vertical lines across the screen
    stroke(255);
    for (let x=0; x<width; x+=10) {
        line(x,0, x,height);
    }

    // then horizontal ones too
    for (let y=0; y<height; y+=10) {
        line(0,y, width,y);
    }

    // we *could* do the same thing with individual
    // line() commands and preset coordinates, but
    // that's hard to update (what if we want 11px
    // spacing instead?) plus, this way saves us
    // 80 lines of code!
}

