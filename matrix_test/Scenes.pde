class SceneTitle {
  PImage matrixPicture;
  Button sandbox;
  Button next;
  Button title;
  
  SceneTitle() {
    matrixPicture = loadImage("matrixbrackets.png");
    textSize(90);
    title = new Button(new PVector(width/2-250, 100), 500, 150, "MATRICES");
    textSize(40);
    sandbox = new Button(new PVector(100, height/2), 300, 100, "RUBIK'S CUBE");
    next = new Button(new PVector(width-400, height/2), 300, 100, "LEARN");
    println(next.min + " | " + next.max);
  }
  
  void update() {
    sandbox.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(500, 220);
    image(matrixPicture, 0, height/2-60);
    image(matrixPicture, width-500, height/2-60);
    sandbox.draw();
    next.draw();
    textSize(90);
    title.draw();
    textSize(40);
    
    
    
    //late update
    if(sandbox.clicked) {
      scene = 9;
      switchScene();
    }
    if(next.clicked) {
      scene +=1;
      switchScene();
    }
  }
}

class SceneMatrix {
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneMatrix() {
    matrixPicture = loadImage("basematrix.png");
    textSize(20);
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "WHAT ARE MATRICES?");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Matrices are data structures that store transformations (rotation, translation, and scale) that can be applied to many vectors at the same time.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneMult() {
    matrixPicture = loadImage("matrixmult.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "MATRIX MULTIPLICATION");
    textSize(20);
    ex = new Button (new PVector(0, height-150), width, 150, "Matrix multiplication differs greatly from normal multiplication and more rules are applied when calculating the product of two matrices:\n" +
                     "     1. The number of COLUMNS in the first matrix must equal the number of ROWS in the second\n" +
                     "     2. It's not commutative; A × B ≠ B × A\n" +
                     "     3. To multiply matrices, each row of numbers in the first matrix is multiplied individually by a column of the second matrix. Then the products of these multiplications are added together." +
                     "The row and column multiplied create the coordinate that the sum value will be placed in. Ex. the sum of the first row multiplied by the second column will be placed in row 1 column 2 of the resulting matrix");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneIdentity() {
    matrixPicture = loadImage("matrixidentity.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "IDENTITY MATRICES");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Identity matrices function the same as the identity property in multiplication and are scalable to different sized of matrices." +
                    "Whenever a matrix is multiplied by an identity matrix of the same size the product is equal to the original matrix.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneRotation() {
    matrixPicture = loadImage("matrixrotation.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "ROTATION");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Rotation matrices use a 2x2 matrix that gets multiplied by a vector. A 2D vector can be converted into a 1x2 matrix to perform the multiplication.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneTranslation() {
    matrixPicture = loadImage("matrixtranslation.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "TRANSLATION");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Translation matrices use a 3x2 matrix consisting of a 2x2 identity matrix with the desired translation in the third column multiplied by the original vector with a 1x1 identity matrix" +
                    "in the third column in order to make the multiplication possible.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneScale() {
    matrixPicture = loadImage("matrixscale.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "SCALING");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Similar to rotation, scalar matrices use a 2x2 matrix multiplied by the original vector to perform multiplication.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 100);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneTransformation() {
    matrixPicture = loadImage("matrixtransform.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "HOW DO THEY INTERACT?");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "Since translation matrices use a 3x2 matrix, in order for matrix multiplication to be possible all of the transformation matrices must be expanded to 3x3. This is done by applying " +
                    "the values of the 3x3 identity matrix to all of the new values.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 600);
    image(matrixPicture, 100, 50);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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

class SceneThreeD {
  PImage matrixPicture;
  Button last;
  Button next;
  Button title;
  Button ex;
  
  SceneThreeD() {
    matrixPicture = loadImage("matrixthreed.png");
    last = new Button(new PVector(0, 0), 100, 50, "PREVIOUS");
    next = new Button(new PVector(width-100, 0), 100, 50, "NEXT");
    textSize(32);
    title = new Button(new PVector(width/2-200, 0), 400, 100, "3D CONVERSIONS");
    textSize(20);
    ex = new Button (new PVector(0, height-100), width, 100, "All of the transformations discussed so far are in relation to 2D planes. When adding in a third " +
                     "dimension neither scale nor translation change much and can be extrapolated easily by adding the z-axis and using the 4x4 identity matrix." +
                     "Rotation however, must be split into three seperate transformations since each of the axes on the coordinate plane must be handled individually.");
  }
  
  void update() {
    last.update();
    next.update();
  }
  
  void draw() {
    background(100);
    matrixPicture.resize(1100, 550);
    image(matrixPicture, 100, 80);
    last.draw();
    next.draw();
    textSize(32);
    title.draw();
    textSize(20);
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
