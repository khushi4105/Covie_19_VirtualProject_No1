class ParticleSystem
{
  ArrayList<Particle> particles; 
  PVector origin;
  int total = 15;

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
