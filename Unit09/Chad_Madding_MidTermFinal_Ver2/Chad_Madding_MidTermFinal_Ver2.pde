//Dashboard Idea
/* ButtonType.java, Component, Dimension, Layout.java, Menu, RectButton, RoundedRectButton objects
 From Verlet World Demo 
 By: Ira Greenberg
 Original idea from Nelson project*/
import org.gicentre.geomap.*;
import controlP5.*;
ControlP5 cp5year;
ControlP5 cp5mass;

Table table;

//Page 3 buttons
int rectX, rectY;      // Position of square button
int circleX, circleY;  // Position of circle button
int circleX2, circleY2;  // Position of circle button
int circleX3, circleY3;  // Position of circle button
int circleX4, circleY4;  // Position of circle button
int circleX5, circleY5;  // Position of circle button
int circleX6, circleY6;  // Position of circle button
int circleX7, circleY7;  // Position of circle button
int circleX8, circleY8;  // Position of circle button
int rectSize = 90;     // Diameter of rect
int circleSize = 150;   // Diameter of circle

//Descriptive text collect from https://news.nationalgeographic.com/news/2013/13/130214-biggest-asteroid-impacts-meteorites-space-2012da14/
String m1 = "1. Vredefort Crater - Asteroid impact date: Estimated 2 billion years ago - Location: Free State, South Africa - Specs: Also known as the Vredefort Dome, the Vredefort crater has an estimated radius of 118 miles (190 kilometers), making it the world's largest known impact structure. This crater was declared a UNESCO World Heritage Site in 2005.";
String m2 = "2. Sudbury Basin - Asteroid impact date: Estimated 1.8 billion years ago - Location: Ontario, Canada - Specs: The Sudbury Basin is considered one of largest impact structures on Earth, with an estimated diameter of 81 miles (130 kilometers). Dating back 1.8 billion years, it is also one of the oldest known impact structures in the world.";
String m3 = "3. Acraman Crater - Asteroid impact date: Estimated 580 million years ago - Location: South Australia, Australia - Specs: Located in what is now Lake Acraman, this impact structure has an estimated diameter of 56 miles (90 kilometers).";
String m4 = "4. Woodleigh Crater - Asteroid impact date: Estimated 364 million years ago - Location: Western Australia, Australia - Specs: This crater is not exposed at the surface and has led to many discrepancies regarding its actual size. Reports on its diameter vary from 25 to 75 miles (40 to 120 kilometers).";
String m5 = "5. Manicouagan Crater - Asteroid impact date: Estimated 215 million years ago - Location: Quebec, Canada - Specs: This impact crater formed what is now Lake Manicouagan. Even with erosion, it's considered one of the largest and best-preserved craters on Earth, with an estimated diameter of 62 miles (100 kilometers).";
String m6 = "6. Morokweng Crater - Asteroid impact date: Estimated 145 million years ago - Location: North West, South Africa - Specs: Located near the Kalahari Desert in South Africa, this crater contained the fossilized remains of the meteorite that created it.";
String m7 = "7. Kara Crater - Asteroid impact date: Estimated 70.3 million years ago - Location: Nenetsia, Russia - Specs: Now greatly eroded, the Kara crater is a non-exposed impact structure in Russia. Some have claimed that the impact structure actually consists of two adjacent craters: the Kara and the Ust-Kara crater.";
String m8 = "8. Chicxulub Crater - Asteroid impact date: Estimated 65 million years ago - Location: Yucatán, Mexico - Specs: Located on the Yucatán Peninsula in Mexico, many scientists believe that the meteorite that left this crater caused or contributed to the extinction of the dinosaurs. Estimates of its actual diameter range from 106 to a whooping 186 miles (170 to 300 kilometers), which if proved right could mean it's the biggest.";

color rectColor;
color circleColor;
color baseColor;

boolean rectOver = false;
boolean circleOver = false;
boolean circleOver2 = false;
boolean circleOver3 = false;
boolean circleOver4 = false;
boolean circleOver5 = false;
boolean circleOver6 = false;
boolean circleOver7 = false;
boolean circleOver8 = false;

int currentYear=1800;
int currentMass=50000;

PImage chart1;
PImage meteor;

//Page 4
GeoMap geoMap;
int hits;
String name;
int id;

color background = #D8D8D8;
Menu menu;


