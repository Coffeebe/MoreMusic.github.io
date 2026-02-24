 
 int numberofdiv = 8;
 int numberofpara = 6;
 float div[] = new float[numberofpara*numberofdiv];
 
 
 
 
 void divs(){
   div[0] = appWidth*1/5;
   div[1] = appHeight*1/5;
   div[2] = appWidth*1/2;
   div[3]= appHeight*1/2;
   
  float referent = div[2]/15;
  float column1 = div[0] + referent;
  float colunm2 = column1 + referent;
  float colunm3 = colunm2 + referent;
  float colunm4 = colunm3 + referent;
  float row1 = div[1] + referent;
  float row2 = row1 + referent;
  float row3 = row2 + referent;
  
  //div[i]=if(i%5==0)column1;
  
  
  
  
  for(int j=0; j<div.length; j+=4) {
   rectdiv(div[j], div[j+1], div[j+2], div[j+3]);
 }
 }
 void rectdiv(float x, float y, float w, float h){
   rect(x,y,w,h);
 }
 
 
