/* DIVs in Procedural voice
 -tba
 */
/*
B#1 play/stop/pause2s song >80% no pause 
B#2  song<20s next  song>20s next ff  song > 80% no ff
B#3 prev,fr
b#4 mute
b#5 shuffle 
B#6 loop-playlist loop single-song
is.playing()boolean
prefernces  saves  all/some
*/
//libaries - minium
//
// Global vaqirables
int AppWidth, AppHeight;
//
void setting() {
  //println(displayWidth, displayHeight);
  //int shortSide =(displayWidth > displayHeight) ? displayHeight : displayWidth;
  //shortSide *=0.9;//90% of origonal
  //size(shortSide,shortSide);
 // println("Display question",displayWidth,displayHeight,shortSide);
 // println( "canvas size key Variables for setup()" , width, height);
}// setting
//
void setup() {
  int shortSide= 1080;
  //size(shortSide,shortSide);
 
  size(600,400); //width, heigth
  fullScreen();
  AppWidth = displayWidth;
  AppHeight= displayHeight;
  div();
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
