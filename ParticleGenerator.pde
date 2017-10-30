class ParticleGenerator
{
  PVector pos, pVel, pMaxDisplacement;
  ArrayList<Particle> particles, inactiveParticles;
  int pW, pH, spawnRate;
  color pCol;
  
  ParticleGenerator(PVector pos, PVector pVel, int pW, int pH, color pCol)
  {
    this.pos = pos;
    this.pVel = pVel;
    this.pW = pW;
    this.pH = pH;
    this.pCol = pCol;
    //this.maxParticles = maxParticles >= 1 ? maxParticles : 1;
    
    spawnRate = 20;
    particles = new ArrayList<Particle>();
    inactiveParticles = new ArrayList<Particle>();
  }
  
  void update()
  {
    println("Active particles: " + particles.size());
    println("Inactive particles: " + inactiveParticles.size());
    
    if(frameCount % spawnRate == 0)
    {
      if(inactiveParticles.size() >= 1)
      {
        Particle p = inactiveParticles.get(0);
        
        p.pos.x = this.pos.x;
        p.pos.y = this.pos.y;
        p.lifespan = p.startingLifespan;
        p.isActive = true;
        
        particles.add(p);
        inactiveParticles.remove(p);
      }
      else
      {
        println("New particle created");
        particles.add(new Particle(new PVector(pos.x, pos.y), pVel, pW, pH, color(random(256), random(256), random(256))));
        //++numParticles;
      }
    }
    
    for(int i = particles.size() - 1; i >= 0; --i)
    {
      Particle p = particles.get(i);
      
      p.update();
      
      if(!p.isActive)
      {
        inactiveParticles.add(p);
        particles.remove(p);
      }
    }
  }
  
  void render()
  {
    for(Particle p : particles)
    {
      p.render();
    }
  }
}
