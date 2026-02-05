import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup() {
  size(400, 200);
  
  minim = new Minim(this);
  song = minim.loadFile("../music/..mp3"); 
}

void draw() {
  background(30);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(16);
  
  text("Press P to Play / Pause\nPress R to Rewind", width/2, height/2);
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if (song.isPlaying()) {
      song.pause();
    } else {
      song.play();
    }
  }
  
  if (key == 'r' || key == 'R') {
    song.rewind();
  }
}

void stop() {
  song.close();
  minim.stop();
  super.stop();
}
