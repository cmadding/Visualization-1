// Neptune
void neptune() {
  pushMatrix(); 
  rotate(theta * 0.5);
  translate(400, 0);
  fill(#4682B4);
  ellipse(0, 0, 30, 30);

  //Neptune's 1st Moon
  pushMatrix(); 
  rotate(theta * 5);
  translate(25, 0);
  fill(125);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Neptune's second moon
  pushMatrix(); 
  rotate(theta * 6);
  translate(20, 0);
  fill(50);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Neptune's third moon
  pushMatrix(); 
  rotate(theta * 7);
  translate(30, 0);
  fill(125);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Neptune's fourth moon
  pushMatrix(); 
  rotate(theta * 8);
  translate(25, 0);
  fill(50);
  ellipse(0, 0, 5, 5);
  popMatrix();

  popMatrix();
}
