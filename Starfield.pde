Particle[] parts;
void setup()
{
  parts = new Particle [2000];
  boolean start = false;
  size (500, 500);
  for (int i = 0; i < parts.length; i++)
    parts[i] = new Particle();
  parts[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < parts.length; i++){
    parts[i].show();
    parts[i].move();

}
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = 250;
    myY = 250;
    mySpeed = Math.random()*5;
    myAngle = Math.random() * 2 * Math.PI;
  }
  void move()
  {
  myX = myX - Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
  if(myX>500 || myX<0 || myY>500 || myY<0){
    myX = 250;
    myY = 250;
  }
  }

  void show()
  {
    fill(255,0,0);
  ellipse ((float)myX,(float)myY,5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    mySpeed = Math.random()*100;
    myAngle = 90;
    //Math.random() * 1 * Math.PI;
  }


  void move()
  {
  myX = myX - Math.cos(myAngle) * mySpeed;
  myY = myY + Math.sin(myAngle) * mySpeed;
  if(myX>500 || myX<0 || myY>500 || myY<0){
    myX = Math.random()*500;
    myY = 0;
  }
  }

  void show()
  {
    fill(245,120,20);
  ellipse ((float)myX, (float)myY, 50, 50);
  }
}

//First, finish the Particle class. It will need the following members:
//5 member variables: X and Y positions, Color, Angle and Speed. (Hint: use doubles for X, Y, Speed and Angle)
//Particle(), the class constructor
//void move(), Takes the cos of the angle times the speed and adds it to the X coordinate. Does the same to Y with the sin of the angle.
//void show(), draws the particle in the correct color
//Now finish the program's setup() and draw()
//Add one Particle variable, and make sure you can see it move
//Add an array of type Particle and loop through it to move and show all the Particles.
//Create an OddballParticle class that extends the Particle class.
//Change the first element in the array to a OddballParticle instead of a Particle
//Run your program. Make sure you can see the Oddball.
