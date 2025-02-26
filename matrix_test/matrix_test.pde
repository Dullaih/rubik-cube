RubiksCube cube = new RubiksCube();
SceneTitle sceneTitle;
SceneMatrix sceneMatrix;
SceneRotation sceneRotation;
SceneTranslation sceneTranslation;
SceneScale sceneScale;
SceneTransformation sceneTransformation;
Button test;

void setup() {
  size(500, 500, P3D);
  camera(0, 0, 0, 0, 500, -300, 0.0, 1.0, 0.0);
  //camera(300, -500, 300, 0, 0, 0, 0, 1, 0);
  test = new Button(new PVector(250, 250), 50, 50);
}

void draw() {
  pushMatrix();
  translate(0, 500, -300);
  cube.update();
  cube.draw();
  popMatrix();
  
  hint(DISABLE_DEPTH_TEST);
  pushMatrix();
  //translate(-300, 500, -300);
  test.update();
  test.draw();
  popMatrix();  
  rect(100, 100, 200, 200);
  hint(ENABLE_DEPTH_TEST);
}
