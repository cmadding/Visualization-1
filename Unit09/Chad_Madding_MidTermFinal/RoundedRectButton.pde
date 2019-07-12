/* From Verlet World Demo 
 By: Ira Greenberg
 */

class RoundedRectButton extends RectButton {
  float cornerRadius;

  RoundedRectButton() {
  }

  RoundedRectButton(PVector position, Dimension dimension, String label, color[] states, float cornerRadius) {
    super(position, dimension, label, states);
    this.cornerRadius = cornerRadius;
  }

  void display() {
    if (hasBorder) {
      stroke(100);
    } else {
      noStroke();
    }
    fill(labelCol);
    rect(position.x, position.y, dimension.w, dimension.h);

    fill(labelTextCol);
    float tw = textWidth(label);
    textAlign(LEFT, CENTER);
    text(label, position.x + (dimension.w-tw)/2.0, position.y + dimension.h/2);
  }
}
