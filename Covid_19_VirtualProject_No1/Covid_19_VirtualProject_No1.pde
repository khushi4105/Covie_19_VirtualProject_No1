
PImage PurpleVirus;

void setup()
{
  size(500, 500);

  PurpleVirus = loadImage("virus.png");
  PurpleVirus.resize(80, 80);

  image(PurpleVirus, random(0, 500), random(0, 500));
  image(PurpleVirus, random(0, 500), random(0, 500));
  image(PurpleVirus, random(0, 500), random(0, 500));
  image(PurpleVirus, random(0, 500), random(0, 500));
  image(PurpleVirus, random(0, 500), random(0, 500));
}

void draw()
{
  background(0);
}
