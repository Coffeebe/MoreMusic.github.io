
 recte r;
 recte r2;
 void setup(){
   fullScreen();
   r = new recte(1769,0,150,100);
   r2 = new recte( 0,1099,150,100);
   //or (int i = 0; i < recte.length; i++) {
   //r[i] = new recte(i * 60 + 20, 150, 50, 40);}
 }
 //end
 void draw(){
   r.display();
   r2.display();
 }
 //end
 
 
