//Mouse clicked, more virus 
//space bar clicked, sink appears, virus lessens

PImage person;
PImage PurpleVirus;

ParticleSystem ps = new ParticleSystem();

void setup()
{
  size(500, 500);

  person = loadImage("boy.png");
  person.resize(125, 125);

  ps.addParticle();
}

void draw()
{
  background(0);

  imageMode(CENTER);
  image(person, mouseX, mouseY);

  ps.run();
}