void setup() {

  table = loadTable("meteorite.csv", "header");
  chart1 = loadImage("world_1200.png");
  meteor = loadImage("meteor.png");

  cp5year = new ControlP5(this);
  cp5mass = new ControlP5(this);

  geoMap = new GeoMap(0, 67, 1200, 578, this);
  geoMap.readFile("world");

  // Set up text appearance.
  textAlign(LEFT, BOTTOM);
  textSize(18);

  //Drawing size
  size(1200, 675, P3D);

  //Button Titles
  String[] labels = {
    "Strikes By Year", 
    "Strikes By Size", 
    "8 Biggest Known Hits By Date", 
    "Meteorite Fall Statistics"
  };

  //Button offState, onState, overState, pressState
  color[] states = {
    #000308, #2846BC, #FF0307, #FAF7F8
  };


  menu = new Menu(Layout.TOP, new Dimension(width, 45), labels, states, ButtonType.RECT);

  cp5year.addSlider("currentYear")
    .setCaptionLabel("Year")
    .setPosition(0, 650)
    .setWidth(1200)
    .setHeight(20)
    .setRange(1800, 2013)
    .setValue(1898)
    .setSliderMode(Slider.FLEXIBLE)
    ;

  cp5mass.addSlider("currentMass")
    .setCaptionLabel("Mass")
    .setPosition(0, 650)
    .setWidth(1200)
    .setHeight(20)
    .setRange(0, 8)
    .setValue(3)
    .setNumberOfTickMarks(8)
    .snapToTickMarks(true)
    .setSliderMode(Slider.FLEXIBLE)
    ;

  //mouseover info
  circleColor = color(255);
  baseColor = color(0);
  circleX = 125;
  circleY = 275;
  circleX2 = 500;
  circleY2 = 300;
  circleX3 = 850;
  circleY3 = 225;
  circleX4 = 1075;
  circleY4 = 215;
  circleX5 = 150;
  circleY5 = 550;
  circleX6 = 450;
  circleY6 = 525;
  circleX7 = 750;
  circleY7 = 500;
  circleX8 = 1050;
  circleY8 = 500;
  ellipseMode(CENTER);
}

