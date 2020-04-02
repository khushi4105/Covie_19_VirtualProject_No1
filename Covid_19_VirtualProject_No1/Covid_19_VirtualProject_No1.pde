//Mouse clicked, particle system (cough/sneeze), more virus 
//space bar clicked, sink appears, virus lessens

PImage person;

void setup()
{
  size(500, 500);

  person = loadImage("boy.png");
  person.resize(125, 125);
}

void draw()
{
  background(0);

  imageMode(CENTER);
  image(person, mouseX, mouseY);
}
