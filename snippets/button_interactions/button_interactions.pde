void setup() {
  size(100, 100);
}

void draw() {
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      fill(0); //Black
    } else if (mouseButton == RIGHT) {
      fill(190); //Some other colour
    }
    else {
      fill(245);
    }
    rect(25, 25, 50, 50);
  }
}
      
