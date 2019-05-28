// Earth
void earth() {
  pushMatrix();

  rotate(theta * 3);
  translate(120, 0);
  fill(#3B5D38);
  ellipse(0, 0, 20, 20);

  //The Earth's Moon

  rotate(theta * 4);
  translate(20, 0);
  fill(125);
  ellipse(0, 0, 5, 5);

  popMatrix();
}
