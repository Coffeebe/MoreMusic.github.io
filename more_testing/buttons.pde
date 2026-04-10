class normalbuttons{
  float A,B,C,D;
   boolean isMouseOver(){
return mouseX > A && mouseX < A + C &&
         mouseY > B && mouseY < B + D;
       }
 void buttons( float aposX,float bposY,float cwid, float dhei){
    A= aposX;
    B= bposY;
    C= cwid;
    D= dhei;
 }
  
  void exit(){
    rect(A,B,C,D);
    //line();
    
  
  }
 
}
