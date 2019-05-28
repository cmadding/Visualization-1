// Jupiter
void jupiter() {
  pushMatrix(); 
  rotate(theta * 2);
  translate(225, 0);
  fill(#a69186);
  ellipse(0, 0, 75, 75);

  //Jupiter's 1st Moon
  pushMatrix(); 
  rotate(theta * 4);
  translate(50, 0);
  fill(125);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Jupiter's 2nd Moon
  pushMatrix(); 
  rotate(theta * 1);
  translate(60, 0);
  fill(50);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Jupiter's 3rd Moon
  pushMatrix(); 
  rotate(theta * 2);
  translate(60, 0);
  fill(125);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Jupiter's 4th moon
  pushMatrix(); 
  rotate(theta * 3);
  translate(50, 0);
  fill(50);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();
}
