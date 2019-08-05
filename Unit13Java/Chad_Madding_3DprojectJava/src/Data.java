import processing.core.PApplet;

public class Data  extends PApplet{
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
	  public String getName() {
	    return team;
	  }
	  public float getxValue() {
	    return xValue;
	  }
	  public float getyValue() {
	    return yValue;
	  }
	  public float getzValue() {
	    return zValue;
	  }
	}