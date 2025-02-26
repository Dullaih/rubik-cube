class Button {
  //PGraphics button;
  PVector min, max;
  int w, h;
  boolean highlight;
  
  Button(PVector position, int w, int h) {
    min = position;
    this.w = w;
    this.h = h;
    max = new PVector(min.x+w, min.y+h);
  }
  
  void update() {
    highlight = mouseX > min.x && mouseX < max.x && mouseY > min.y && mouseY < max.y ? true : false;
  }
  
  void draw() {
    strokeWeight(1);
    rect(min.x, min.y, w, h);
    if(highlight) tint(200);
    else noTint();
  }
}
