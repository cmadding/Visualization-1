import processing.core.*;
import processing.javafx.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

public class Engine extends PApplet {
  // Properties
  DataLoader dl;
  Data[] data;
  Spheres spheres;

  // Constructors
  Engine() {
  }

  Engine (String csvFile) {
    dl = new DataLoader(csvFile);
    data = dl.getData();
  }

  // Methods
  public void init() {
    spheres = new Spheres(data);
    //graphData.display();
  }
}
