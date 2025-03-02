RubiksCube cube;
SceneTitle sceneTitle;
SceneMatrix sceneMatrix;
SceneRotation sceneRotation;
SceneTranslation sceneTranslation;
SceneScale sceneScale;
SceneTransformation sceneTransformation;
int scene = 0;

void setup() {
  size(500, 500, P3D);
  textAlign(CENTER, CENTER);
  scene = 2;
  switchScene();
}

void draw() {
  pushMatrix();
  camera(0, 0, 0, 0, 0, 0, 0, 1, 0);
  popMatrix();
  switch(scene) {
    case 0:
      sceneTitle.update();
      sceneTitle.draw();
      break;
    case 1:
      sceneMatrix.update();
      sceneMatrix.draw();
      break;
    case 2:
      sceneRotation.update();
      sceneRotation.draw();
      break;
    case 3:
      sceneTranslation.update();
      sceneTranslation.draw();
      break;
    case 4:
      sceneScale.update();
      sceneScale.draw();
      break;
    case 5:
      sceneTransformation.update();
      sceneTransformation.draw();
      break;
    case 6:
      pushMatrix();
      camera(0, 0, 0, -300, 500, -300, 0.0, 1.0, 0.0);
      translate(-300, 500, -300);
      cube.update();
      cube.draw();
      popMatrix();
      break;
  }
  
  Mouse.update();
}

void switchScene() {
  switch(scene) {
    case 0:
      sceneTitle = new SceneTitle();
      sceneMatrix = null;
      sceneRotation = null;
      sceneTranslation = null;
      sceneScale = null;
      sceneTransformation = null;
      cube = null;
      break;
    case 1:
      sceneTitle = null;
      sceneMatrix = new SceneMatrix();
      sceneRotation = null;
      sceneTranslation = null;
      sceneScale = null;
      sceneTransformation = null;
      cube = null;
      break;
    case 2:
      sceneTitle = null;
      sceneMatrix = null;
      sceneRotation = new SceneRotation();
      sceneTranslation = null;
      sceneScale = null;
      sceneTransformation = null;
      cube = null;
      break;
    case 3:
      sceneTitle = null;
      sceneMatrix = null;
      sceneRotation = null;
      sceneTranslation = new SceneTranslation();
      sceneScale = null;
      sceneTransformation = null;
      cube = null;
      break;
    case 4:
      sceneTitle = null;
      sceneMatrix = null;
      sceneRotation = null;
      sceneTranslation = null;
      sceneScale = new SceneScale();
      sceneTransformation = null;
      cube = null;
      break;
    case 5:
      sceneTitle = null;
      sceneMatrix = null;
      sceneRotation = null;
      sceneTranslation = null;
      sceneScale = null;
      sceneTransformation = new SceneTransformation();
      cube = null;
      break;
    case 6:
      hint(ENABLE_DEPTH_TEST);
      sceneTitle = null;
      sceneMatrix = null;
      sceneRotation = null;
      sceneTranslation = null;
      sceneScale = null;
      sceneTransformation = null;
      cube = new RubiksCube();
      break;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) Mouse.handleKeyDown(Mouse.LEFT);
  if (mouseButton == RIGHT) Mouse.handleKeyDown(Mouse.RIGHT);
  if (mouseButton == CENTER) Mouse.handleKeyDown(Mouse.CENTER);
}

void mouseReleased() {
  if (mouseButton == LEFT) Mouse.handleKeyUp(Mouse.LEFT);
  if (mouseButton == RIGHT) Mouse.handleKeyUp(Mouse.RIGHT);
  if (mouseButton == CENTER) Mouse.handleKeyUp(Mouse.CENTER);
}
