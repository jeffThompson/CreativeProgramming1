
/*
BUTTONS
Jeff Thompson | 2020 | jeffreythompson.org

One of the great things that comes with using p5.js
is all the built-in user interface elements that the
web has! In other languages, we'd have to build our
own buttons, write code to see if they are clicked,
etc or use someone else's code library. Instead,
p5.js makes it really easy for us to add HTML buttons,
checkboxes, and other inputs.

Note: if you've done some HTML and CSS (the nouns and
adjectives of the web) before, then you could try 
styling our buttons! If you haven't used those tools,
it's a bit out of the scope for this demo to show you
how – add that to your tech to-do list!

CHALLENGES:
1. Can you try adding some additional buttons? What
   functionality would you want to add to this sketch?

*/


// some overall variables – many of these will be
// changed with our buttons later, so we need them
// to be 'global' variables seen by our whole program
let bgColor =      'rgb(0,150,255)';
let cursorColor =  'rgb(0,0,0)';
let cursorDia =    50;
let rotateCursor = false;
let cursorAngle =  0;

// buttons are variables too!
let textButton;
let radioButton;
let dropdown;
let checkbox;
let colorPicker;


function setup() {
  createCanvas(600, 400);
  noCursor();
  
  // text button
  // a basic, labeled button – this triggers a callback 
  // function, listed using the .mousePressed() attribute
  textButton = createButton('Change Background');
  textButton.mousePressed(changeBackgroundColor);
  textButton.position(20, 20);

  // for the callback functions used here, scroll down
  // to the bottom :)

  // radio button
  // these give users multiple choices (we can set a preset too)
  // these buttons don't have a callback, so we need to read
  // the button's value each frame in the draw()
  radioButton = createRadio();
  radioButton.option('Square');
  radioButton.option('Circle');
  radioButton.selected('Square'); // what is selected by default
  radioButton.position(20, 60);

  // dropdown
  // called 'select' in p5.js, this is like a radio button
  // but takes up less space which is great for a long list
  dropdown = createSelect();
  dropdown.option('10');
  dropdown.option('50');
  dropdown.option('100');
  dropdown.selected('50');            // default selection
  dropdown.changed(changeCursorDiameter);   // callback function
  dropdown.position(20, 100);

  // checkbox
  // super simple – the checkbox gets a label and we can decide
  // whether it is true (checked) or false (not) by default
  checkbox = createCheckbox('Rotate Cursor', false);
  checkbox.changed(toggleCursorRotation);
  checkbox.position(20, 160);

  // color picker
  // this shows up as a small button with a color shown – clicking
  // on it opens the operating system's color picker
  // after selecting a color, the callback function is run
  colorPicker = createColorPicker('rgb(0,0,0)');
  colorPicker.input(setCursorColor);
  colorPicker.position(20, 200);
}


function draw() {

  // here, we put to use the selections made using
  // our buttons – see the callback functions below
  // for more info on how those values are used

  background(bgColor);

  // draw an interactive cursor
  push();
  translate(mouseX, mouseY);
  
  // if the 'Rotate Cursor' checkbox is selected, rotate
  // the cursor!
  if (rotateCursor) {
    cursorAngle += radians(1);
    rotate(cursorAngle);
  }
  fill(cursorColor);
  noStroke();

  // since the radio button doesn't have a callback function,
  // we read its value each frame and change the cursor's
  // shape accordingly
  let cursorShape = radioButton.value();
  if (cursorShape === 'Square') {
    rectMode(CENTER);
    square(0,0, cursorDia);
  }
  else if (cursorShape === 'Circle') {
    circle(0,0, cursorDia);
  }
  pop();
}


// the text button runs this callback function when
// it's clicked, generating a random background color
function changeBackgroundColor() {
  let r = int(random(0, 255));
  let g = int(random(0, 255));
  let b = int(random(0, 255));
  bgColor = 'rgb(' + r + ',' + g + ',' + b + ')';
}


// the dropdown menu lets us choose the diameter of
// the cursor – note we have to use parseInt() since
// the option in the menu are text
function changeCursorDiameter() {
  let choice = dropdown.value();
  cursorDia = parseInt(choice); // converts from a string (text) to a number
}


// reads the checkbox and turns on/off the cursor rotation
function toggleCursorRotation() {
  rotateCursor = !rotateCursor;

  // note our shorthand here: since 'rotateCursor' is a boolean 
  // (true/false) variable, we can read the above code as saying:
  // 'rotateCursor equals not rotateCursor'
  // in other words, it flips the value to false if it's true and 
  // vice versa!

  // this is the same as:
  // if (rotateCursor === true) {
    // rotateCursor = false;
  // }
  // else {
    // rotateCursor = true;
  // }
}


// reads the value from the color picker and sets the cursor color
function setCursorColor() {
  cursorColor = colorPicker.color();
}

