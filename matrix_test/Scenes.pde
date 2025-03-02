class SceneTitle {
  SceneTitle() {
  }
  
  void update() {
  }
  
  void draw() {
    background(100);
  }
}

class SceneMatrix {
  Button last;
  Button next;
  
  SceneMatrix() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    
    
    
    //late update
    if(last.clicked) {
      scene -=1;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneRotation {
  Button last;
  Button next;
  
  SceneRotation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
  }
  
  void update() {
    last.update();
    next.update();
    
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    
    //late update
    if(last.clicked) {
      scene -=1;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneTranslation {
  Button last;
  Button next;
  
  SceneTranslation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
  }
  
  void update() {
    last.update();
    next.update();
    
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    
    //late update
    if(last.clicked) {
      scene -=1;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneScale {
  Button last;
  Button next;
  
  SceneScale() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
  }
  
  void update() {
    last.update();
    next.update();
    
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    
    //late update
    if(last.clicked) {
      scene -=1;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneTransformation {
  Button last;
  Button next;
  
  SceneTransformation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
  }
  
  void update() {
    last.update();
    next.update();
    
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    
    //late update
    if(last.clicked) {
      scene -=1;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}
