//Use mouse buttons and wheel to move around image
//Hold down mouse wheel button to move the picture around.
//Mouse wheel will zoom in and out picture.
//Hold down Left mouse button to rotate picture.

//https://data.nasa.gov/resource/gh4g-9sfh.json
//https://data.nasa.gov/Space-Science/Meteorite-Landings/gh4g-9sfh

//http://mrfeinberg.com/peasycam/
import peasy.*;

//https://www.plethora-project.com/plethora-library
import plethora.core.*;

//http://toxiclibs.org/
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

  if (frameCount % 8 == 0) {
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
  // Add label to the sketch
  textSize(20);
  fill(50);
  text("Assignment 7: OOP", int(width/3), 40);
  text("Meteor strikes or discoveries based on location, mass and year", int(width/2.25), 575);
}
