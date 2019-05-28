// Saturn
void saturn() {
  pushMatrix(); 
  rotate(theta * 1.5);
  translate(300, 0);
  fill(#c6b8b1);
  ellipse(0, 0, 60, 60);
  stroke(#c6b8b1);
  strokeWeight(5);
  noFill();
  ellipse(0, 0, 20, 100);
  noStroke();

  //Saturn's 1st Moon
  pushMatrix(); 
  rotate(theta * 1);
  translate(40, 0);
  fill(125);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Saturn's second moon
  pushMatrix(); 
  rotate(theta * 2);
  translate(40, 0);
  fill(50);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Saturn's third moon
  pushMatrix(); 
  rotate(theta * 3);
  translate(40, 0);
  fill(125);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Saturn's fourth moon
  pushMatrix(); 
  rotate(theta * 4);
  translate(40, 0);
  fill(50);
  ellipse(0, 0, 5, 5);
  popMatrix();

  popMatrix();
}
