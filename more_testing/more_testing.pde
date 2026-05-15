import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

   Newerplay button;
   AudioPlayer p;
   recte[] r;
   musicbutton[] musicbu;
   Minim minim;
   PImage cover;
//Newerplay[] newerplay;
  song Songu;
  songbox mybox;
 //recte r;
 //recte r2;
 //recte r3;
 void setup(){
   fullScreen();
//    minim = new Minim(this);
//  p = minim.loadFile("song.mp3");
  //
//  if (p == null) {
//  println("Audio file failed to load!");
 /* return;
}
  //
  AudioMetaData meta = p.getMetaData();  
  
if (meta == null) {
  println("No metadata found, using defaults");
}
    //
    String title = meta.title();
if (title == null || title.equals("")) title = "Unknown Title";

String artist = meta.author();
if (artist == null || artist.equals("")) artist = "Unknown Artist";

String album = meta.album();
if (album == null || album.equals("")) album = "Unknown Album";

Songu = new song(title, artist, album, p);*/
    //
  //cover = loadImage("cover.jpg");
  //song = new Song("
  //mybox = new songbox(50,50,150,180,Songu,cover);
  //button = new Newerplay(220,100,80,80,Songu);
  //
    r = new recte[5];
   r[0] = new recte(1769,0,150,100);
   r[1]= new recte( 0,1099,150,100);
   r[2] = new recte(370,250,1200,800);
   r[3] = new recte(400,300,1140,700);
   r[4] = new recte(400,900,100,100);
   //
   //currently testing
   musicbu = new musicbutton[4]; 
   musicbu[0]= new musicbutton(500,900,100,100,0);
   musicbu[1]= new musicbutton(600,900,100,100,1);
   musicbu[2]= new musicbutton(700,900,100,100,2);
   musicbu[3]= new musicbutton(800,900,100,100,3);
   //
   //button = new Newerplay(500,300,300,300,song);
   //newerplay = new Newerplay[1];
  //Newerplay newerplay ;
  // newerplay[0]= new Newerplay(900,900,100,100,0);
   //or (int i = 0; i < recte.length; i++) {
   //r[i] = new recte(i * 60 + 20, 150, 50, 40);}
 }
 //end
 void draw(){
   //for (int i = 0; i < r.length; i++) {
   // r[i].display();
//}
//
//mybox.display();
//button.display();
//
 for( recte R : r){
  R.display();
}
//
//for( Newerplay b :newerplay ){
 // b.display();}
  // r.display();
  for(musicbutton M : musicbu){
    M.buttomdisplay();
  }
      /* musicbu[0].buttomdisplay();
       musicbu[1].buttomdisplay();
       musicbu[2].buttomdisplay();
       musicbu[3].buttomdisplay();
       */
       //musicbu[1].skip();
      // musicbu[2].back();
 }
 void mousePressed(){
  /* for (int i=0; i < musicbu.length;i++) {
     if (musicbu[i].isMouseOver()){
       musicbu[i].play();}}
     }*/
   
  //if(musicbu[0].isMouseOver()){
   // musicbu[0].play();
  
  
  //for(Newerplay b : newerplay ){
  //  if(b.isMouseOver()){
    //  b.playing();// put song.player; there later}
  //
//if (button.isMouseOver()){
 //   button.playing();
//}
  //
 for(musicbutton b : musicbu){
  if(b.isMouseOver()){
    if(b.Type == 0 ){
    b.play();
    } else if (b.Type == 1){
      print("coffee");
    }
    else if (b.Type == 2){
   print("tea");
  }
  else if(b.Type == 3){
    
  }
  
  }
  }
//  if (button.isMouseOver()) {
//  button.playing();}
  
  }
 
 
 // if (button.isMouseOver()) {
  //button.playing();}
  
   
/* void mousePressed(){
  if(mouseX > musicbu[0].A && mouseX < musicbu[0].A + musicbu[0].C &&
     mouseY > musicbu[0].B && mouseY < musicbu[0].B + musicbu[0].D){
    musicbu[0].play();  // ← THIS triggers the toggle
  }*/
  

 //end
 
 //java.io libary
