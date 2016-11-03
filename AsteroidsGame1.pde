import java.util.*;
SpaceShip ship;
Star[] allStars = new Star[200];

public void setup() 
{
  size(800, 800);
  ship = new SpaceShip(400, 400);
  for (int i = 0; i<allStars.length; i++){
    allStars[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i<allStars.length; i++){allStars[i].show();}
  ship.move();
  ship.show();
}

public void keyPressed(){
  if (key == 'w') ship.accelerate(0.3);
  if (key == 's'){
    if(abs((float)(ship.getDirectionY()-ship.getDirectionX()))>0){
      ship.setDirectionX(ship.getDirectionX()*0.9);
      ship.setDirectionY(ship.getDirectionY()*0.9);
    }
  }
  if (key == 'f') ship.hyperspace();
  if (key == 'a') ship.rotate(10);
  if (key == 'd') ship.rotate(-10);
  if (key == '1') ship.setColor(#FF0000);
  if (key == '2') ship.setColor(#00FF00);
  if (key == '3') ship.setColor(#0044FF);
}

