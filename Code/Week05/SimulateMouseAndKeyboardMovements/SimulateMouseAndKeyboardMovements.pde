
// to use the Robot class, we have to "import" some extra
// libraries of code
import java.awt.Robot;            // for the basic Robot class
import java.awt.event.KeyEvent;   // to simulate key presses
import java.awt.AWTException;     // for related error-handling

/*
SIMULATE MOUSE AND KEYBOARD MOVEMENTS WITH "ROBOTS"
Jeff Thompson | 2017 | jeffreythompson.org 

Using Java's Robot class, we can simulate keystrokes, 
mouse movements and clicks, etc!  Great for automation, 
controlling other programs via Processing, or doing
weird hacks.

More info on the Robot class here:
https://docs.oracle.com/javase/7/docs/api/java/awt/Robot.html

And a list of KeyEvent codes here:
https://docs.oracle.com/javase/7/docs/api/java/awt/event/KeyEvent.html

CHALLENGES:
1. What other weird stuff can you do with the Robots
   class? Can you try to automate a complex process, like
   watching videos on YouTube?

*/

String s = "";    // string of fake keypresses
Robot robot;      // instance of the Robot class
PFont font;       // font for text display


void setup() {
  size(800,800);
  font = createFont("Arial", 28);
  textFont(font, 28);
  
  // create an instance of the Robot class
  // this can throw an "exception" (like an error in
  // Java) so we have to run it in a "try" statement
  try {
    robot = new Robot();
  }
  catch (AWTException e) {
    e.printStackTrace();
  }
}


void draw() {
  background(180);

  fill(0);
  noStroke();
  text(s, 50,50, width-100,height-100);
  
  // randomly trigger a lowercase 'a'
  // (try it with a different program open, too)
  if (random(1) < 0.3) {
    robot.keyPress(KeyEvent.VK_A);
    robot.keyRelease(KeyEvent.VK_A);     // always release!
  }
  
  // using other KeyEvent codes, we could send other
  // keys – automate the spacebar to control video playback
  // or type URLs into a browser!
  // robot.keyPress(KeyEvent.VK_SPACE);
  // robot.keyRelease(KeyEvent.VK_SPACE);
}


void keyPressed() {
  
  // spacebar moves the mouse to random coordinates
  if (key == 32) {
    int x = int(random(0,displayWidth));
    int y = int(random(0,displayHeight));
    robot.mouseMove(x,y);
  }
  
  // clicking the mouse simulates pressing
  // the 'a' key and adds it to the string onscreen
  else if (key == 'a') {    // note: this isn't a "real" keypress!
    s += "a";
  }
}