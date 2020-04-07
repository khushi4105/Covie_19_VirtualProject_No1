/*

 1. Press mouse continuosly, poisonous virus falls
 2. Click mouse at the same time, virus increases
 3. Go near sink (represents washing hands), virus stops getting added)
 
 */

PImage Person;
PImage Wash;
PImage Bath;

PFont Serif;

Virus myFirstVirus; 
ParticleSystem ps = new ParticleSystem();

Virus viruses[];

int NoOfViruses = 0;

void setup()
{
  size(600, 600);

  Person = loadImage("boy.png");
  Person.resize(125, 125);

  Wash = loadImage("sink.png");
  Wash.resize(150, 150);
  
  Bath = loadImage("shower.png");
  Bath.resize(175, 200);

  ps.addParticle();

  //myFirstVirus = new Virus();

  viruses = new Virus[100];

  for (int i=0; i<100; i++)
  {
    viruses[i] = new Virus();
  }

  Serif = loadFont("codinggggg.vlw");
}

void draw()
{
  background(0);

  imageMode(CENTER);
  image(Person, mouseX, mouseY);

  image(Wash, 345, 455);
  
  image(Bath, 500, 450);
  ps.run();

  if (NoOfViruses > 0)
  {
    for (int i=0; i<NoOfViruses; i++)
    {
      viruses[i].Draw();
    }
  }

  fill(255, 244, 160);
  textFont(Serif);
  text("Hold mouse continously for infectious", 10, 20 ); 
  text("droplets to fall. Press mouse at", 10, 40 ); 
  text("the same time to show spread of virus", 10, 60); 
  text("particles. If ill boy goes near the sink", 10, 80 ); 
  text("& shower, virus particles will stop adding.", 10, 100); 

  //myFirstVirus.Draw();
}

void mousePressed()
{
  if (mousePressed)
  {
    if (NoOfViruses < 100)
    {
      viruses[NoOfViruses] = new Virus();
      viruses[NoOfViruses].MakeVirusAlive();
      NoOfViruses = NoOfViruses + 1;
      println(NoOfViruses);
    }
  }
}
