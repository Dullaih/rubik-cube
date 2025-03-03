RubiksCube cube;
SceneTitle sceneTitle;
SceneMatrix sceneMatrix;
SceneMult sceneMult;
SceneIdentity sceneIdentity;
SceneRotation sceneRotation;
SceneTranslation sceneTranslation;
SceneScale sceneScale;
SceneTransformation sceneTransformation;
int scene = 0;

void setup() {
  size(500, 500, P3D);
  //textAlign(CENTER, CENTER);
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
      sceneMult.update();
      sceneMult.draw();
      break;
    case 3:
      sceneIdentity.update();
      sceneIdentity.draw();
      break;
    case 4:
      sceneRotation.update();
      sceneRotation.draw();
      break;
    case 5:
      sceneTranslation.update();
      sceneTranslation.draw();
      break;
    case 6:
      sceneScale.update();
      sceneScale.draw();
      break;
    case 7:
      sceneTransformation.update();
      sceneTransformation.draw();
      break;
    case 8:
      pushMatrix();
      camera(0, 0, 0, -300, 500, -300, 0.0, 1.0, 0.0);
      translate(-300, 500, -300);
      cube.update();
      if(cube.leftHeld) cube.draw();
      popMatrix();
      hint(DISABLE_DEPTH_TEST);
      cube.home.draw();
      cube.reset.draw();
      hint(ENABLE_DEPTH_TEST);
      if(cube.braindamage) switchScene();
      break;
  }
  
  Mouse.update();
}

void switchScene() {
  switch(scene) {
    case 0:
      sceneTitle = new SceneTitle();
      sceneMatrix = null;
      cube = null;
      break;
    case 1:
      sceneTitle = null;
      sceneMatrix = new SceneMatrix();
      sceneMult = null;
      break;
    case 2:
      sceneMatrix = null;
      sceneMult = new SceneMult();
      sceneIdentity = null;
      break;
    case 3:
      sceneMult = null;
      sceneIdentity = new SceneIdentity();
      sceneRotation = null;
      break;
    case 4:
      sceneIdentity = null;
      sceneRotation = new SceneRotation();
      sceneTranslation = null;
      break;
    case 5:
      sceneRotation = null;
      sceneTranslation = new SceneTranslation();
      sceneScale = null;
      break;
    case 6:
      sceneTranslation = null;
      sceneScale = new SceneScale();
      sceneTransformation = null;
      break;
    case 7:
      sceneScale = null;
      sceneTransformation = new SceneTransformation();
      cube = null;
      break;
    case 8:
      hint(ENABLE_DEPTH_TEST);
      sceneTitle = null;
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
