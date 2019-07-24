class Hero {

  float x, y, d, speed;

  Hero() {
    x = width/2; //start position
    y = height/2; //start position
    d = 30; //Hero size
    speed = 4; //movement
  }

  void show() {
    fill(blue);
    stroke(ltblue);
    ellipse(x, y, d, d);
    strokeWeight(0);
    stroke(red);//laser pointer color
    line(x, y, mouseX, mouseY); //laser pointer
  }

  void act() {

    if (wkey) y = y - speed;
    if (skey) y = y + speed;
    if (akey) x = x - speed;
    if (dkey) x = x + speed;
    if (x < d/2 || x > width-d/2+1) x *= -1; //Keep hero onscreen
    if (y < d/2 || y > height-d/2+1) y *= -1; //Keep hero onscreen
  }
}
