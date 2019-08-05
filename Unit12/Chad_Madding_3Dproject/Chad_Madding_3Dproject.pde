import peasy.*;
PeasyCam cam;

Engine engine;
Spheres spheres;

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

public void setup() {
  size(500, 500, P3D);
  engine = new Engine("data.csv");
  cam = new PeasyCam(this, 500);
  spheres = new Spheres();
  cam.setMinimumDistance(100);
  cam.setMaximumDistance(1000);
}

public void draw() { 

  //engine.init();
  background(255);
  lights();
  coordinateDraw();
  spheres.display();
  printCamera();
}
