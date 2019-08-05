import processing.core.*;
import processing.javafx.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

public class Spheres extends PApplet {
  // Properties
  Data[] data;

  float x, y, z;

  // Constructors
  Spheres() {
  }

  Spheres(Data[] data) {
    this.data = data;
  }

  public void display() {

    //Data:
    //NHL standings for 2011-12
    //x-axis - number of wins, y-axis - number of points, z-axis - goal differential
    //https://people.cs.pitt.edu/~jwenskovitch/processing.html


    //1st point CANUCKS,51,111,51
    pushMatrix();
    //translate(x, y, z);
    translate(51, 111, 51);
    noStroke();
    fill(0, 0, 255, 100+111);
    sphere(5);
    popMatrix();

    //2nd point RANGERS,51,109,39
    pushMatrix();
    translate(51, 109, 39);
    noStroke();
    fill(0, 0, 255, 100+109);
    sphere(5);
    popMatrix();

    //3rd point 0, 0, 255S,49,109,45
    pushMatrix();
    translate(49, 109, 45);
    noStroke();
    fill(0, 0, 255, 100+109);
    sphere(5);
    popMatrix();

    //4th point PENGUINS,51,108,61
    pushMatrix();
    translate(51, 108, 61);
    noStroke();
    fill(0, 0, 255, 100+61);
    sphere(5);
    popMatrix();

    //5th point PREDATORS,48,104,27
    pushMatrix();
    translate(48, 104, 27);
    noStroke();
    fill(0, 0, 255, 100+27);
    sphere(5);
    popMatrix();

    //6th point FLYERS,47,103,32
    pushMatrix();
    translate(47, 103, 32);
    noStroke();
    fill(0, 0, 255, 100+32);
    sphere(5);
    popMatrix();

    //7th point BRUINS,49,102,67
    pushMatrix();
    translate(49, 102, 67);
    noStroke();
    fill(0, 0, 255, 100+67);
    sphere(5);
    popMatrix();

    //8th point RED_WINGS,48,102,45
    pushMatrix();
    translate(48, 102, 45);
    noStroke();
    fill(0, 0, 255, 100+45);
    sphere(5);
    popMatrix();

    //9th point DEVILS,48,102,19
    pushMatrix();
    translate(48, 102, 19);
    noStroke();
    fill(0, 0, 255, 100+19);
    sphere(5);
    popMatrix();

    //10th point BLACKHAWKS,45,101,10
    pushMatrix();
    translate(45, 101, 10);
    noStroke();
    fill(0, 0, 255, 100+10);
    sphere(5);
    popMatrix();

    //11th point COYOTES,42,97,12
    pushMatrix();
    translate(42, 97, 12);
    noStroke();
    fill(0, 0, 255, 100+12);
    sphere(5);
    popMatrix();

    //12th point SHARKS 43,96,18
    pushMatrix();
    translate(43, 96, 18);
    noStroke();
    fill(0, 0, 255, 100+18);
    sphere(5);
    popMatrix();

    //13th point KINGS,40,95,15
    pushMatrix();
    translate(40, 95, 15);
    noStroke();
    fill(0, 0, 255, 100+15);
    sphere(5);
    popMatrix();

    //14th point PANTHERS,38,94,-24
    pushMatrix();
    translate(38, 94, -24);
    noStroke();
    fill(0, 0, 255, 100-24);
    sphere(5);
    popMatrix();

    //15th point CAPITALS,42,92,-8
    pushMatrix();
    translate(42, 92, -8);
    noStroke();
    fill(0, 0, 255, 100-8);
    sphere(5);
    popMatrix();

    //16th point SENATORS,41,92,9
    pushMatrix();
    translate(41, 92, 9);
    noStroke();
    fill(0, 0, 255, 100+9);
    sphere(5);
    popMatrix();

    //17th point FLAMES,37,90,-24
    pushMatrix();
    translate(37, 90, -24);
    noStroke();
    fill(0, 0, 255, 100-24);
    sphere(5);
    popMatrix();

    //18th point STARS,42,89,-11
    pushMatrix();
    translate(42, 89, -11);
    noStroke();
    fill(0, 0, 255, 100-11);
    sphere(5);
    popMatrix();

    //19th point SABRES,39,89,-12
    pushMatrix();
    translate(39, 89, -12);
    noStroke();
    fill(0, 0, 255, 100-12);
    sphere(5);
    popMatrix();

    //20th point AVALANCHE,41,88,-12
    pushMatrix();
    translate(41, 88, -12);
    noStroke();
    fill(0, 0, 255, 100-12);
    sphere(5);
    popMatrix();

    //21th point LIGHTNING,38,84,-46
    pushMatrix();
    translate(38, 84, -46);
    noStroke();
    fill(0, 0, 255, 100-46);
    sphere(5);
    popMatrix();

    //22th point JETS,37,84,-21
    pushMatrix();
    translate(37, 84, -21);
    noStroke();
    fill(0, 0, 255, 100-21);
    sphere(5);
    popMatrix();

    //23th point HURRICANES,33,82,-30
    pushMatrix();
    translate(33, 82, -30);
    noStroke();
    fill(0, 0, 255, 100-30);
    sphere(5);
    popMatrix();

    //24th point WILD,35,81,-49
    pushMatrix();
    translate(35, 81, -49);
    noStroke();
    fill(0, 0, 255, 100-49);
    sphere(5);
    popMatrix();

    //25th point DUCKS,34,80,-27
    pushMatrix();
    translate(34, 80, -27);
    noStroke();
    fill(0, 0, 255, 100-27);
    sphere(5);
    popMatrix();

    //26th point MAPLE_LEAFS,35,81,-33
    pushMatrix();
    translate(35, 81, -33);
    noStroke();
    fill(0, 0, 255, 100-33);
    sphere(5);
    popMatrix();

    //27th point ISLANDERS,34,79,-52
    pushMatrix();
    translate(34, 79, -52);
    noStroke();
    fill(0, 0, 255, 100-52);
    sphere(5);
    popMatrix();

    //28th point CANADIENS,31,78,-14
    pushMatrix();
    translate(31, 78, -14);
    noStroke();
    fill(0, 0, 255, 100-14);
    sphere(5);
    popMatrix();

    //29th point OILERS,32,74,-27
    pushMatrix();
    translate(32, 74, -27);
    noStroke();
    fill(0, 0, 255, 100-27);
    sphere(5);
    popMatrix();

    //30th point 0, 0, 255_JACKETS,29,65,-60
    pushMatrix();
    translate(29, 65, -60);
    noStroke();
    fill(0, 0, 255, 100-60);
    sphere(5);
    popMatrix();

    translate(0, 0, 50);
  }
}
