class normalbuttons{
  float A,B,C,D;
  int Type;
   boolean isMouseOver(){
return mouseX > A && mouseX < A + C &&
         mouseY > B && mouseY < B + D;
       }
 normalbuttons(float aposX,float bposY,float cwid, float dhei,int t){
    A= aposX;
    B= bposY;
    C= cwid;
    D= dhei;
    Type = t;
 }
  
  void display(){
    //rect(A,B,C,D);

    //line();
  }
 
}

class Newerplay extends normalbuttons {
  boolean isPlaying = false;
  
  Newerplay(float aposX,float bposY,float cwid,float dhei,int t){
 super(aposX,bposY,cwid,dhei,t);
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
void playing(){
  isPlaying =!isPlaying;
}
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
