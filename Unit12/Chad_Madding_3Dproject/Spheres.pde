public class Spheres {
  // Properties
  Data[] data;

  float x, y, z;

  // Constructors
  Spheres() {
  }

  Spheres(Data[] data) {
    this.data = data;
  }

  private float[] getCoords(Data data) {
    // Determine x, y and z coordinates for each team

    float x = data.getxValue();
    float y = data.getyValue();
    float z = data.getzValue();


    float[] coords = {x, y, z};
    println(coords);
    return coords;
  }

  public void display() {
    // Draw graph
    background(255);

    pushMatrix();
    stroke(0);
    noFill();
    translate(width/2, height/2, -width/2);
    lights();
    box(width, height, width);
    popMatrix();

    fill(255, 0, 0, 200);
    noStroke();

    for (int i = 0; i <  data.length; i++) {
      print(data[i]);
      float[] coords = getCoords(data[i]);
      pushMatrix();
      translate(coords[0], coords[1], coords[2]);
      sphere(25);
      popMatrix();
    }
  }
}
/*
  //1st point
 pushMatrix();
 //translate(x, y, z);
 translate(51, 111, 51);
 noStroke();
 fill(green);
 sphere(5);
 popMatrix();
 
 //2nd point
 
 pushMatrix();
 translate(51, 109, 39);
 noStroke();
 fill(blue);
 sphere(5);
 popMatrix();
 
 //3rd point
 pushMatrix();
 translate(37, 90, -24);
 noStroke();
 fill(red);
 sphere(5);
 popMatrix();
 
 //4th point
 pushMatrix();
 translate(25, 25, 25);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 //5th point
 pushMatrix();
 translate(2, 8, 4);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 //6th point
 pushMatrix();
 translate(5, 3, 9);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 //7th point
 pushMatrix();
 translate(9, 1, 6);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 //8th point
 pushMatrix();
 translate(5, 3, 1);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 //9th point
 pushMatrix();
 translate(6, 8, 2);
 noStroke();
 fill(yellow);
 sphere(5);
 popMatrix();
 
 translate(0, 0, 50);
 
 }
 */
