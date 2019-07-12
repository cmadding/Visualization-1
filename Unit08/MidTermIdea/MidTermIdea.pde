//Dashboard Idea
/* ButtonType.java, Component, Dimension, Layout.java, Menu, RectButton, RoundedRectButton objects
 From Verlet World Demo 
 By: Ira Greenberg
 Original idea from Nelson project*/

import controlP5.*;
ControlP5 cp5;


PImage chart1;
PImage chart2;
PImage chart3;
PImage chart4;
PImage chart5;

color background = #D8D8D8;
Menu menu;

void setup() {

  chart1 = loadImage("chart1.png");
  chart2 = loadImage("chart2.png");
  chart3 = loadImage("chart3.png");
  chart4 = loadImage("chart4.png");
  chart5 = loadImage("chart5.png");


  //Drawing size
  size(1200, 900, P3D);

  //Button Titles
  String[] labels = {
    "This Is Chart 1", 
    "This Is Chart 2", 
    "This Is Chart 3", 
    "This Is Chart 4", 
    "This Is Chart 5"
  };

  //Button offState, onState, overState, pressState
  color[] states = {
    #000308, #2846BC, #FF0307, #FAF7F8
  };


  menu = new Menu(Layout.TOP, new Dimension(width, 45), labels, states, ButtonType.RECT);
  //menu = new Menu(Layout.LEFT, new Dimension(175, height/4), labels, states, ButtonType.ROUNDED_RECT);
  //menu = new Menu(Layout.BOTTOM, new Dimension(width, 45), labels, states, ButtonType.RECT);
  //menu = new Menu(Layout.RIGHT, new Dimension(175, height), labels, states, ButtonType.RECT);
  // How to change corner radius through explicit casting
  //RoundedRectButton rb = (RoundedRectButton)(menu.buttons[0]);
  //rb.cornerRadius = 12;
}



void draw() {

  background(background);

  if (menu.getSelected() == "This Is Chart 1") {
    background(#FF0313);
    image(chart1, 50, 100);
    textSize(30);
    fill(50);
    text("Chart 1", 550, 70);
  } else if (menu.getSelected() == "This Is Chart 2") {
    background(#05F206);
    image(chart2, 50, 100);
    textSize(30);
    fill(50);
    text("Chart 2", 550, 70);
  } else if (menu.getSelected() == "This Is Chart 3") {
    background(#051FFC);
    image(chart3, 50, 100);
    textSize(30);
    fill(50);
    text("Chart 3", 550, 70);
  } else if (menu.getSelected() == "This Is Chart 4") {
    background(#FFFFFF);
    image(chart4, 50, 100);
    textSize(30);
    fill(50);
    text("Chart 4", 550, 70);
  } else if (menu.getSelected() == "This Is Chart 5") {
    background(#050505);
    image(chart5, 50, 100);
    textSize(30);
    fill(50);
    text("Chart 5", 550, 70);
  }

  //Displays the menu - moved to bottom to stay on top up background
  menu.display();
}
