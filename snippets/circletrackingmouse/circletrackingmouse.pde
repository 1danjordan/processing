void setup() {
  size(200, 200);
  noStroke();
}

//Creating circles that track the mouse by including the mouseX var
void draw() {
  background(124);
  ellipse(mouseX, 19, 33, 33); //Top circle
  ellipse(mouseX + 100, 100, 33, 33); //Middle circle
  ellipse(mouseX - 100, 150, 33, 33); //Bottom circle
}
