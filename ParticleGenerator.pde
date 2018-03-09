public abstract class ParticleGenerator extends Entity
{
  private ArrayList<Particle> activeParticles, inactiveParticles;
  private int spawnDelay, particleWidth, particleHeight;
  
  public ParticleGenerator(PVector position, int spawnDelay)
  {
    super(position);
    
    activeParticles = new ArrayList<Particle>();
    inactiveParticles = new ArrayList<Particle>();
    this.spawnDelay = spawnDelay;
    this.particleWidth = 10;
    this.particleHeight = 10;
  }
  
  @Override
  public void update()
  {
    if(createNewParticle())
    {
      Particle particle = new CircleParticle(this.position.copy(), particleWidth, particleHeight);
      activeParticles.add(particle);
    }
    
    //Particle particle = new CircleParticle(this.position.copy(), particleWidth, particleHeight);
    //activeParticles.add(particle);
    
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
    return (frameCount % spawnDelay == 0) && (inactiveParticles.size() == 0);
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