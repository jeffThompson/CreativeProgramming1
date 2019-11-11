
import processing.sound.*;

/*
BACKGROUND MUSIC
Jeff Thompson | 2019 | jeffreythompson.org

Demo here includes "Hot Butter" by the artist Popcorn
from 1972 – enjoy!

*/

SoundFile bgMusic;


void setup() {
  size(600,600);
  background(255);
  
  // load the audio file (aiff, wave, and mp3 supported)
  bgMusic = new SoundFile(this, "Popcorn.aiff");
  
  // play the file, optionally loop it too
  bgMusic.play();
  // bgMusic.loop();
  
  // get some info about the file...
  println("sample rate: " + bgMusic.sampleRate() + " Hz");
  println("num samples: " + nfc(bgMusic.frames()));
  println("duration:    " + bgMusic.duration() + " seconds");
}


void draw() {
  fill(255, 70);
  noStroke();
  rect(0,0, width,height);
  
  if (random(100) < 30) {    
    float dia = random(5,100);
    float x =   random(dia/2,width-dia/2);
    float y =   random(dia/2,height-dia/2);
    color c =   lerpColor(color(255,150,0), color(0,150,255), random(0,1));
    fill(c);
    ellipse(x,y, dia,dia);
  }
  
  if (!bgMusic.isPlaying()) {
    println("end of song, stopping!");
    exit();
  }
}
  
  
  
  
  
  
  
  
  
  
