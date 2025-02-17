class Matrix {
  double[][] in = { {1, 0, 0, 0},
                    {0, 1, 0, 0},
                    {0, 0, 1, 0},
                    {0, 0, 0, 1} };
  int size = in.length;
  
  
  
  void rotateX(float angle) {
    Matrix m = copy();
    Reset();
    in[1][1] = cos(angle);
    in[2][1] = sin(angle);
    in[1][2] = -in[2][1];
    in[2][2] = in[1][1];
    mult(m);
  }
  
  void rotateY(float angle) {
    Matrix m = copy();
    Reset();
    in[0][0] = cos(angle);
    in[0][2] = sin(angle);
    in[2][0] = -in[0][2];
    in[2][2] = in[0][0];
    mult(m);
  }
  
  void rotateZ(float angle) {
    Matrix m = copy();
    Reset();
    in[0][0] = cos(angle);
    in[1][0] = sin(angle);
    in[0][1] = -in[1][0];
    in[1][1] = in[0][0];
    mult(m);
  }
  
  void translate(float tx, float ty, float tz) {
    Matrix m = copy();
    Reset();
    in[0][3] = tx;
    in[1][3] = ty;
    in[2][3] = tz;
    mult(m);
  }
  
  void scale(float sx, float sy, float sz) {
    Matrix m = copy();
    Reset();
    in[0][0] = sx;
    in[1][1] = sy;
    in[2][2] = sz;
    mult(m);
  }
  
  Vector transform(Vector v) {
    double x = in[0][0] * v.x + in[0][1] * v.y + in[0][2] * v.z + in[0][3];
    double y = in[1][0] * v.x + in[1][1] * v.y + in[1][2] * v.z + in[1][3];
    double z = in[2][0] * v.x + in[2][1] * v.y + in[2][2] * v.z + in[2][3];
    return new Vector((float)x, (float)y, (float)z);
  }
  
  Matrix copy() {
    Matrix m = new Matrix();
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        m.in[i][j] = in[i][j];
      }
    }
    return m;
  }
  
  void Reset() {
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        if(i == j) in[i][j] = 1;
        else in[i][j] = 0;
      }
    }
  }
  
  void mult(Matrix b) {
    Matrix a = this.copy();
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        in[i][j] = 0;
        for (int k = 0; k < size; k++) {
          in[i][j] += a.in[i][k]*b.in[k][j];
        }
      }
    }
  }
}
