
class Virus
{ 
  float x;
  float y;
  PVector position;
  PImage PurpleVirus;
  boolean isAlive;

  Virus()
  {
    x = mouseX+60;
    y = mouseY+50;
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
    
    if(mouseX < 620)
    {
     if(mouseX > 380)
     {
      if(mouseY > 180)
      {
       if(mouseY < 420)
       {
        isAlive=false; 
       }
      }
     }
    }
  }
}
