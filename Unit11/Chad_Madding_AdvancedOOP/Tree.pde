class Tree extends Obstacle {
  float x, y, d;
  boolean hit = false;   // is it hit?

  Tree () {
  }

  Tree (float _x, float _y, float _d) {
    x = _x;
    y = _y;
    d = _d;
  }

  // draw the tree
  // if hit, change the fill color
  void display() {
    if (hit) fill(dkgreen);
    else fill(dkgreen);
    noStroke();
    fill(ltgreen);
    ellipse(x+35, y-10, d, d);
    fill(dkgreen);
    triangle(x, y, x+70, y, x+35, y-25);
    fill(brown);
    rect(x+32, y, 7, 12);
  }


  void act() {

    //loop to check every bullet to see if it hits the tree 
    int i = 0;
    while ( i < bulletList.size()) {
      Bullet b = bulletList.get(i);
      if ( dist(b.x, b.y, x, y) <  b.d/2 + d/2) { //checking the distance between the Bullet (b.x, b.y) and the tree (x, y) sum of radi
        hit = true;
        b.alive = false;
      }
      i++;
    }

    //loop to check every zombie to see if it hits the tree 
    int zl = 0;
    while ( zl < zombieList.size()) {
      Zombie z = zombieList.get(zl);
      if ( dist(z.x, z.y, x+35, y-10) <  z.d/2 + d/2) { //checking the distance between the Bullet (b.x, b.y) and the tree (x, y) sum of radi
        hit = true;
        z.alive = true;
        z.x = z.x - bounce;
        z.y = z.y - bounce;
      }
      zl++;
    }

    //loop to check if hero hits the tree 
    if ( dist(myHero.x, myHero.y, x+35, y-10) <  myHero.d/2 + d/2) { //checking the distance between the zombie (z.x, z.y) and the bunker (x, y) sum of radi
      myHero.x = myHero.x - bounce;
      myHero.y = myHero.y - bounce;
    }
  }
}
