/*Iclass normalbuttons{
  float A,B,C,D;
  int Type;
   boolean isMouseOver(){
return mouseX > A && mouseX < A + C &&
         mouseY > B && mouseY < B + D;
       }
 normalbuttons(float aposX,float bposY,float cwid, float dhei){
    A= aposX;
    B= bposY;
    C= cwid;
    D= dhei;
    //Type = t; , int t
 }
  
  void display(){
    //rect(A,B,C,D);

    //line();
  }
  //end
  class song {
  String title,artist,album;
  AudioPlayer player;
  
  song(String t,String a, String album,Audioplayer p){
  title = t;
  artist = a;
  this.album = album;
  player = p;
  }
  }
 //end
 class songbox extends normalbuttons{
   song song;
   PImage cover;
    SongBox(float aposX, float bposY, float cwid, float dhei, song song, PImage cover){
super(aposX,bposY,cwid,dhei);
this.song = song;
this.cover = cover;
    }
    //end
 void display(){
   rect(aposX,bposY,cwid,dhei);
   
   if (cover != null){
     image(cover,aposX,bposY,cwid,dhei);//(aposX+number,bposY+number,number,number)
   } else {
     rect(aposX,bposY,cwid,dhei);
     text();
   }
   
   
   text(song.title,aposX,bposY);
   text(song.artist,aposX,bposY);
   text(song.album,aposX,bposY);
   
 }
 }
 
}

class Newerplay extends normalbuttons {
  boolean isPlaying = false;
  
  Newerplay(float aposX,float bposY,float cwid,float dhei){
 super(aposX,bposY,cwid,dhei);
}
@Override
void display(){
   rect(A,B,C,D);
  //super.display();
  if (isPlaying) { 
     pausethings();
  }else {
   triangl();
}
}
//end
void playing(AudioPlayer player){
  isPlaying =!isPlaying;
  
  if(isPlaying) {
   player.play();
 } else {
   player.pause();
 }
}
//end
void triangl(){ 
    triangle(
    A+C*0.35,B+D*0.25,
    A+C*0.35,B+D*0.75,
    A+C*0.7,B+D*0.5);
  }
    void pausethings(){
    
  float barWidth = C * 0.15;  
  float gap = C * 0.1;  
    
  rect(A + C * 0.3, B + D * 0.25, barWidth, D * 0.5);  
  rect(A + C * 0.3 + barWidth + gap, B + D * 0.25, barWidth, D * 0.5);  
}
  
}
*/
