// Restart symbol in Processing

void setup() {
 // size(400, 400);
 fullScreen();
  background(255);
  smooth();

  translate(width/2, height/2);
  
  stroke(0);
  strokeWeight(12);
  noFill();

  // Draw circular arrow
  arc(0, 0, 180, 180, radians(40), radians(320));

  // Arrow head
  float angle = radians(40);
  float r = 90;

  float x = cos(angle) * r;
  float y = sin(angle) * r;

  pushMatrix();
  translate(x, y);
  rotate(angle + PI/2);

  line(0, 0, 20, 10);
  line(0, 0, 20, -10);

  popMatrix();
}
