   recte[] r;
   musicbutton[] musicbu;
 //recte r;
 //recte r2;
 //recte r3;
 void setup(){
   fullScreen();
    r = new recte[5];
   r[0] = new recte(1769,0,150,100);
   r[1]= new recte( 0,1099,150,100);
   r[2] = new recte(370,250,1200,800);
   r[3] = new recte(400,300,1140,700);
   r[4] = new recte(400,900,100,100);
   //
   musicbu = new musicbutton[1];
   musicbu[0]= new musicbutton(500,500,600,600);
   //or (int i = 0; i < recte.length; i++) {
   //r[i] = new recte(i * 60 + 20, 150, 50, 40);}
 }
 //end
 void draw(){
   for (int i = 0; i < r.length; i++) {
    r[i].display();
}
  // r.display();
       musicbu[0].buttomdisplay();

 }
 void mousePressed(){
  if(musicbu[0].isMouseOver()){
    musicbu[0].play();
  }
}
 
 
/* void mousePressed(){
  if(mouseX > musicbu[0].A && mouseX < musicbu[0].A + musicbu[0].C &&
     mouseY > musicbu[0].B && mouseY < musicbu[0].B + musicbu[0].D){
    musicbu[0].play();  // ← THIS triggers the toggle
  }*/
  

 //end
 
 //java.io libary
