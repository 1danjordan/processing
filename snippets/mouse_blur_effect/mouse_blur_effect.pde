void setup() {
  size(300, 300);
  strokeWeight(8);
}

//pmouse stores the mouse values from the previous frame
//moving the mouse quickly creates a movement blur effect
void draw() {
  background(204);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
