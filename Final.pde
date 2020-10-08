//Inspiration and help from Youtube: The Coding Train

Rain[] droplets = new Rain[575]; //the amount of droplets falling is 575
PImage img; 

void setup()
{
 size(530,353); //size of the window
 for (int i = 0; i < droplets.length; i++) // loop the droplets 
   droplets[i] = new Rain();
         
}

void draw()
{ 
  //background(230, 230, 250);
  img = loadImage("London.jpg"); //loads the image as the background   
  image(img, 0, 0); 
  for (int i = 0; i < droplets.length; i++)
  {
  droplets[i].fall();
  droplets[i].show();
  }
}
