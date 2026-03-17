// 
int randomButtony, randombuttondimension,buttonY,buttonwidth,numberofbuttons=12;
float[] musicButtondivx= new float[numberofbuttons];

void poplationbuild(){
  buttonWidth =appwidth/13;
  buttonY= appheight*3/5;
  int randombuttonX= 0;
  randombuttonY = 0;
  randombuttondimension = appheight*1/20;
  //musicbuttondivX
  musicbuttondivX[0] =randomButtonX;
  for (int i=1; i<musicbuttondivX.length;i++){
    musicbuttondivX[i] = buttonwidth*i;
  }
}
void drawmusicdivs(float x,float y,float d){
  square( x,y,d);
}
void drawmusicdivs(float[] x, float y, float d){
  for (int i=1<musicbuttondivX.length; i++)
  { square( x[i],y,d);
  }
}

void musicsymbol(int index, float divX ,float divY, float dimension){
  
}

  
