
/*
BACKGROUND MUSIC
Jeff Thompson | 2019/20 | jeffreythompson.org

Animation has always been paired with music. Before 
syncronized sound was possible, animated films were 
played with music as their only accompaniment, creating 
a sense of the scene as well as interest.

The p5.js Sound library lets us load an mp3 file and play 
it very easily. Plus, we can get info about the file like
its duration (so we can tie our animation to the audio's
progress), we can loop the sound, and know when it's done
(and trigger an event, like switching to another scene).

AUTOPLAY?
It would be super nice if our file could play automatically
when the page loads, but modern web browsers prevent this
kind of behavior. If you're old enough to remember auto-
playing ads with sound, you know why this is prevented!
Instead, we have to use some kind of user interaction to
trigger the sound playing. In this case, we watch to see
if the mouse is clicked to trigger the audio and animation.

AUDIO SOURCE
"Airgap" by Water Features:
https://www.freemusicarchive.org/music/Suburban_Temples/Water_Features/03_Airgap

CHALLENGES
1. Can you make the sun change color too in time with
   the audio?
2. Can you switch out the audio file for another? While
   the Sound library supports other audio formats, mp3
   will be the most widely supported.
3. Can you load a second piece of background music and
   have it triggered when the first one is done?
   Hint: check each frame if bgMusic.isPlaying() and use
   flags to control the scenes

*/

let bgMusic;  // the object we'll load the music into
let font;     // to let us know how to start


// like images, we use preload() to load the audio file
function preload() {
  soundFormats('mp3');
  bgMusic = loadSound('assets/WaterFeatures_Airgap.mp3');
}


function setup() {
  createCanvas(windowWidth, windowHeight);
}


function draw() {
  // if the music is playing (ie the mouse has
  // been pressed) then play the sunrise animation,
  // otherwise show an intro screen
  if (bgMusic.isPlaying()) {
    sunrise();
  }
  else {
    intro();
  }

  // note how easy our draw() is to read?
  // by moving the animations into separate functions,
  // the draw becomes an outline of the sketch with
  // the details passed off to the functions
}


function mousePressed() {

  // we first want to check if the music is loaded
  if (bgMusic.isLoaded()) {

    // if so, play the sound (and, optionally, loop it)
    bgMusic.play();
    // bgMusic.loop();
  }
}


// an intro screen explaining how to start the animation
function intro() {
  background(0,0,50);

  textFont('Helvetica');
  textSize(18);
  textAlign(CENTER, CENTER);
  fill(255);
  noStroke();
  text('[ click anywhere to start animation ]', width/2,height/2);
}


// an animation of a sunrise, tied to the playback
// of the music
function sunrise() {

  // we can get the current time and duration
  // of the audio file easily!
  let time =     bgMusic.currentTime();
  let duration = bgMusic.duration();
  
  // and use it to change color...
  let pct = map(time, 0,duration, 0,1);
  let dark =  color(0,0,30);
  let light = color(135,206,250);
  background(lerpColor(dark, light, pct));

  // ...or y position and size too!
  let y = map(time, 0,duration, height+300,height/4);
  let dia = map(time, 0,duration, 600,100);
  fill(255,255,100);
  noStroke();
  circle(width/2,y, dia);
}

