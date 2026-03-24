class musicbutton {
  float A, B, C, D;
 boolean isplaying = false;

  musicbutton(float aposX,float bposY, float cwid, float dhei) {
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
  }
  void buttomdisplay(){
    rect(A,B,C,D);
    
    
  }
  void triangle(){
    triangle(
    A+C*0.3,B+D*0.8,
    A+C*0.3,B+D*0.4,
    A+C*0.8,B+D*0.5);
  }
  
  
  void pausethings(){}
}
