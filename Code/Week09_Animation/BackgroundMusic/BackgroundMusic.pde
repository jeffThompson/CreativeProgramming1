
import processing.sound.*;

/*
BACKGROUND MUSIC
Jeff Thompson | 2019 | jeffreythompson.org

Animation has always been paired with music. Before syncronized
sound was possible, animated films were played alongside music,
creating a sense of the scene as well as interest. You could
consider doing the same with your animation!

Processing's Sound library lets us load a wav, aiff, or mp3 file
and play it very easily. This can be looped or, as in this
example, we can watch for the end of the song and trigger an 
event, either another scene or the sketch quitting.

Demo here includes "Hot Butter" by the artist Popcorn
from 1972 – enjoy!

*/

SoundFile bgMusic;


void setup() {
  size(600,600);
  background(255);
  
  // load the audio file (aiff, wave, and mp3 supported)
  bgMusic = new SoundFile(this, "Popcorn.aiff");
  
  // play the file (optionally loop it too)
  bgMusic.play();
  // bgMusic.loop();
  
  // get some info about the file...
  println("sample rate: " + bgMusic.sampleRate() + " Hz");
  println("num samples: " + nfc(bgMusic.frames()));
  println("duration:    " + bgMusic.duration() + " seconds");
}


void draw() {
  
  // semi-transparent background
  fill(255, 70);
  noStroke();
  rect(0,0, width,height);
  
  // randomly draw some circles onscreen
  if (random(100) < 30) {    
    float dia = random(5,100);
    float x =   random(dia/2,width-dia/2);
    float y =   random(dia/2,height-dia/2);
    color c =   lerpColor(color(255,150,0), color(0,150,255), random(0,1));
    fill(c);
    ellipse(x,y, dia,dia);
  }
  
  // if the music has stopped (*not* playing) then
  // let us know and quit
  if (!bgMusic.isPlaying()) {
    println("end of song, stopping!");
    exit();
  }
}
  
 
