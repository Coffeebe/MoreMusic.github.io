void inpectMetaData( AudioMetaData song ) {
  println("File Name:" + song.length());
  println("Length (in millisecond):" + song.length() );
  println("title:" + song.title());
  println("Author:" + song.author() );
  println("album:" + song.album() );
  println("date:" + song.date());
  println("comment:" + song.comment());
  println("Lyrics:" + song.lyrics());
  println("Track: " + song.track());
  println("Genre: " + song.genre() );
  println("Copyright: " + song.copyright() );
  println("Disc: " + song.disc() );
  println("Composer: " + song.composer() );
  println( "Orchestra: " + song.orchestra() );
  println("Publisher: " + song.publisher() );
  println("Encoded: " + song.encoded() );
  println(); 
}
