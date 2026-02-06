/* DIVs in Procedural voice
 -tba
 */

//libaries - minium
//
// Global vaqirables
int AppWidth, AppHeight;
//
void setting() {
  println(displayWidth, displayHeight);
  int shortSide =(displayWidth > displayHeight) ? displayHeight : displayWidth;
  shortSide *=0.9;//90% of origonal
  size(shortSide,shortSide);
  println("Display question",displayWidth,displayHeight,shortSide);
  
}// setting
//
void setup() {
  int shortSide= 1080;
  size(shortSide,shortSide);
 
  //size(600,400); //width, heigth
  //fullScreen();
  //AppWidth = displayWidth;
  //AppHeight= displayHeight;
} // end setup
//
void draw() {
} //end draw
//
void mousePressed() {
} //end mousePressed
//
void keyPressed() {
} //end keyPressed
//
//end main program
