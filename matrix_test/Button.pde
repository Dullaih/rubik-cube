public class Button {
  PVector min, max;
  int w, h;
  boolean highlight;
  
  Button(PVector position, int w, int h) {
    min = position;
    w = this.w;
    h = this.h;
    max = new PVector(min.x+w, min.y+h);
  }
  
  void update() {
    highlight = mouseX > min.x && mouseX < max.x && mouseY > min.y && mouseY < max.y ? true : false;
  }
  
  void draw() {
    rect(min.x, min.y, w, h);
    if(highlight) tint(100);
    else noTint();
  }
}
