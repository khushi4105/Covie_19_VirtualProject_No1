class ParticleSystem
{
  ArrayList<Particle> particles; 
  PVector origin;
  int total = 5;

  ParticleSystem()
  {
    particles = new ArrayList();
  }

  void addParticle()
  {
    if (mousePressed)
    {
      particles.add(new Particle());
    }
  }

  void run()
  {
    if (mousePressed)
    {
      particles.add(new Particle());

      //PurpleVirus = loadImage("virus.png");
      //PurpleVirus.resize(60, 60);
      //image(PurpleVirus, random(0,500), random(0,500));
    }

    for (int i = particles.size()-1; i>=0; i--)
    {
      Particle p1 = particles.get(i);
      p1.run();

      if (p1.isDead())
      {
        particles.remove(i);
      }
    }
  }
}
