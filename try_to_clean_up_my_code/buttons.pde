class normalbuttons {
  float A, B, C, D;

  normalbuttons(float aposX, float bposY, float cwid, float dhei) {
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
    
  }
//
  boolean isMouseOver() {
    return mouseX > A && mouseX < A + C &&
           mouseY > B && mouseY < B + D;
  }
  //
  void display(){
  rect(A,B,C,D);
  }
  
}
class Newerplay extends normalbuttons {
  boolean isPlaying = false;

  Newerplay(float aposX, float bposY, float cwid, float dhei) {
    super(aposX, bposY, cwid, dhei);
    
  }

  @Override
  void display() {
    rect(A, B, C, D);

    if (isPlaying) {
      pausethings();
    } else {
     triangl();
    }
  }
void triangl() {
    triangle(
      A + C * 0.35, B + D * 0.25,
      A + C * 0.35, B + D * 0.75,
      A + C * 0.7,  B + D * 0.5
    );
  }

  void pausethings() {
    float barWidth = C * 0.15;
    float gap = C * 0.1;

    rect(A + C * 0.3, B + D * 0.25, barWidth, D * 0.5);
    rect(A + C * 0.3 + barWidth + gap, B + D * 0.25, barWidth, D * 0.5);
  }
   void togglePlay() {
    isPlaying = !isPlaying;
    AudioPlayer song = playlist[currentsong];
  if (isPlaying) {
    song.play();
  } else {
    song.pause();
  }
    
  }
  void mousePressed(){ // not in use
 if (isMouseOver()) {
    togglePlay();
  }

  // button.togglePlay();
  
}
  
}
class restart extends normalbuttons {
  
  restart(float aposX, float bposY, float cwid, float dhei) {
    super(aposX, bposY, cwid, dhei);
    
  }
void display(){
  rect(A,B,C,D);
  // try to code retart icon
}
void restartthing(){
//there
}

void mousePressed() { // not in use
    if (isMouseOver()) {
      restartSong();
    }
  }

  void restartSong() {
   // song.cue(0);   // go to start
    //song.play();   // start again
  playlist[currentsong].rewind(); //song.rewind();
    //button.isPlaying = true;
  }
}
class next extends normalbuttons{

 next(float aposX, float bposY, float cwid, float dhei) {
    super(aposX, bposY, cwid, dhei);
    
  }
  void display(){
  rect(A,B,C,D);
  nextshape();
  }
  //
  void nextshape(){
    triangle(
      A + C * 0.25, B + D * 0.25,
      A + C * 0.25, B + D * 0.75,
      A + C * 0.55, B + D * 0.5
    );
    triangle(
    A + C * 0.45, B + D * 0.25,
    A + C * 0.45, B + D * 0.75,
    A + C * 0.80, B + D* 0.5
    );
  }
  //
void nextSong() {
  playlist[currentsong].pause();
  playlist[currentsong].rewind();

  currentsong = (currentsong + 1) % playlist.length;

  playlist[currentsong].play();
  button.isPlaying = true;
}
//
}
class prev extends normalbuttons{

 prev(float aposX, float bposY, float cwid, float dhei) {
    super(aposX, bposY, cwid, dhei);
    
  }
  void display(){
  rect(A,B,C,D);
  prevshape();
  }
  
  void prevshape(){
     triangle(
      A + C * 0.75, B + D * 0.75,
      A + C * 0.75, B + D * 0.25,
      A + C * 0.40, B + D * 0.5
    );
    triangle(
    A + C * 0.55, B + D * 0.75,
    A + C * 0.55, B + D * 0.25,
    A + C * 0.20, B + D* 0.5
    ); 
    
  }
  
  void prevSong() {
  playlist[currentsong].pause();
  playlist[currentsong].rewind();

  currentsong--;
  if (currentsong < 0) currentsong = playlist.length - 1;

  playlist[currentsong].play();
  button.isPlaying = true;
}
}
