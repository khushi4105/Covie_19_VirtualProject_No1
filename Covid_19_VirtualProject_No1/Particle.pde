class Particle
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle()
  {
    location  = new PVector(mouseX+5, mouseY-20);
    acceleration = new PVector(0,0.02);
    velocity = new PVector(random(-0.5,0.5), random(-0.5,0.5));
    lifespan = 100;
  }

  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan = lifespan - 0.5;
  }

  void display()
  {
    stroke(227, 197, 133, lifespan);
    fill(117, 134, 23,lifespan);
    ellipse(location.x, location.y, 6,6);
  }

  boolean isDead()
  {
    if (lifespan<0.0)
    {
      return true;
    } else
    {
      return false;
    }
  }

  void run()
  {
    display();
    update();
  }
}
