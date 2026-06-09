class image{
// mp3agic is weird
  float A,B,C,D;
 
 
 image(float aposX,float bposY,float cwid,float dhei){
    A= aposX;
    B= bposY;
    C= cwid;
    D= dhei;
 }
 Mp3File mp3file = new Mp3File("Red Heart (Inst.) (320).mp3");
if (mp3file.hasId3v2Tag()) {
  ID3v2 id3v2Tag = mp3file.getId3v2Tag();
  byte[] imageData = id3v2Tag.getAlbumImage();
  if (imageData != null) {
    String mimeType = id3v2Tag.getAlbumImageMimeType();
    // Write image to file - can determine appropriate file extension from the mime type
    RandomAccessFile file = new RandomAccessFile("album-artwork", "rw");
    file.write(imageData);
    file.close();
  }
}

 
 
 void imagestest(){
 
 }
  void display(){}
}
