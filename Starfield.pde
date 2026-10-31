//your code here
Particle[] parts = new Particle [1000];


void setup()
{
  //your code here
  size(400,400);
  for (int i = 0; i<parts.length; i++) {
  parts[i] = new Particle();
  }
  parts[0] = new OddballParticle();
}


void draw()
{
  //your code here
  background (0);
  for (int i = 0; i < parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }
}


class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  int myColor;
  
  
  Particle(){
    myX = 200;
    myY = 200;
    myAngle = (double)Math.random()*2*Math.PI;
    mySpeed = (double)Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  }
  
  
    void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    }
    
    
    void show(){
      fill(myColor);
      noStroke();
     ellipse((float)myX, (float)myY, 10, 10);
    }
}


class OddballParticle extends Particle//inherits from Particle
{
  //your code here
  OddballParticle()
  {
    myColor = color(255, 0, 0);
  }
  
  
  void move()
  {
    myX = myX + (Math.random()*5-2);
    myY = myY + (Math.random()*5-2);
  }
  
  
  void show()
  {
    fill(myColor);
   rect((float)myX, (float)myY, 25, 25); 
  }
}
