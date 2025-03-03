class RubiksCube {
  ArrayList<Vector> points = new ArrayList<Vector>();
  ArrayList<Vector> tpoints = new ArrayList<Vector>();
  ArrayList<Vector> front = new ArrayList<Vector>();
  ArrayList<Vector> back = new ArrayList<Vector>();
  ArrayList<Vector> left = new ArrayList<Vector>();
  ArrayList<Vector> right = new ArrayList<Vector>();
  ArrayList<Vector> top = new ArrayList<Vector>();
  ArrayList<Vector> bottom = new ArrayList<Vector>();
  
  int[][] tiles = new int[54][6];
  int tileCount = 0;
  
  int RubikSize = 6;
  Vector center = new Vector();
  int x, y, z;
  
  boolean leftHeld, leftClick, leftRelease;
  boolean rightHeld, rightClick, rightRelease;
  boolean middleClick;
  int startX, startY;
  float rotX = 0, rotY = 0, rotZ = 0;
  int rotAxis = 0;
  boolean braindamage;
  
  Button home;
  Button reset;
  
  RubiksCube() {
    textSize(20);
    home = new Button(new PVector(0, 0), 100, 50, "HOME");
    reset = new Button(new PVector(width-100, 0), 100, 50, "RESET");
    for (int i = 0; i < 6; i++) {
      if(i%2 == 0) x+= 10;
      else x += 90;
       for (int j = 0; j < 6; j++) {
         if(j%2 == 0) y+= 10;
         else y += 90;
         for (int k = 0; k < 6; k++) {
           if(k%2 == 0) z+= 10;
           else z += 90;
           points.add(new Vector(x-10, y-10, z-10));
         }
       z = 0;
       }
    y = 0;
    }
    
    center = points.get(points.size()-1);
    center = center.copy();
    center.mult(0.5);
    
    for(Vector v : points) {
      //println(v);
      if (v.x <= 90) {
        front.add(v);
        if (v.x == 0 && v.y % 100 == 0 && v.z % 100 == 0) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+1;
          tiles[tileCount][2] = points.indexOf(v)+7;
          tiles[tileCount][3] = points.indexOf(v)+6;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 0;
          
          tileCount++;
        }
      }
      else if (v.x >= 200) {
        back.add(v);
        if (v.x == 290 && v.y % 100 == 0 && v.z % 100 == 0) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+1;
          tiles[tileCount][2] = points.indexOf(v)+7;
          tiles[tileCount][3] = points.indexOf(v)+6;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 1;
          
          tileCount++;
        }
      }
      if (v.y <= 90) {
        bottom.add(v);
        if (v.x % 100 == 0 && v.y == 0 && v.z % 100 == 0) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+1;
          tiles[tileCount][2] = points.indexOf(v)+37;
          tiles[tileCount][3] = points.indexOf(v)+36;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 2;
          
          tileCount++;
        }
      }
      else if (v.y >= 200) {
        top.add(v);
        if (v.x % 100 == 0 && v.y == 290 && v.z % 100 == 0) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+1;
          tiles[tileCount][2] = points.indexOf(v)+37;
          tiles[tileCount][3] = points.indexOf(v)+36;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 3;
          
          tileCount++;
        }
      }
      if (v.z <= 90) {
        left.add(v);
        if (v.x % 100 == 0 && v.y % 100 == 0 && v.z == 0) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+36;
          tiles[tileCount][2] = points.indexOf(v)+42;
          tiles[tileCount][3] = points.indexOf(v)+6;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 4;
          
          tileCount++;
        }
      }
      else if (v.z >= 200) {
        right.add(v);
        if (v.x % 100 == 0 && v.y % 100 == 0 && v.z == 290) {
          tiles[tileCount][0] = points.indexOf(v);
          tiles[tileCount][1] = points.indexOf(v)+36;
          tiles[tileCount][2] = points.indexOf(v)+42;
          tiles[tileCount][3] = points.indexOf(v)+6;
          tiles[tileCount][4] = points.indexOf(v);
          tiles[tileCount][5] = 5;
          
          tileCount++;
        }
      }
      v.sub(center);
      //v.add(new Vector(-300, 500, -300));
      
    }
    
    //for(int i[] : tiles) {
    //  for(int j : i) {
    //    print(j + ", ");
    //  }
    //  println();
    //}
    
  }
  
  void update() {
    
    if(middleClick) {
      rotAxis += 1;
      if(rotAxis == 3) rotAxis = 0;
    }
    
    if(leftClick || rightClick) {
       startX = mouseX;
       startY = mouseY;
    }
    
    Matrix m = new Matrix();
    
    if(rightHeld) {
      m.scale(2, 2, 2);
    }
    if(leftHeld) {
      switch(rotAxis) {
        case 0:
          m.rotateY(-(rotX+(mouseX-startX)/-100.0));
          //m.rotateX(rotY);
          //m.rotateZ(rotZ);
          break;
        case 1:
          m.rotateX(rotY+(mouseY-startY)/-100.0);
          //m.rotateY(rotX);
          //m.rotateZ(rotZ);
          break;
        case 2:
          m.rotateZ(rotZ+(mouseY-startY)/-100.0);
          //m.rotateX(rotY);
          //m.rotateY(rotX);
          break;
      }
    }
    
    if(leftRelease) {
      switch(rotAxis) {
      case 0:
        rotX += (mouseX-startX)/-100.0;
        break;
      case 1:
        rotY += (mouseY-startY)/-100.0;
        break;
      case 2:
        rotZ += (mouseX-startX)/-100.0;
        break;
    }
  }
    
    for(Vector v : points) {
      Vector t = new Vector();
      for(Vector f : points) {
        if(v == f) {
          t = m.transform(v);
          break;
        }
        else {
          t = v;
        }
      }
      tpoints.add(t);
    }
    
    leftClick = Mouse.onDown(Mouse.LEFT);
    leftHeld = Mouse.isDown(Mouse.LEFT);
    leftRelease = Mouse.onUp(Mouse.LEFT);
    rightClick = Mouse.onDown(Mouse.RIGHT);
    rightHeld = Mouse.isDown(Mouse.RIGHT);
    rightRelease = Mouse.onUp(Mouse.RIGHT);
    middleClick = Mouse.onDown(Mouse.CENTER);
    
    home.update();
    reset.update();
  }
  
  void draw() {
    strokeWeight(10);
    background(100);
    for(int i[] : tiles) {
      if(i[5] == 0) fill(255, 0, 0);
      else if(i[5] == 1) fill(255, 255, 0);
      else if(i[5] == 2) fill(0, 0, 255);
      else if(i[5] == 3) fill(255);
      else if(i[5] == 4) fill(0, 255, 0);
      else if(i[5] == 5) fill(255, 100, 0);
      beginShape();
      for(int j = 0; j < i.length; j++) {
        int place;
        if(j < 5) {
          place = i[j];
          Vector p = tpoints.get(place);
          vertex(p.x, p.y, p.z);
        }
      }
      endShape();
    }
    
    //for(Vector v : tpoints) {
    //  v.drawPoint();
    //}
    
    if(home.clicked) {
      scene = 0;
      braindamage = true;
    }
    //if(reset.clicked) {
    //  reset();
    //}
    tpoints.clear();
  }
  
  //void reset() {
  //  tpoints = points;
  //  rotX = rotY = rotZ = 0;
  //  rotAxis = 0;
  //}
}
