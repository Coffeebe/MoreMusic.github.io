/* div for music interface
*/
//libraries
// classes -object
musicplay musicplay;
//
//global variables
//void settings() {}//end 
//note canvas based on display, see intermedate
//
void setup() {
  fullScreen();
  musicplay = new musicplay();
  musicplay.helloWorld();
  musicplay.draw();
  musicplay.errorStatment("hello world");
}//end
//
void draw() {}//end
//
void keyPressed() {}//end
//
void mousePressed(){}//end
//
//end driver
