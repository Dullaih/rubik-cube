ArrayList<Vector> points = new ArrayList<Vector>();
ArrayList<Vector> front = new ArrayList<Vector>();
ArrayList<Vector> back = new ArrayList<Vector>();
ArrayList<Vector> left = new ArrayList<Vector>();
ArrayList<Vector> right = new ArrayList<Vector>();
ArrayList<Vector> top = new ArrayList<Vector>();
ArrayList<Vector> bottom = new ArrayList<Vector>();

int[][] tiles = new int[54][5];
int[] tempArray = new int[5];
int tileCount = 0;

int RubikSize = 6;
Vector center = new Vector();
int x, y, z;

void setup() {
  size(500, 500, P3D);
  camera(300, -500, 300, 0, 0, 0, 0, 1, 0);
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
    println(v);
    if (v.x <= 90) {
      front.add(v);
      if (v.x == 0 && v.y % 100 == 0 && v.z % 100 == 0) {
        tempArray[0] = points.indexOf(v);
        tempArray[1] = points.indexOf(v)+1;
        tempArray[2] = points.indexOf(v)+7;
        tempArray[3] = points.indexOf(v)+6;
        tempArray[4] = points.indexOf(v);
        tiles[tileCount] = tempArray;
        
        tileCount++;
      }
    }
    else if (v.x >= 200) {
      back.add(v);
      if (v.x == 290 && v.y % 100 == 0 && v.z % 100 == 0) {
        
        tileCount++;
      }
    }
    if (v.y <= 90) {
      bottom.add(v);
      if (v.x % 100 == 0 && v.y == 0 && v.z % 100 == 0) {
        
        tileCount++;
      }
    }
    else if (v.y >= 200) {
      top.add(v);
      if (v.x % 100 == 0 && v.y == 290 && v.z % 100 == 0) {
        
        tileCount++;
      }
    }
    if (v.z <= 90) {
      left.add(v);
      if (v.x % 100 == 0 && v.y % 100 == 0 && v.z == 0) {
        
        tileCount++;
      }
    }
    else if (v.z >= 200) {
      right.add(v);
      if (v.x % 100 == 0 && v.y % 100 == 0 && v.z == 290) {
        
        tileCount++;
      }
    }
    v.sub(center);
  }
}

void draw() {
  background(100);
  Matrix m = new Matrix();
  m.rotateX(mouseX/-100.0);
  //m.rotateY(millis()/1000.0);
  //m.rotateZ(millis()/1000.0);
  beginShape();
  for(int i : tempArray) {
    Vector p = points.get(i);
    vertex(p.x, p.y, p.z);
  }
  endShape();

  for(Vector v : points) {
    Vector t = m.transform(v);
    t.drawPoint();
  }
}
