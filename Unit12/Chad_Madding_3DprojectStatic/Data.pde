public class Data {
  // Properties
  private String team;
  private float xValue, yValue, zValue;

  // Constructors
  Data() {
  }

  Data(String team, float xValue, float yValue, float zValue) {
    this.team = team;
    this.xValue = xValue;
    this.yValue = yValue;
    this.zValue = zValue;
  }

  // Methods
  String getName() {
    return team;
  }
  float getxValue() {
    return xValue;
  }
  float getyValue() {
    return yValue;
  }
  float getzValue() {
    return zValue;
  }
}
