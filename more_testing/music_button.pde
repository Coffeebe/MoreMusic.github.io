class musicbutton {
  float A, B, C, D;
 boolean isPlaying = false;
 boolean isMouseOver(){
  return mouseX > A && mouseX < A + C &&
         mouseY > B && mouseY < B + D;
}

  musicbutton(float aposX,float bposY, float cwid, float dhei) {
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
  }
  void buttomdisplay(){
    rect(A,B,C,D);
    
    if(isPlaying){pausethings();
    }
    else { triangl();
    } 
  }
  void skip(){ 
    rect(A,B,C,D);
    
    triangle(
    A+C*0.30,B+D*0.25,
    A+C*0.30,B+D*0.75,
    A+C*0.6,B+C*0.5
    );
     
    triangle(
    A+C*0.5,B+D*0.25,
    A+C*0.5,B+D*0.75,
    A+C*0.75,B+D*0.5
    );
  }
  void back(){
    rect(A,B,C,D);
    
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
  
  void play(){
    isPlaying = !isPlaying;
  }

  
}
