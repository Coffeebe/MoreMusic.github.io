//
// Global variables
int appwidth,appheight;
int buttonofnumber = 12;
float[] musicbuttonDivx=new float[buttonofnumber];
//
void setup(){
fullScreen();
int appwidth = displayWidth;
int appheight = displayHeight;
//
int buttonwidth = appwidth/13;//numofbuttons in row *  padding
int buttonY = appheight*3/5;
int randomButtonX =0;
int randombuttonY = 0;
float randomButtondimension = appheight*1/20;
//musicbuttonDivx
musicbuttonDivx[0]= randomButtonX;
for(int i=1; i<musicbuttonDivX.length;i++){
  musicbuttonDivx[i] =buttonwidth*i;

//float musicbuttondivY_random= ;
//float musicbuttondivY;
//float musicbuttondivdimsion =widthofbutton;
//

//
}
//
void draw(){
}
//
void keyPressed(){
}
//
void mousePressed(){
}
