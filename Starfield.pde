Particle[] parts;
void setup()
{
  parts = new Particle [100];
  boolean start = false;
  size (500, 500);
  for (int i = 0; i < parts.length; i++)
  parts[i] = new Particle();
  parts[0] = new OddballParticle();
}
void draw()
{
  //your code here
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
    
  
}

class OddballParticle //inherits from Particle
{
  //your code here
}

void move()
{
  
  
  
}

void show()
{
  
  
}
