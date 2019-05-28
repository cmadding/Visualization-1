// Angle of rotation around sun and planets
float theta = 0;

//declare the background image
PImage stars;

void setup() {
  size(900, 900);
  stars = loadImage("night-sky-stars.jpg");
}

void draw() {
  background(stars);
  noStroke();

  sun();

  murcury();

  venus();

  earth();

  mars();

  jupiter();

  saturn();

  uranus();

  neptune();

  theta += 0.01;
}
