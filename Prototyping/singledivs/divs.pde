//
// Global vaqirables
int numberofDivs= 1;
int numberofParameters = 4;
float[]div = new float[numberofParameters*numberofDivs];
//
void div() {
  //note even-odd for width-height
  float paperwidth = 276;
  float paperheight = 216;
  div[0] = AppWidth *70 / paperwidth;
  div[1] = AppHeight *54/ paperheight;
  div[2] = AppWidth * 134/ paperwidth;
  div[3] = AppHeight * 70/paperheight;
  div[4] = AppWidth * 70/paperheight;
  div[5] = AppHeight * 54/paperwidth;
  div[6] = AppWidth * 134/paperheight;
  div[7] = AppHeight * 70/paperwidth;
  //div[] = AppWidth * /paperheight;
  //div[] = AppHeight * /paperwidth;
   //div[] = AppWidth * /paperheight;
  //div[] = AppHeight * /paperwidth;
  
  //
  //
 rectdiv(div[0],div[1],div[2],div[3]);
 rectdiv(div[4],div[5],div[6],div[7]);
 //
 for(int i=0; i<div.length; i+=4){
   rectdiv(div[i], div[i+1], div[i+2], div[i+3]);
 } 
}//end divs

void rectdiv(float x, float y, float w,float h) {
rect(x,y,w,h);
}
//End Subprogram
