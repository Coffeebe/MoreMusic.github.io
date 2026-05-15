class normalbuttons {
  float A, B, C, D;

  normalbuttons(float aposX, float bposY, float cwid, float dhei) {
    A = aposX;
    B = bposY;
    C = cwid;
    D = dhei;
    
  }
//
  boolean isMouseOver() {
    return mouseX > A && mouseX < A + C &&
           mouseY > B && mouseY < B + D;
  }
  //
  void display(){
  rect(A,B,C,D);
  }
  
}
class Newerplay extends normalbuttons {
  boolean isPlaying = false;

  Newerplay(float aposX, float bposY, float cwid, float dhei) {
    super(aposX, bposY, cwid, dhei);
    
  }

  @Override
  void display() {
    rect(A, B, C, D);

    if (isPlaying) {
      pausethings();
    } else {
     triangl();
    }
  }
void triangl() {
    triangle(
      A + C * 0.35, B + D * 0.25,
      A + C * 0.35, B + D * 0.75,
      A + C * 0.7,  B + D * 0.5
    );
  }

  void pausethings() {
    float barWidth = C * 0.15;
    float gap = C * 0.1;

    rect(A + C * 0.3, B + D * 0.25, barWidth, D * 0.5);
    rect(A + C * 0.3 + barWidth + gap, B + D * 0.25, barWidth, D * 0.5);
  }
   void togglePlay() {
    isPlaying = !isPlaying;
  }
}
