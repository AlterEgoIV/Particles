public abstract class Particle extends Entity
{
  private ParticleMover particleMover;
  protected PVector velocity;
  protected int w, h, life;
  protected boolean isActive;
  protected color colour;
  protected float angle, distanceFromOrigin;
  
  public Particle(PVector position, int w, int h)
  {
    super(position);
    init(position, w, h, color(255));
  }
  
  public Particle(PVector position, int w, int h, color colour)
  {
    super(position);
    init(position, w, h, colour);
  }
  
  public void init(PVector position, int w, int h, color colour)
  {
    this.particleMover = new SpiralParticleMover();
    this.w = w;
    this.h = h;
    this.life = 255;
    this.velocity = new PVector(random(-1, 1), random(-1, 1));
    this.isActive = true;
    this.colour = colour;
    this.angle = 0f;
    this.distanceFromOrigin = 0f;
  }
  
  @Override
  public void update()
  {
    particleMover.moveParticle(this);
    //position.add(velocity);
    
    angle += .01;
    distanceFromOrigin += 0.003;
    age();
  }
  
  private void age()
  {
    if(life-- == 0)
    {
      setActive(false);
    }
  }
  
  public float getX()
  {
    return position.x;
  }
  
  public void setX(float x)
  {
    position.x = x;
  }
  
  public float getY()
  {
    return position.y;
  }
  
  public void setY(float y)
  {
    position.y = y;
  }
  
  public float getVelocityX()
  {
    return velocity.x;
  }
  
  public void setVelocityX(float x)
  {
    velocity.x = x;
  }
  
  public float getVelocityY()
  {
    return velocity.y;
  }
  
  public void setVelocityY(float y)
  {
    velocity.y = y;
  }
  
  public float getAngle()
  {
    return angle;
  }
  
  public float getDistanceFromOrigin()
  {
    return distanceFromOrigin;
  }
  
  public void setColour(color colour)
  {
    this.colour = colour;
  }
  
  public void setActive(boolean isActive)
  {
    this.isActive = isActive;
  }
}