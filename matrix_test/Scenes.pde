class SceneTitle {
  Button sandbox;
  Button next;
  
  SceneTitle() {
    sandbox = new Button(new PVector(0, 0), 100, 50, "RUBIK'S CUBE");
    next = new Button(new PVector(400, 0), 100, 50, "LEARN");
    println(next.min + " | " + next.max);
  }
  
  void update() {
    sandbox.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    sandbox.draw();
    next.draw();
    
    
    
    //late update
    if(sandbox.clicked) {
      scene = 8;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneMatrix {
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneMatrix() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "WHAT ARE MATRICES?");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Matrices are data structures that store transformations (rotation, translation, and scale) that can be applied to many vectors at the same time.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
    
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

class SceneMult {
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneMult() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "MATRIX MULTIPLICATION");
    textSize(12);
    ex = new Button (new PVector(0, height-200), width, 200, "Matrix multiplication differs greatly from normal multiplication and more rules are applied when calculating the product of two matrices:\n" +
                     "     1. The number of COLUMNS in the first matrix must equal the number of ROWS in the second\n" +
                     "     2. It's not commutative; A × B ≠ B × A\n" +
                     "     3. To multiply matrices, each row of numbers in the first matrix is multiplied individually\n      by a column of the second matrix. Then the products of these multiplications are added\n      together." +
                     "The row and column multiplied create the coordinate that the sum value will be\n      placed in. Ex. the sum of the first row multiplied by the second column will be placed in row 1\n      column 2 of the resulting matrix");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
    
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

class SceneIdentity {
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneIdentity() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "IDENTITY MATRICES");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Identity matrices function the same as the identity property in multiplication and are scalable to different sized of matrices." +
                    "Whenever a matrix is multiplied by an identity matrix of the same size the product is equal to the original matrix.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
    
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
  Button title;
  Button ex;
  
  SceneRotation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "ROTATION");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Rotation matrices use a 2x2 matrix that gets multiplied by a vector. A 2D vector can be converted into a 1x2 matrix to perform the multiplication.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
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
  Button title;
  Button ex;
  
  SceneTranslation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "TRANSLATION");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Translation matrices use a 3x2 matrix consisting of a 2x2 identity matrix with the desired translation in the third column multiplied by the original vector with a 1x1 identity matrix" +
                    "in the third column in order to make the multiplication possible.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
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
  Button title;
  Button ex;
  
  SceneScale() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "SCALING");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Similar to rotation, scalar matrices use a 2x2 matrix multiplied by the original vector to perform multiplication.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
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
  Button title;
  Button ex;
  
  SceneTransformation() {
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(20);
    title = new Button(new PVector(100, 0), 300, 50, "HOW DO THEY INTERACT?");
    textSize(12);
    ex = new Button (new PVector(0, height-100), width, 100, "Since translation matrices use a 3x2 matrix, in order for matrix multiplication to be possible all of the transformation matrices must be expanded to 3x3. This is done by applying " +
                    "the values of the 3x3 identity matrix to all of the new values.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    last.draw();
    next.draw();
    textSize(20);
    title.draw();
    textSize(12);
    ex.draw();
    
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
