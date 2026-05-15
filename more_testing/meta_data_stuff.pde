class normalbuttons {
  float A, B, C, D;

  normalbuttons(float aposX, float bposY, float cwid, float dhei) {
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
    
  }

  boolean isMouseOver() {
    return mouseX > A && mouseX < A + C &&
           mouseY > B && mouseY < B + D;
  }

  void display() {
    rect(A, B, C, D);
  }
}



class song {
  String title, artist, album;
  AudioPlayer player;

  song(String t, String a, String album, AudioPlayer p) {
    title = t;
    artist = a;
    this.album = album;
    player = p;
  }
  
}

class songbox extends normalbuttons {
  song song;
  PImage cover;
  cover coverthing;
  songtext songTexT;

  songbox(float aposX, float bposY, float cwid, float dhei, song song, PImage cover) {
    super(aposX, bposY, cwid, dhei);
    this.song = song;
    //this.cover = cover;
    
    coverthing = new cover(A,B,C,D*0.7,cover);
    songTexT = new songtext(A,B*0.75,C,D*0.25,song);
  }

  @Override
  void display() {
rect(A,B,C,D);

coverthing.display();

songTexT.display();
  }
}
class cover{
float A,B,C,D;
PImage imag;

cover(float aposX,float bposY,float cwid,float dhei,PImage imag){
  A= aposX;
  B= bposY;
  C= cwid;
  D= dhei;
  this.imag = imag;
}
void display(){
if(imag!= null){
   image(imag,A,B,C,D);
}else{
  rect(A,B,C,D);
  text("no cover",A+24,B+60);
  //text("text",A+,B+);0r picture 
 }
 }
}
//
class songtext{
  float A,B,C,D;
  song song;
  
  songtext(float aposX,float bposY,float cwid ,float dhei,song song){
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
    this.song=song;
  }
  
  void display(){
  text(song.title,A+10,B+20);
  text(song.artist,A+10,B+25);//+23
  text(song.album,A+10,B+35);//+34
  }
}
//
class Newerplay extends normalbuttons {
  boolean isPlaying = false;
  song song;

  Newerplay(float aposX, float bposY, float cwid, float dhei , song song) {
    super(aposX, bposY, cwid, dhei);
    this.song = song;
  }

  @Override
  void display() {
    rect(A, B, C, D);

    if (song.player.isPlaying()) {
      pausethings();
    } else {
      triangl();
    }
  }

  void playing() {
   // isPlaying = !isPlaying;

    if (isPlaying) {
      
      song.player.play();
    } else {
     song.player.pause();
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
}
