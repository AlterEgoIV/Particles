private ArrayList<ParticleGenerator> particleGenerators;

void setup()
{
  size(800, 600);
  
  particleGenerators = new ArrayList<ParticleGenerator>();
  particleGenerators.add(new VortexParticleGenerator(new PVector(width / 2, height / 2), 60));
}

void draw()
{
  background(51);
  
  for(ParticleGenerator particleGenerator : particleGenerators)
  {
    particleGenerator.update();
  }
  
  for(ParticleGenerator particleGenerator : particleGenerators)
  {
    particleGenerator.render();
  }
}