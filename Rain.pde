class Rain
{
  float x = random(width); // random location of droplets falling
  float y = random(-500,-250); //random location falling off from the screen
  float z = random(0,20); // close far the rain will look like
  float len = map(z, 0, 20, 4, 10); // randomise the length of each droplet between 4-10
  float yspeed = map(z, 0, 20, 5, 15); // further away from the screen will fall slowly as closer the droplet will fall quicker
  
  void fall()
  {
    y = y + yspeed; // the fall of each droplet at a speed
    
    if (y > height) // each droplet would reset above the screen
    { y = random(-200,-100); 
      y =  map(z, 0, 20, 4, 10);
    }
  }
  
  void show()
  {
    float thick = map(z,0, 20, 1, 1.5); //thickness of each ddroplet would increase the closer it is to the screen
    strokeWeight(thick);
    stroke (47, 77, 245); //The colour of the droplet 
    line(x,y,x,y+len); // the shape/length of the individual droplet
  }
}  
