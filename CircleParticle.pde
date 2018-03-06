public class CircleParticle extends Particle
{
  public CircleParticle(PVector position, int w, int h)
  {
    super(position, w, h);
  }
  
  @Override
  public void render()
  {
    fill(colour);
    ellipse(position.x, position.y, w, h);
  }
}