void draw() {

  cp5year.hide();
  cp5mass.hide();
  smooth();
  image(chart1, 0, 45);

  if (menu.getSelected() == "Strikes By Year") {
    cp5year.show();
    background(0);
    image(chart1, 0, 45);
    textSize(30);
    fill(50);
    text("Global Meteor Strikes By Year", 400, 70);
    text("Use the slide to select a year.", 400, 625);

    for (TableRow row : table.rows()) {

      int year = row.getInt("year");
      String name = row.getString("name");
      float mass = row.getFloat("mass");
      int massRound = row.getInt("massRound");
      float reclat = row.getFloat("reclat");
      float reclong = row.getFloat("reclong");

      //latitude = -90 to +90
      //longitude = -180 to +180

      float mapX = map(reclong, -180, 180, 0, width);
      //have to invert values because processing screen layout
      float mapY = map(reclat, 90, -90, 45, height-45);
      //remap mass to a smaller range of 1 to 5
      float mapMass = map(mass, 0, 5000000, 6.0, 8.0);
      noStroke();
      textSize(20);
      fill(0, 102, 153);
      text(currentYear, 75, 200);
      if (currentYear == year) {
        fill(255, 0, 0);
        stroke(255, 0, 0, 100);
        strokeWeight(mapMass);
        //ellipse(mapX, mapY, mapMass, mapMass);
        ellipse(mapX, mapY, massRound+8, massRound+8);
      }
    }
  } else if (menu.getSelected() == "Strikes By Size") {
    cp5mass.show();
    background(0);
    image(chart1, 0, 45);
    textSize(30);
    fill(50);
    text("Global Meteor Strikes By Size", 400, 70);
    text("Use the slide to select a size. Smallest to Largest", 200, 625);

    for (TableRow row : table.rows()) {

      int year = row.getInt("year");
      String name = row.getString("name");
      float mass = row.getFloat("mass");
      int massRound = row.getInt("massRound");
      float reclat = row.getFloat("reclat");
      float reclong = row.getFloat("reclong");

      //latitude = -90 to +90
      //longitude = -180 to +180

      float mapX = map(reclong, -180, 180, 0, width);
      //have to invert values because processing screen layout
      float mapY = map(reclat, 90, -90, 45, height-45);
      if (currentMass == massRound) {
        stroke(#4169E1, 200);
        strokeWeight(massRound+8);
        ellipse(mapX, mapY, massRound+8, massRound+8);
      }
    }
  } else if (menu.getSelected() == "8 Biggest Known Hits By Date") {
    textSize(30);
    update(mouseX, mouseY);

    noStroke();
    if (circleOver) {
      background(circleColor);
      image(meteor, 25, 75);
      fill(50);
      text(m1, 30, 100, 1150, 900);  // Text wraps within text box
    } else if (circleOver2) {
      background(circleColor);
      image(meteor, 400, 60, width/2, height/2);
      fill(50);
      text(m2, 30, 100, 1150, 900);  // Text wraps within text box
    } else if (circleOver3) {
      background(circleColor);
      image(meteor, 775, 75, width/3, height/3);
      fill(50);
      text(m3, 30, 100, 1150, 900);  // Text wraps within text box
    } else if (circleOver4) {
      background(circleColor);
      image(meteor, 1025, 100, width/4, height/4);
      fill(50);
      text(m4, 30, 100, 1150, 900);  // Text wraps within text box
    } else if (circleOver5) {
      background(circleColor);
      image(meteor, 100, 450, width/5, height/5);
      fill(50);
      text(m5, 30, 100, 1150, 300);  // Text wraps within text box
    } else if (circleOver6) {
      background(circleColor);
      image(meteor, 400, 450, width/6, height/6);
      fill(50);
      text(m6, 30, 100, 1150, 300);  // Text wraps within text box
    } else if (circleOver7) {
      background(circleColor);
      image(meteor, 700, 450, width/7, height/7);
      fill(50);
      text(m7, 30, 100, 1150, 300);  // Text wraps within text box
    } else if (circleOver8) {
      background(circleColor);
      image(meteor, 1000, 450, width/8, height/8);
      fill(50);
      text(m8, 30, 100, 1150, 300);  // Text wraps within text box
    } else {
      background(baseColor);
      image(meteor, 25, 75);
      image(meteor, 400, 60, width/2, height/2);
      image(meteor, 775, 75, width/3, height/3);
      image(meteor, 1025, 100, width/4, height/4);
      image(meteor, 100, 450, width/5, height/5);
      image(meteor, 400, 450, width/6, height/6);
      image(meteor, 700, 450, width/7, height/7);
      image(meteor, 1000, 450, width/8, height/8);
    }

    noStroke();
    noFill();
    text("Mouseover each for more information.", 5, 70);
    ellipse(circleX, circleY, circleSize, circleSize);
    ellipse(circleX2, circleY2, circleSize, circleSize);
    ellipse(circleX3, circleY3, circleSize, circleSize);
    ellipse(circleX4, circleY4, circleSize, circleSize);
    ellipse(circleX5, circleY5, circleSize, circleSize);
    ellipse(circleX6, circleY6, circleSize, circleSize);
    ellipse(circleX7, circleY7, circleSize, circleSize);
    ellipse(circleX8, circleY8, circleSize, circleSize);
  } else if (menu.getSelected() == "Meteorite Fall Statistics") {
    cp5year.hide();
    cp5mass.hide();

    // Set up text appearance.
    textAlign(LEFT, BOTTOM);
    textSize(18);
    background(255);  // Ocean colour
    strokeWeight(1);
    stroke(255, 50);  // Boundary colour

    // Draw entire world map.
    fill(208);        // Land colour
    geoMap.draw();    // Draw the entire map.

    // Draw countries - lighter and darker for hits 
    for (int id : geoMap.getFeatures().keySet())
    {
      String countryCode = geoMap.getAttributeTable().findRow(str(id), 0).getString("ISO_A3");    
      hits = geoMap.getAttributeTable().findRow(str(id), 0).getInt("HITS");

      if (hits != -1)       // Table row matches country code
      {
        hits = geoMap.getAttributeTable().findRow(str(id), 0).getInt("HITS");

        fill(40, 70, 188, hits*4);
      } else  // No data found in table.
      {
        fill(40, 70, 188);
      }
      geoMap.draw(id); // Draw country
    }


    // Query the country at the mouse position.
    id = geoMap.getID(mouseX, mouseY);

    if (id != -1)
    {
      name = geoMap.getAttributeTable().findRow(str(id), 0).getString("NAME");
      hits = geoMap.getAttributeTable().findRow(str(id), 0).getInt("HITS");
      fill(255, 3, 7, hits+100);
      strokeWeight(1);
      stroke(0, 100);
      geoMap.draw(id);// Draw country

      //Mouseover Text Color
      fill(0);
      text(name, mouseX+5, mouseY-5);
      text(hits, mouseX+15, mouseY+15);
    }

    textSize(20);
    fill(50);
    text("Meteorite Falls by Country", 450, 70);
    text("Falls are meteorites collected soon after being seen falling.", 300, 670);
  }

  //Displays the menu - moved to bottom to stay on top up background
  menu.display();
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = false;
    rectOver = false;
  } else if ( overCircle2(circleX2, circleY2, circleSize) ) {
    circleOver = false;
    circleOver2 = true;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = false;
    rectOver = false;
  } else if ( overCircle3(circleX3, circleY3, circleSize) ) {
    circleOver = false;
    circleOver2 = false;
    circleOver3 = true;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = false;
    rectOver = false;
  } else if ( overCircle4(circleX4, circleY4, circleSize) ) {
    rectOver = false;
    circleOver = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = true;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = false;
  } else if ( overCircle5(circleX5, circleY5, circleSize) ) {
    rectOver = false;
    circleOver = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = true;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = false;
  } else if ( overCircle6(circleX6, circleY6, circleSize) ) {
    rectOver = false;
    circleOver = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = true;
    circleOver7 = false;
    circleOver8 = false;
  } else if ( overCircle7(circleX7, circleY7, circleSize) ) {
    rectOver = false;
    circleOver = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = true;
    circleOver8 = false;
  } else if ( overCircle8(circleX8, circleY8, circleSize) ) {
    rectOver = false;
    circleOver = false;
    circleOver2 = false;
    circleOver3 = false;
    circleOver4 = false;
    circleOver5 = false;
    circleOver6 = false;
    circleOver7 = false;
    circleOver8 = true;
  } else {
    circleOver = rectOver = circleOver2 = circleOver3 = circleOver4 = circleOver5 = circleOver6 = circleOver7 = circleOver8 = false;
  }
}


boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle4(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle5(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle6(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle7(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle8(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
