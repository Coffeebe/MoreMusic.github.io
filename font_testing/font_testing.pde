/*
 String[] fontlist = PFont.list(); 
 printArray(fontlist);
 
 String Serifplain="Serif.plain";
 font = createFont(Serifplain,fontsize);
 float fontsize = appHeight;
 */
 color resetiuk = #ffffff;
 void drawingtext (PFont f, float fs,String string, float X,float Y, float W, Float H, int xalign, int yalign){
   
   textAlign(xalign,yalign);
   
   textFont(f,fs);
   //text(font,fontsize3);
   text(string,X,Y,W,H);
   fill(resetiuk);
 }
 //text( title, quitX quitY, quitwidth,quitHeight);
 
 
