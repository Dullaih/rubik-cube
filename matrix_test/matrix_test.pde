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
  //camera(300, -500, 300, 0, 0, 0, 0, 1, 0);
  test = new Button(new PVector(250, 250), 50, 50);
}

void draw() {
  pushMatrix();
  camera(0, 0, 0, -300, 500, -300, 0.0, 1.0, 0.0);
  translate(-300, 500, -300);
  cube.update();
  cube.draw();
  popMatrix();
  
  hint(DISABLE_DEPTH_TEST);
  test.update();
  test.draw();
  hint(ENABLE_DEPTH_TEST);
}
