import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
//AudioPlayer song;
AudioPlayer[] playlist;
int currentsong = 0;
rect[] r;
//
//buttons
Newerplay button;
restart restartbutton;
next Next;
prev Prev;
//
//
songtitle songthing;
//
int appwidth,appheight;

//
void setup(){
  fullScreen();
  appwidth = displayWidth;
 appheight = displayHeight;

minim = new Minim(this);
//song = minim.loadFile("Red Heart (Inst.) (320).mp3");
playlist = new AudioPlayer[4];

playlist[0] = minim.loadFile("Red Heart (Inst.) (320).mp3");
playlist[1] = minim.loadFile("GODDESS OF VICTORY_ NIKKE _ OVER THE HORIZON Story Event BGM 「ASTRONAUT AIRLINES」 - Full Ver. - (320 Kbps).mp3");
playlist[2] = minim.loadFile("Ga1ahad and Scientific Witchery - Mili _ Covered by Miori Celesta & Chikafuji Lisa - (320 Kbps).mp3");
playlist[3]= minim.loadFile("Alohaii - Lovesick Loop (feat. Kiyon) [MV] - (320 Kbps).mp3");
//
  r = new rect[3];
  r[0] = new rect(200,100,100,100);
  r[1] = new rect(200,200,appwidth*0.80,appheight*0.70);
  r[2] = new rect(appwidth*0.15,appheight*0.70,100,100);
 // r = new rect(100,100,100,100);
 //
 button = new Newerplay(appwidth*0.15,appheight*0.70,100,100);//play/pause
 restartbutton = new restart(appwidth*0.20,appheight*0.70,100,100);//restart song
 Next = new next(appwidth*0.25,appheight*0.70,100,100);// next
 Prev = new prev(appwidth*0.30,appheight*0.70,100,100);
 //
 songthing = new songtitle(appwidth*0.4,appheight*0.3,900,100);
 
}
//
void draw(){
  background(200);
//println(playlist[currentsong].getMetaData().title());
println(playlist[currentsong].getMetaData().author());
//r.display();
  
for(int i = 0; i < r.length; i++){
 r[i].display();
}
//for( rect R : r){
 // R.display();
//}
button.display();
restartbutton.display();
Next.display();
Prev.display();
//
songthing.display();
//
}
//
void mousePressed(){
 //button.mousePressed();
 //restartbutton.mousePressed();
  // button.togglePlay();
  if (button.isMouseOver()) {
    button.togglePlay();
  }

  if (restartbutton.isMouseOver()) {
    restartbutton.restartSong();
  }
  if(Next.isMouseOver()){ 
    Next.nextSong();
  }
  
  if(Prev.isMouseOver()){
    Prev.prevSong();
  }
}

//
void keyPressed(){
}
//
