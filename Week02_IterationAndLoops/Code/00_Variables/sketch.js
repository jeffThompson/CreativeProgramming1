
/*
VARIABLES
Jeff Thompson | 2016/20 | jeffreythompson.org

Variables are an incredibly useful tool for programming:
they let us take a value (a number, some text, etc) and
give it a name. This means we can refer to that value
by name (easier to understand), easily change that value
anywhere it's used in our program, and to have that
value change over time.

We've already used two variables: width and height. These
are defined as the size of the screen when we use the
createCanvas() command.

Unlike many programming languages, in Javascript (which
p5.js is built on), we do not have to specify the type of
value that the variable holds – nice! This is called
"dynamic typing" as opposed to languages like Java and
C++ which are "strongly typed." We'll talk more about
the differences between and affordances created by different programming languages during the Critical
Code Studies week.

*/


function setup() {
    createCanvas(400, 400);

    // creating a variable
    // when we make a variable, we need three
    // basic parts: 
    // - the "let" keyword, which tells p5.js
    //   that this is a variable
    // - the variable name (can be anything except
    //   some reserved words like "rect")
    // - an initial value
    let age = 12;

    // we can then see the value of our variable
    // by printing it to the Console
    console.log(age);

    // variables can then be used with all kinds
    // of operations!
    age = age + 1;
    console.log(age);   // I'm now one year older

    // floating-point numbers
    // our previous example is of an "integer" number,
    // a whole number (no decimals) that can be 
    // positive or negative
    // but we can also create "floating-point" numbers
    // that include a decimal
    let numberOfDonuts = 3.4;
    console.log(numberOfDonuts);

    // text variables
    // you may have noticed that numbers don't
    // require any special notation: to create a
    // value for "age" we just typed 12
    // but we have to enclose text in either single-
    // or double-quotes
    let name = 'Jeff';
    console.log(name);

    // we can also combine variables in the
    // console.log() command for easier reading!
    console.log('My name is ' + name + ' and I am ' + age + ' years old');

    // boolean
    // another type of variable we'll see a lot are
    // booleans: true/false values that are commonly
    // used on control structures or setting options
    let skyIsBlue = true;
    let pizzaIsHealthy = false;
    console.log('Is the sky blue: ' + skyIsBlue);
    console.log('Is pizza healthy: ' + pizzaIsHealthy);

    // arrays
    // the last variable topic we'll cover (for now)
    // are arrays aka lists of variables
    // a list can contain any type of variable and
    // in a bit we'll see how we can "iterate" through
    // those values
    let colors = [ 'red', 'green', 'blue' ];
    console.log(colors);

    // we can access specific values from an array
    // using "index" values – numbers that specify the
    // position in the list (note this starts with 0!)
    console.log(colors[0]);  // first element
    console.log(colors[1]);  // second element

    // we can also add an element to a list
    colors.push('yellow');
    console.log(colors);

    // "let" vs "var"
    // you may see in tutorials that some folks
    // create variables with "let" and some with
    // "var" – there are subtle differences between
    // the two that are very important if you're
    // building large-scale web apps or projects
    // that require secure data, but for now we can
    // see them as basically identical (all our
    // examples will use "let")

}


function draw() {
    // what happens when we try to print a variable
    // we created in the setup() here?
    console.log(colors);

    // the reason we get an error is that variables
    // have "scope" – depending on where we create
    // them, not all parts of our program will be
    // able to see those variables

    // local: variables accessible only within the
    // structure where they were created (like in 
    // setup() above)

    // global: variables accessible for the whole
    // program – we can create variables at the very
    // top of our sketch, before setup(), that will
    // be seen by the whole program

    // (we'll see more of this later when we create
    // while- and for-loops)
}

