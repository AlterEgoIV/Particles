public abstract class Entity
{
  protected PVector position;
  
  public Entity(PVector position)
  {
    this.position = position;
  }
  
  public abstract void update();
  public abstract void render();
}