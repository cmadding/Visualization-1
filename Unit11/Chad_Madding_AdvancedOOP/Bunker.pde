class Bunker extends Obstacle {
  float x, y;            // position
  //float w, h;            // size
  boolean hit = false;   // is it hit?

  Bunker() {
  }

  Bunker (float _x, float _y, float _d) {
    x = _x;
    y = _y;
    d = _d;
  }

  // draw the bunker
  // if hit, change the fill color
  void display() {
    if (hit) fill(ltgray);
    else fill(dkgray);
    noStroke();
    rect(x-d/2, y-d/2, d, d);
    ellipse(x, y, d, d);
  }


  void act() {

    //loop to check every bullet to see if it hits the bunker 
    int i = 0;
    while ( i < bulletList.size()) {
      Bullet b = bulletList.get(i);
      if ( dist(b.x, b.y, x, y) <  b.d/2 + d/2) { //checking the distance between the Bullet (b.x, b.y) and the Car (x, y) sum of radi
        hit = true;
        b.alive = false;
      }
      i++;
    }

    //loop to check every zombie to see if it hits the bunker 
    int zl = 0;
    while ( zl < zombieList.size()) {
      Zombie z = zombieList.get(zl);
      if ( dist(z.x, z.y, x, y) <  z.d/2 + d/2) { //checking the distance between the zombie (z.x, z.y) and the bunker (x, y) sum of radi
        hit = true;
        z.alive = true;
        z.x = z.x - bounce;
        z.y = z.y - bounce;
      }
      zl++;
    }

    //loop to check if hero hits the bunker 
    if ( dist(myHero.x, myHero.y, x, y) <  myHero.d/2 + d/2) { //checking the distance between the zombie (z.x, z.y) and the bunker (x, y) sum of radi
      myHero.x = myHero.x - bounce;
      myHero.y = myHero.y - bounce;
    }
  }
}
