class Vector {
  float x = 0;
  float y = 0;
  float z = 0;

  // constructor that leaves x and y at their default values
  public Vector() {}

  // constructor that sets x and y to the same value
  public Vector(float value) {
  x = value;
  y = value;
  z = value;
  }

  // constructor that sets x and y independently
  public Vector(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  // returns a copy of this vector
  Vector copy() {
    return new Vector(x, y, z);
  }

  // adds a vector to this vector
  void add(Vector v) {
    x += v.x;
    y += v.y;
    z += v.z;
  }

  // subtracts a vector from this vector
  void sub(Vector v) {
    x -= v.x;
    y -= v.y;
    z -= v.z;
  }

  // multiplies this vector with a scalar
  void mult(float s) {
    x *= s;
    y *= s;
    z *= s;
  }

  // returns the dot product of the two vectors
  float dot(Vector v) {
    return x * v.x + y * v.y + z * v.z;
}

  // returns the vector's magnitude squared
  float magSq() {
    return sq(x) + sq(y) + sq(z);
}

  // returns the vector's magnitude
  float mag() {
    // tip: call magSq()
    return sqrt(magSq());
  }

  // returns the distance from this Vector (point) to another Vector (point)
  float disTo(Vector v) {
    v = v.copy();
    v.sub(this);
    return v.mag();
  }

  // normalizes the vector
  void norm() {
    x /= mag();
    y /= mag();
    z /= mag();
  }

  // returns the angle from this Vector (point) to another Vector (point)
  float angleTo(Vector v) {
    return acos(dot(v)/(mag()*v.mag()));
  }

  void drawPoint() {
    noStroke();
    pushMatrix();
    translate(x, y, z);
    sphere(5);
    popMatrix();
  }

  // returns a string representing this object (for debugging)
  String toString() {
    return "[ " + x + ", " + y + ", " + z + " ]";
  }
}
