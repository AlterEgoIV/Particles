public class SpiralParticleMover implements ParticleMover
{
  @Override
  public void moveParticle(Particle particle)
  {
    particle.setX(particle.getX() + cos(particle.getAngle()) * particle.getDistanceFromOrigin());
    particle.setY(particle.getY() + sin(particle.getAngle()) * particle.getDistanceFromOrigin());
  }
}