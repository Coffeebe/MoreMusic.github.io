class musicplay{
  //
  //global variables
  float[] divs;
  //
  //contructor a nd mutiple construtor( diff parameters)
  musicplay(){}
 //end
 musicplay(int numberofrect){
 this.divs = new float[numberofrect*4];
 }
  //
  //music(X int){}
  void draw() {
    errorStatment("hello world");
    //println ("2 hello world");
  }//end
  //
  // function or behaivours
  void rect(float x,float y, float w, float h){
    rect(x,y,w,h);
  }
  //
  void divarray(){
    //end For( int i=0 i<divs.length; i++){}
    //div[0]= ;
  }
  //getters
  //
  //setters
  //
  //output - println
  void helloWorld()
  {println("1 hello world");
  }//end
  void errorStatment(String description){
    println(description);
  }
  void errorStatment(String description, float variable){
  println(description, variable);

  }
  
  
}//end
