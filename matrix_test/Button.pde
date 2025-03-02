class Button {
  //PGraphics button;
  PVector min, max;
  int w, h;
  boolean highlight;
  String text;
  public boolean clicked;
  
  Button(PVector position, int w, int h, String text) {
    min = position;
    this.w = w;
    this.h = h;
    this.text = text;
    max = new PVector(min.x+w, min.y+h);
  }
  
  void update() {
    highlight = mouseX > min.x && mouseX < max.x && mouseY > min.y && mouseY < max.y ? true : false;
    if(highlight) clicked = Mouse.onDown(Mouse.LEFT);
  }
  
  void draw() {
    if(highlight) {
      fill(220);
      textSize(16);
    }
    else {
      fill(200);
      textSize(12);
    }
    rect(min.x, min.y, w, h);
    fill(0);
    text(text, min.x+w/2, min.y+h/2);
  }
}
