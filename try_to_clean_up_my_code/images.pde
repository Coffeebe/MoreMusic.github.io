class image{


  float x, y, w, h;

  image(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    fill(0);
    textAlign(LEFT, CENTER);

    String title = playlist[currentsong]
      .getMetaData()
      .title();

    text(title, x, y);
  }
}
