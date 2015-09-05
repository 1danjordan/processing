void setup()
{
  size(800, 600);
  frameRate(1);
  noStroke();
}

boolean over = false;  // If mouse over

void randomFill()
{
  fill(color( random(20, 255), 
              random(0, 255), 
              random(100, 255)));
}

void draw_triangle( int dimension, int x1_coord, 
                    int y1_coord, int x2_coord, int y2_coord, 
                    int x3_coord, int y3_coord)
{
  // Set the points of the triangle
  int x1 = dimension * x1_coord;
  int y1 = dimension * y1_coord;
  int x2 = dimension * x2_coord;
  int y2 = dimension * y2_coord;
  int x3 = dimension * x3_coord;
  int y3 = dimension * y3_coord;
  randomFill();
  triangle(x1, y1, x2, y2, x3, y3);
}

// Draw the 8 triangle pattern
void pattern(int x, int y, int dimension)
{
  pushMatrix();
  translate(x, y);
  // Look familiar? It's our triangle point abstraction
  draw_triangle(dimension, 0, 0, 0, 1, 1, 0);
  draw_triangle(dimension, 0, 1, 1, 0, 1, 1);
  draw_triangle(dimension, 1, 0, 1, 1, 2, 1);
  draw_triangle(dimension, 1, 0, 2, 1, 2, 0);
  draw_triangle(dimension, 0, 1, 0, 2, 1, 2);
  draw_triangle(dimension, 0, 1, 1, 1, 1, 2);
  draw_triangle(dimension, 1, 1, 1, 2, 2, 1);
  draw_triangle(dimension, 1, 2, 2, 1, 2, 2);
  popMatrix();
}

void draw()
{
  background(100);
  fill( 0, 121, 184 );
  int dimension = 100;
  for (int i = 0; i < 800; i = i+200) {
    pattern(0, i, dimension);
    pattern(200, i, dimension);
    pattern(400, i, dimension);
    pattern(600, i, dimension);
  }
}
