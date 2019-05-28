// Mars
void mars() {
  pushMatrix(); 
  rotate(theta * 2.5);
  translate(160, 0);
  fill(#E27B58);
  ellipse(0, 0, 15, 15);

  //The Mars' 1st Moon
  pushMatrix(); 
  rotate(theta * 5);
  translate(15, 0);
  fill(125);
  ellipse(0, 0, 5, 5);
  popMatrix();

  //Mars' 2nd moon
  pushMatrix(); 
  rotate(theta * 4);
  translate(20, 0);
  fill(50);
  ellipse(0, 0, 6, 6);
  popMatrix();

  popMatrix();
}
