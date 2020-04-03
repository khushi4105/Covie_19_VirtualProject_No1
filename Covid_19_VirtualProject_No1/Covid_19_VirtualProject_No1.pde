/*

 DONE:
 - particle system class
 - mouse clicked, person puked
 
 REMAINING:
 - mouse clicked, virus adds (virus class)
 - person near sink, virus lessons
 - edit ReadMe
 
 */

PImage Person;
PImage Wash;

Virus myFirstVirus; 
ParticleSystem ps = new ParticleSystem();

//Virus viruses[];

void setup()
{
  size(500, 500);

  Person = loadImage("boy.png");
  Person.resize(125, 125);

  Wash = loadImage("sink.png");
  Wash.resize(130, 130);

  ps.addParticle();

  myFirstVirus = new Virus();

  //viruses = new Virus[15];

  //for(int i=0; i<15; i++)
  //{
  //  viruses[i] = new Virus();
  //}
}

void draw()
{
  background(0);

  imageMode(CENTER);
  image(Person, mouseX, mouseY);

  image(Wash, 400, 290);

  ps.run();

  //for(int i=0; i<15; i++)
  //{
  //  viruses[i] = new Virus();
  //}

  myFirstVirus.Draw();
}

//void mousePressed()
//{
//  if (mousePressed)
//  {
//viruses = new Virus();
//  }
