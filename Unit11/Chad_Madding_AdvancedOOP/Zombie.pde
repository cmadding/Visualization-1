class Zombie {

  float x, y, d, s, vx, vy;
  boolean alive;

  Zombie() {

    x = random(0, width); //start location - random from the top
    y = 0;
    d = random(20, 40); //Zombie size
    s = 1.5; //Zombie speed - could be used in levels

    PVector direction = new PVector(myHero.x-x, myHero.y-y);
    direction.setMag(3);
    vx = direction.x;
    vy = direction.y;

    alive = true;
  }

  void show() {
    fill(green);
    stroke(0);
    ellipse(x, y, d, d);
  }

  void act() {
    PVector direction = new PVector(myHero.x-x, myHero.y-y);
    direction.setMag(s);
    vx = direction.x;
    vy = direction.y;

    x = x + vx;
    y = y + vy;
    //loop to check every bullet to see if it hits the zombie 
    int i = 0;
    while ( i < bulletList.size()) {
      Bullet b = bulletList.get(i);
      if ( dist(b.x, b.y, x, y) <  b.d/2 + d/2) { //checking the distance between the Bullet (b.x, b.y) and the Zombie (x, y) sum of radi
        alive = false;
        b.alive = false;
      }
      i++;
    }
  }
}
