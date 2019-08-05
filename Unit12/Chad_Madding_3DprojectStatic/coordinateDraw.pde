void coordinateDraw() {

  rotateX(-.001);
  rotateY(-.001);
  background(255);
  translate(0, 0, 0);


  pushMatrix();

  //base of the grid
  stroke(0); 
  tint(255, 126);
  noFill();
  //fill(ltgray, 20);
  rect(0, 0, 125, 125);


  // x axis
  stroke(0, 100, 0); 
  line(0, 0, 0, 150, 0, 0);
  line(0, 0, 0, -150, 0, 0);
  fill(0, 100, 0);
  text("X Wins", 140, -5, 0);

  stroke(200);
  line(0, 0, 10, 100, 0, 10);
  line(0, 0, 20, 100, 0, 20);
  line(0, 0, 30, 100, 0, 30);
  line(0, 0, 40, 100, 0, 40);
  line(0, 0, 50, 100, 0, 50);
  line(0, 0, 10, -100, 0, 10);
  line(0, 0, 20, -100, 0, 20);
  line(0, 0, 30, -100, 0, 30);
  line(0, 0, 40, -100, 0, 40);
  line(0, 0, 50, -100, 0, 50);


  stroke(red);
  line(0, 0, 0, 0, 150, 0);
  line(0, 0, 0, 0, -150, 0);

  pushMatrix();
  rotate(-HALF_PI);
  fill(red);
  text("Y Team Points", -160, -5, 0);
  popMatrix();

  stroke(200);
  line(0, 0, 10, 0, 100, 10);
  line(0, 0, 20, 0, 100, 20);
  line(0, 0, 30, 0, 100, 30);
  line(0, 0, 40, 0, 100, 40);
  line(0, 0, 50, 0, 100, 50);
  line(0, 0, 10, 0, -100, 10);
  line(0, 0, 20, 0, -100, 20);
  line(0, 0, 30, 0, -100, 30);
  line(0, 0, 40, 0, -100, 40);
  line(0, 0, 50, 0, -100, 50);


  stroke(blue);
  line(0, 0, 0, 0, 0, 150);
  line(0, 0, 0, 0, 0, -150);
  pushMatrix();
  rotateY(-HALF_PI);
  fill(0, 0, 255);
  text("Z Goal Differential", 140, -5, 0);
  popMatrix();

  stroke(200);
  line(10, 0, 0, 10, 0, 100);
  line(20, 0, 0, 20, 0, 100);
  line(30, 0, 0, 30, 0, 100);
  line(40, 0, 0, 40, 0, 100);
  line(50, 0, 0, 50, 0, 100);
  line(0, 10, 0, 0, 10, 100);
  line(0, 20, 0, 0, 20, 100);
  line(0, 30, 0, 0, 30, 100);
  line(0, 40, 0, 0, 40, 100);
  line(0, 50, 0, 0, 50, 100);

  line(10, 0, 0, 10, 0, -100);
  line(20, 0, 0, 20, 0, -100);
  line(30, 0, 0, 30, 0, -100);
  line(40, 0, 0, 40, 0, -100);
  line(50, 0, 0, 50, 0, -100);
  line(0, 10, 0, 0, 10, -100);
  line(0, 20, 0, 0, 20, -100);
  line(0, 30, 0, 0, 30, -100);
  line(0, 40, 0, 0, 40, -100);
  line(0, 50, 0, 0, 50, -100);

  popMatrix();
}
