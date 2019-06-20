//https://data.nasa.gov/resource/gh4g-9sfh.json
//https://data.nasa.gov/Space-Science/Meteorite-Landings/gh4g-9sfh

PImage worldImage;
Table table;

int currentYear = 1825;

void setup() {

  size(1200, 600);
  worldImage = loadImage("world_1200.png");
  table = loadTable("meteorite.csv", "header");
}

void draw() {

  background(worldImage);
  smooth();


  if (frameCount % 5 == 0) {
    currentYear ++;
  }

  println(currentYear);

  stroke(255);
  strokeWeight(1);
  noFill();

  for (TableRow row : table.rows()) {

    int year = row.getInt("year");
    //String name = row.getString("name");
    float mass = row.getFloat("mass");
    float reclat = row.getFloat("reclat");
    float reclong = row.getFloat("reclong");

    //latitude = -90 to +90
    //longitude = -180 to +180

    float mapX = map(reclong, -180, 180, 0, width);
    //have to invert values because processing screen layout
    float mapY = map(reclat, 90, -90, 0, height);
    //remap mass to a smaller range of 1 to 5
    float mapMass = map(mass, 0, 5000000, 6.0, 8.0);
    textSize(20);
    fill(0, 102, 153);
    text(currentYear, 100, 200);
    if (currentYear == year) {
      //if (mapMass < 3) {
      noFill();
      stroke(255, 0, 0);
      strokeWeight(mapMass);
      ellipse(mapX, mapY, mapMass, mapMass);
      stroke(0, 50);
      curve(100, 200, mapMass, mapMass, mapX, mapY, 200, 200);
      //point(mapX, mapY);
    }//else {
    //stroke(255, 0, 0);
    //strokeWeight(0.5);
    //noFill();
    //ellipse(mapX, mapY, mapMass, mapMass);
  }

  // Add label to the sketch
  textSize(20);
  fill(50);
  text("Assignment 6: Getting Data Into Processing", int(width/3), 40);
  text("Meteor strikes or discoveries based on location, mass and year", int(width/2.25), 575);
}
