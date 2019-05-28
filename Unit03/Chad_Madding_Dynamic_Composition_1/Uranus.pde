// Uranus
void uranus() {
  pushMatrix(); 
  rotate(theta * 1);
  translate(350, 0);
  fill(#708090);
  ellipse(0, 0, 30, 30);

  //Uranus' 1st Moon
  pushMatrix(); 
  rotate(theta * 5);
  translate(30, 0);
  fill(125);
  ellipse(0, 0, 6, 6);
  popMatrix();

  //Uranus' second moon
  pushMatrix(); 
  rotate(theta * 6);
  translate(30, 0);
  fill(50);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Uranus' third moon
  pushMatrix(); 
  rotate(theta * 7);
  translate(25, 0);
  fill(125);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Uranus' fourth moon
  pushMatrix(); 
  rotate(theta * 8);
  translate(30, 0);
  fill(50);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();
}
