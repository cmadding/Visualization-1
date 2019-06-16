
class Meteo {

  //atributes of the class
  float x;
  float y;
  float z = 3;

  int year;
  float mass;
  String name;

  int myCount = 0;
  float mySize = 5;

  Ple_Agent myParticle;

  boolean exit = false;

  Meteo(float _x, float _y, float _mass, int _year, String _name) {

    x = _x;
    y = _y;
    mass = _mass;
    year = _year;
    name = _name;


    Vec3D origin = new Vec3D(x-200, y-200, z+200);
    myParticle = new Ple_Agent(p5, origin );
    myParticle.initTail(40);
  }

  void run() {

    if (exit == false) {
      particle();
    } else {
      explode();
    }
  }

  void particle() {

    if (year < currentYear) {
      stroke (0, 0, 255);
      strokeWeight(2);
      myParticle.displayPoint();
      Vec3D target = new Vec3D(x, y, z);
      myParticle.seek(target, 1);
      myParticle.update();
      myParticle.displayTailPoints(255, 0, 0, 0, 1, 255, 0, 0, 255, 2);
      myParticle.updateTail(1);

      float dis = myParticle.loc.distanceTo(target);

      if (dis < 3) {
        exit = true;
      }
    }
  }

  void explode() {
    if (mySize < (mass * 5)) {
      stroke(255, 0, 0, 90);
      strokeWeight(mySize);
      point(x, y, z);
      mySize += 1;
    }
  }

  void display() {
    stroke(255, 0, 0, 90);
    strokeWeight(mass);
    point(x, y, z);

    strokeWeight(1);
    line(x, y, z, x, y, z + (mass * 4));
  }
}
