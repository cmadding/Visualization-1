//AdvancedOOP project
//The basis of this is
//from the Programming 11 class at
//http://lordbyng.net/compsci/bprog.html

//color palette
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;
color dkgreen= #006400;
color ltgreen= #e5f2e5;
color red    = #FF0000;
color white  = #FFFFFF;
color dkgray = #ADADAD;
color ltgray = #D3D3D3;
color brown  = #775C2C;
color blue   = #0000ff;
color ltblue = #6666ff;
color dkblue = #000099;

//keyboard directions
boolean akey, dkey, skey, wkey;

int level = 60; //lower number = harder level

ArrayList<Bullet> bulletList;
ArrayList<Zombie> zombieList;

//The number of obstacles
Bunker[] bunkers = new Bunker[3]; // a list of Bunker
Tree[] trees = new Tree[10]; // a list of trees
Car[] cars = new Car[2]; // a list of cars

Hero myHero;
Zombie currentZombie;

void setup() {
  size (800, 800);

  myHero = new Hero();
  bulletList = new ArrayList<Bullet>();
  zombieList = new ArrayList<Zombie>();

  // generate bunkers in random locations
  for (int i=0; i<bunkers.length; i++) {
    float x = int(random(50, width-50)/50) * 50;
    float y = int(random(50, height-50)/50) * 50;
    bunkers[i] = new Bunker(x, y, 60);
  }

  // generate trees in random locations
  for (int i=0; i<trees.length; i++) {
    float x = int(random(50, width-50)/50) * 50;
    float y = int(random(50, height-50)/50) * 50;
    trees[i] = new Tree(x, y, 25);
  }

  // generate cars in random locations
  for (int i=0; i<cars.length; i++) {
    float x = int(random(50, width-50)/50) * 50;
    float y = int(random(50, height-50)/50) * 50;
    cars[i] = new Car(x, y, 50);
  }
}

void draw() {
  fill(ltgreen, 75); //Alpha values also range from 0 to 255 sets "tails" in game - Higher = no tails
  rect(0, 0, width, height);

  int i = 0;
  while (i < bulletList.size()) {
    Bullet b = bulletList.get(i);
    if (b.alive == true) {
      b.show();
      b.act();
      i++;
    } else {
      bulletList.remove(i);
    }
  }
  int z = 0;
  while (z < zombieList.size()) {
    Zombie currentZombie = zombieList.get(z);
    if (currentZombie.alive == true) {
      currentZombie.show();
      currentZombie.act();
      z++;
    } else {
      zombieList.remove(z);
    }
  }

  myHero.show();
  myHero.act();

  if (frameCount % level == 0 ) {  //sets the amount of zombies on the screen
    zombieList.add(new Zombie()); //could be used for different levels
  }

  // go through all bunkers
  // and draw them onscreen
  for (Bunker bu : bunkers) {
    bu.display();
    bu.act();
  }

  // go through all trees
  // and draw them onscreen
  for (Tree t : trees) {
    t.display();
    t.act();
  }

  // go through all cars
  // and draw them onscreen
  for (Car c : cars) {
    c.display();
    c.act();
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') akey = true; //CAP and lowercase
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'w' || key == 'W') wkey = true;
}

void keyReleased() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'w' || key == 'W') wkey = false;
}

void mousePressed() {
  PVector direction = new PVector(mouseX-myHero.x, mouseY-myHero.y);
  direction.setMag(10);
  float k = 0;
  while (k <= 2*PI) {
    direction.rotate(k);
    bulletList.add(new Bullet(direction.x, direction.y));
    k += PI/2;
  }
}
