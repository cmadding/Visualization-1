//Use W S A D to move around the screen //<>//

boolean [] keys;
Player player;
float birthRate = .05 ;
float particalCountCurrent = 0;
int particalCount = 300;
PImage town;
float[] x = new float[particalCount];
float[] y = new float[particalCount];
int[] sideCount = new int[particalCount];
float[] radius = new float[particalCount];
float[] speedX = new float[particalCount];
float[] speedY = new float[particalCount];
float[] gravity = new float[particalCount];
float[] damping = new float[particalCount];
float[] friction = new float[particalCount];

void setup() {
  size(600, 600);
  player = new Player();
  keys  = new boolean[128];
  town = loadImage("rpgBackground.png");

  for ( int i=0; i< particalCount; i += 1) {
    x[i] = 444;
    y[i] = 346;
    speedX[i] = random(-1.2, 1.2);
    speedY[i] = random(-5, -10);
    sideCount[i] = int(random(3, 10));
    radius[i] = random(3, 6);
    gravity[i] = .10;
    damping[i] = .77;
    friction[i] = .77;
  }
}

void draw() {
  fill(0, 50);
  background(town);
  move();
  player.drawPlayer();

  noStroke();
  //rect(0, 0, width, height);
  //polygon(float x, float y, float radius, int sides, float stroksWt, color fillCol, color strokeCol)
  for ( int i=0; i< particalCountCurrent; i += 1) {
    polygon(x[i], y[i], radius[i], sideCount[i], 2, color(#0f5e9c), color(#0f5e9c));
    x[i] += speedX[i];
    speedY[i] += gravity[i];
    y[i] += speedY[i];

    checkCollisions(i);
  }
  if (particalCountCurrent < particalCount - birthRate) {
    particalCountCurrent += birthRate;
  }
}

void checkCollisions(int i) {
  if (x[i] > width - radius[i]) {
    x[i] = width - radius[i];
    speedX[i] = speedX[i] * -1;
  }

  if (x[i] < radius[i]) {
    x[i] = radius[i];
    speedX[i] = speedX[i] * -1;
  }

  if (y[i] > height - radius[i]) {
    y[i] = height - radius[i];
    speedY[i] = speedY[i] * -1;
    speedY[i] *= damping[i];
    speedX[i] *= friction[i];
  }

  if (y[i] < radius[i]) {
    y[i] = radius[i];
    speedY[i] = speedY[i] * -1;
  }
}

void move() {
  int xDelta = 0;
  int yDelta = 0;
  if (keys['w'])
    yDelta--;
  if (keys['s'])
    yDelta++;
  if (keys['a'])
    xDelta--;
  if (keys['d'])
    xDelta++;

  player.updatePlayer(xDelta, yDelta);
}

void keyPressed() {

  keys[key] = true;
}

void keyReleased() {
  keys[key] = false;
}
