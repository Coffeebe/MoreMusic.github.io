import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

rect[] r;
Newerplay button;
//
int appwidth,appheight;
//
void setup(){
  fullScreen();
 int appwidth = displayWidth;
int appheight = displayHeight;
  r = new rect[3];
  r[0] = new rect(200,100,100,100);
  r[1] = new rect(200,200,appwidth*0.80,appheight*0.70);
  r[2] = new rect(appwidth*0.15,appheight*0.70,100,100);
 // r = new rect(100,100,100,100);
 //
 button = new Newerplay(appwidth*0.15,appheight*0.70,100,100);
}
//
void draw(){

//r.display();
  
for(int i = 0; i < r.length; i++){
 r[i].display();
}
//for( rect R : r){
 // R.display();
//}
button.display();

}
//
void mousePressed(){
  button.togglePlay();
}
//
void keyPressed(){
}
//
