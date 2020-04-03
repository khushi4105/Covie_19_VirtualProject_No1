
class Virus
{ 
  float x;
  float y;
  PVector position;
  PImage PurpleVirus;
  boolean isAlive;

  Virus()
  {
    x = random(0, 500);
    y = random(0, 500);
    position = new PVector(x, y);

    PurpleVirus = loadImage("virus.png");
    PurpleVirus.resize(60, 60);
    isAlive=false;
  }

  void Draw()
  {
    if (isAlive)
    {
      image(PurpleVirus, x, y);
    }
  }
  
  void MakeVirusAlive()
  {
    isAlive=true;
  }
}
