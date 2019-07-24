class Bullet {

  float x, y, d, vx, vy;
  boolean alive; //Bullets "die" when off screen

  Bullet() {
  }

  Bullet(float _vx, float _vy) {
    x = myHero.x; //start at the Hero because they are shooting
    y = myHero.y; //start at the Hero because they are shooting
    d = 10; //Bullet size
    alive = true; //Bullest start off alive
    vx = _vx;
    vy = _vy;

    PVector direction = new PVector(mouseX-x, mouseY-y);
    direction.setMag(10); //Bullet speed

    vx = direction.x;
    vy = direction.y;
  }

  void show() {
    fill(yellow);
    stroke(yellow);
    ellipse(x, y, d, d);
  }

  void act() {
    x = x + vx;
    y = y + vy;

    if (x < 0 || x > width || y < 0 || y > height) alive = false; //Bullets "die" offscreen
  }
}
