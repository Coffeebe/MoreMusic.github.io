class musicbutton {
  float A, B, C, D;
 boolean isPlaying = false;

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
  void triangl(){
    triangle(
    A+C*0.2,B+D*0.1,
    A+C*0.2,B+D*0.9,
    A+C*0.9,B+D*0.8);
  }
  
  
  void pausethings(){
    rect(200,200,200,200);
    rect(200+200,200+200,200+200,200+200);
    
    
  }
  
  void play(){
    isPlaying = !isPlaying;
  }
}
