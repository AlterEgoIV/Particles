class Particle
{
  PVector pos, vel;
  int w, h, lifespan, startingLifespan;
  color c;
  boolean isActive;
  float oscillationSpeed;
  
  Particle(PVector pos, PVector vel, int w, int h, color c)
  {
    this.pos = pos;
    this.vel = vel;
    this.h = h;
    this.w = w;
    this.c = c;
    
    oscillationSpeed = 0;
    startingLifespan = 2048;
    lifespan = startingLifespan;
    isActive = true;
  }
  
  void update()
  {
    pos.x += vel.x * random(-1, 1);
    pos.y += vel.y * random(0, 1);

//    oscillationSpeed += .1;
//
//    pos.x += sin(oscillationSpeed) * vel.x;
//    pos.y += vel.y;
    
    --lifespan;
    
    if(lifespan == 0)
    {
      isActive = false;
    }
  }
  
  void render()
  {
    noStroke();
    //stroke(c);
    fill(c, lifespan);
    ellipse(pos.x, pos.y, w, h);
  }
}
