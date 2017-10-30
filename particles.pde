ArrayList<ParticleGenerator> particleGenerators;
int numGenerators = 10;

void setup()
{
  size(800, 600);
  
  particleGenerators = new ArrayList<ParticleGenerator>();
  
//  for(int i = 0; i <= numGenerators; ++i)
//  {
//    particleGenerators.add(new ParticleGenerator(
//    new PVector(i * (width / numGenerators), 0), 
//    new PVector(2, 2),
//    200,
//    5, 
//    5, 
//    color(255)
//    ));
//  }
  
  particleGenerators.add(new ParticleGenerator(
                         new PVector(width / 2, 0), 
                         new PVector(2, .5),
                         10, 
                         10, 
                         color(255)));
}

void draw()
{
  background(200);
  
  for(ParticleGenerator pG : particleGenerators)
  {
    pG.update();
    pG.render();
  }
  
  //println(frameRate);
}
