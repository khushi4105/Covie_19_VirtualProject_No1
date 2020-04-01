
PImage PurpleVirus;

void setup()
{
  size(500, 500);

  PurpleVirus = loadImage("virus.png");
  PurpleVirus.resize(80,80);
}

void draw()
{
  background(0);

  //1st virus line
  image(PurpleVirus, 15, 40);
  image(PurpleVirus, 115, 40);
  image(PurpleVirus, 215, 40);
  image(PurpleVirus, 315, 40);
  image(PurpleVirus, 415, 40);

  //2nd virus line
  image(PurpleVirus, 65, 130);
  image(PurpleVirus, 165, 130);
  image(PurpleVirus, 265, 130);
  image(PurpleVirus, 365, 130);

  //3rd virus line
  image(PurpleVirus, 15, 220);
  image(PurpleVirus, 115, 220);
  image(PurpleVirus, 215, 220);
  image(PurpleVirus, 315, 220);
  image(PurpleVirus, 415, 220);

  //4th virus line
  image(PurpleVirus, 65, 310);
  image(PurpleVirus, 165, 310);
  image(PurpleVirus, 265, 310);
  image(PurpleVirus, 365, 310);

  //5th virus line
  image(PurpleVirus, 15, 400);
  image(PurpleVirus, 115, 400);
  image(PurpleVirus, 215, 400);
  image(PurpleVirus, 315, 400);
  image(PurpleVirus, 415, 400);
}
