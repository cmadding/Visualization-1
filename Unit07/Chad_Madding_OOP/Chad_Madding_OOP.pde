//https://data.nasa.gov/resource/gh4g-9sfh.json
//https://data.nasa.gov/Space-Science/Meteorite-Landings/gh4g-9sfh

import peasy.*;
import plethora.core.*;
import toxi.geom.*;

PImage worldImage;
Table table;

PeasyCam cam;

int currentYear = 1600;

ArrayList <Meteo> allMeteors;
PApplet p5 = this;

void setup() {

  size(1200, 600, OPENGL);
  cam = new PeasyCam(this, 100);
  worldImage = loadImage("world_1200.png");
  table = loadTable("meteorite.csv", "header");

  allMeteors = new ArrayList <Meteo>();

  for (TableRow row : table.rows()) {

    int year = row.getInt("year");
    String name = row.getString("name");
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

    Meteo newMeteor = new Meteo(mapX, mapY, mapMass, year, name);
    allMeteors.add(newMeteor);
  }
}

void draw() {

  lights();
  background(0);
  smooth();

  if (frameCount % 5 == 0) {
    currentYear ++;
  }

  println(currentYear);

  noStroke();

  beginShape();
  fill(255);
  texture(worldImage);
  //vertex(x,y,z,    u,v);
  vertex(0, 0, 0, 0, 0);
  vertex(1200, 0, 0, 1200, 0);
  vertex(1200, 600, 0, 1200, 600);
  vertex(0, 600, 0, 0, 600);
  endShape();

  for (Meteo m : allMeteors) {
    m.run();
  }
}
