void polygon(float x, float y, float radius, int sides, float stroksWt, color fillCol, color strokeCol) {
  float theta = 0;
  strokeWeight(stroksWt);
  float rotAmount = TWO_PI/sides;
  fill(fillCol);
  stroke(strokeCol);
  beginShape();
  float x2 = 0, y2 = 0;

  for (int i = 0; i < sides; i += 1 ) {
    x2 = x + cos(theta)*radius;
    y2 = y + sin(theta)*radius;
    vertex(x2, y2);
    theta += rotAmount;
  }
  endShape(CLOSE);
}
