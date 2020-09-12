
/*
CONDITIONALS
Jeff Thompson | 2017/20 | jeffreythompson.org

Very often we want to compare two values with each other;
to do this, we use if/else if/else statements called
"conditionals." This is super useful for controlling
the flow of a program and/or making choices about what
code to execute. In a bit, we'll also see how conditionals
help us create looping structures, too!

First we'll look at some basic examples in the Console,
then use conditionals to draw shapes onscreen.

We use a set of special symbols to compare values;
you've probably seen a few of these already!

  >    greater than                2 > 1
  <    less than                   1 < 2
  >=   greater than or equal to    4 >= 2+2
  <=   less than or equal to       1 <= 2+2 
  ===  equal to (see note)         5 === 2+3
  &&   and                         a < b && b >= 10
  ||   or                          a < b || b > c

Note! The "equal to" symbol is unique to Javascript.
Many languages use two equal signs (==) instead and
that does work in Javascript too, but for now you'll
run into fewer errors if you use three (===).

CHALLENGES:
1. Can you research the difference between the == and
   === symbols? Why would you not want to use ==?
2. Can you make the circle move back-and-forth instead
   of just to the right? (Hint: you'll need a value for
   direction, and have that switch when the circle hits
   an edge.)

*/

let x =     0;      // two "global" variables used
let debug = true;   // in the example below


function setup() {
    createCanvas(400, 400);

    // basic comparison of two numbers
    // first we check if they are equal, if not
    // we check if a is bigger than b, and if
    // neither of those two statements is true,
    // then a must be smaller than b
    let a = 1;
    let b = 2;
    if (a === b) {
        // code inside these brackets only runs
        // if the if-statement is true
        console.log('A is equal to B!');
    }
    else if (a > b) {
        console.log('A is greater than B!');
    }
    else {
        console.log('A is less than B!');
    }

    // boolean (true/false) values can be written
    // in a shorthand way
    let enjoyIfStatements = true;
    if (enjoyIfStatements) {
        console.log('I enjoy if statements!');
    }

    // we can check if a boolean value is false
    // with the ! symbol (which means "not")
    let hateDonuts = false;
    if (!hateDonuts) {
        console.log('I do not hate donuts, I love them!');
    }

    // we can also combine multiple conditionals with
    // the "and" (&&) and "or" (||) symbols
    // for example: if I'm hungry AND I have had less
    // than 6 hotdogs today, we should go get a hotdog
    let hungry = true;
    let numHotdogsEaten = 3;
    if (hungry && numHotdogsEaten < 6) {
        console.log("Let's go get a hotdog!");
    }

    // run away if either zombies or cobras are present
    let zombies = true;
    let cobras = false;
    if (zombies || cobras) {
        console.log('Run away!');
    }

    // we can nest conditionals together using
    // parentheses – these can be hard to read but
    // let us do complex comparisions

    // get a donut if...
    // - I have enough money
    // or...
    // - my friend is here
    // - AND they have enough money for both of us
    let donutCost =   1.50;
    let myMoney =     1.20;   // not enough :(
    let friendHere =  true;   // but my friend is here!
    let friendMoney = 4.50;   // do they have enough?
    if (myMoney >= donutCost || (friendHere && (friendMoney >= donutCost*2)) ) {
        console.log('Donut time!');
    }

    // lastly, we can compare strings of text too!
    let myName = 'Jeff';
    let myCatsName = 'Manchego';
    if (myName === myCatsName) {
        console.log('My cat and I have the same name!');
    }
    else {
        console.log('My cat and I have different names');
    }
}


function draw() {
    background(200);

    // draw a little circle
    fill(0);
    noStroke();
    circle(x, height/2, 100);

    // change its x position each frame
    x = x + 1;

    // if the circle has hit the right edge,
    // reset its position to 0
    if (x > width) {
        x = 0;
    }

    // another good use of conditionals is to
    // create "flags," boolean variables that
    // enable/disable bits of your code
    if (debug) {
        console.log(x);
    }
}

