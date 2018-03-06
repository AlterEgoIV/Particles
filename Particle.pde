public abstract class Particle extends Entity
{
  protected PVector velocity;
  protected int w, h, life;
  protected boolean isActive;
  protected color colour;
  
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
    this.w = w;
    this.h = h;
    this.velocity = new PVector(random(-1, 1), random(-1, 1));
    this.isActive = true;
    this.colour = colour;
  }
  
  @Override
  public void update()
  {
    position.add(velocity);
    
    age();
  }
  
  private void age()
  {
    if(life-- == 0)
    {
      setActive(false);
    }
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