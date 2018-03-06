public abstract class ParticleGenerator extends Entity
{
  private ArrayList<Particle> activeParticles, inactiveParticles;
  private int delay;
  
  public ParticleGenerator(PVector position, int delay)
  {
    super(position);
    
    activeParticles = new ArrayList<Particle>();
    inactiveParticles = new ArrayList<Particle>();
    this.delay = delay;
  }
  
  @Override
  public void update()
  {
    if(createNewParticle())
    {
      Particle particle = new CircleParticle(this.position.copy(), 10, 10);
      activeParticles.add(particle);
    }
    
    updateParticles();
  }
  
  private void updateParticles()
  {
    for(Particle particle : activeParticles)
    {
      particle.update();
    }
  }
  
  private boolean createNewParticle()
  {
    return (frameCount % delay == 0) && (inactiveParticles.size() == 0);
  }
  
  @Override
  public void render()
  {
    for(Particle particle : activeParticles)
    {
      particle.render();
    }
  }
}