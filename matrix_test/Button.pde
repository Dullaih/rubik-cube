class Button {
  //PGraphics button;
  PVector min, max;
  int w, h;
  boolean highlight = false;
  String text;
  public boolean clicked;
  float tWidth, tOffsetX, tOffsetY;
  Button home;
  Button reset;
  
  Button(PVector position, int w, int h, String text) {
    min = position;
    this.w = w;
    this.h = h;
    this.text = text;
    max = new PVector(min.x+w, min.y+h);
    tWidth = textWidth(text);
    if(tWidth > w) {
      tOffsetX = tOffsetY = 5;
    }
    else {
      tOffsetX = (w - tWidth)/2;
      tOffsetY = h/2 - 5;
    }
  }
  
  void update() {
    highlight = mouseX > min.x && mouseX < max.x && mouseY > min.y && mouseY < max.y ? true : false;
    if(highlight) clicked = Mouse.onDown(Mouse.LEFT);
  }
  
  void draw() {
    strokeWeight(1);
    if(highlight) {
      fill(240);
    }
    else {
      fill(200);
    }
    rect(min.x, min.y, w, h);
    fill(0);
    //text(text, min.x+w/2, min.y+h/2);
    text(text, min.x+tOffsetX, min.y+tOffsetY, max.x-tOffsetX, max.y-tOffsetY);
  }
}
