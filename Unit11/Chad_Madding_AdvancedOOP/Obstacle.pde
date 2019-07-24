class Obstacle {

  float x, y, d;

  int bounce = 5; //bounce off items

  boolean hit = false;   // is it hit?

  Obstacle() {
    noStroke();
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
  }
}
