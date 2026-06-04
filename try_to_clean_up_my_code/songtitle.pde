 class songtitle{ 
   
   
    float A,B,C,D;
   
 songtitle( float aposX,float bposY,float cwid, float dhei){
    A= aposX;
    B= bposY;
    C= cwid;
    D= dhei;
 }
   

   
   
   
void display(){
  //rect(A,B,C,D);
AudioMetaData meta = playlist[currentsong].getMetaData();

String title = meta.title();
String artist = meta.author();

  if (title == null || title.equals("")) {
      title = "Unknown Title";
    }
 if (artist == null || artist.equals("")) {
  artist = "Unknown Artist";
}

//textAlign(LEFT, TOP);
textSize(20);
fill(0,0,0);
text("Hello: "+title,A,B,C,B);

//text(artist,A*30,B+50);
}


}
