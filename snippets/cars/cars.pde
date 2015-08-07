
//Declaring the Car class
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  //The Car object constructor
  Car() {
    c = color(190,60,50);
    xpos = width/3;
    ypos = height/3;
    xspeed = 1;
  }
  
  //Second Car object constructor for
  //specifying params
  Car(color tempC, float tempX, float tempY) {
    c = tempC;
    xpos = tempX;
    ypos = tempY;
    xspeed = 1;
  }
  
  //Creating the display() method that
  //defines the position and color of the car
  
 void display() {
   rectMode( CENTER);
   fill(c);
   rect(xpos, ypos, 20, 10);
 }
 
 //Creating the drive() method that
 //moves the car along the x-axis and
 //moves it back to the beginning once
 //its crossed the page
 void drive(){
   xpos += xspeed;
   if (xpos > width) {
     xpos = 0;
   }
 }
}

//declaring the myCar objects
Car myCar1;
Car myCar2;

void setup() {
  
  //Initializing the myCar object
  myCar1 = new Car();
  myCar2 = new Car(color(0,0,255), width/2, width/2);
}

void draw() {
  background(255);
  //Call Car methods
 myCar1.drive();
 myCar1.display();
 myCar2.drive();
 myCar2.display();
} 
