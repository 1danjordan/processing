void setup() {
  size(200, 200);
  noStroke();
}

void draw () {
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX; //inverse X
  float iy = height - mouseY; //inverse Y
  background(190);
  fill(255, 150);
  ellipse(x, height/2, y, y);
  fill(0, 159);
  ellipse(ix, height/2, iy, iy);
}
