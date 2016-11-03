import java.util.*;
SpaceShip ship;
Star[] allStars = new Star[200];
Rock[] allRocks = new Rock[10];

public void setup() 
{
  size(800, 800);
  ship = new SpaceShip(400, 400);
  for (int i = 0; i<allStars.length; i++){
    allStars[i] = new Star();
  }
  for (int i = 0; i<allRocks.length; i++){
    allRocks[i] = new Rock();
  }
}

public void draw() 
{
  background(148, 198, 220);
  for (int i = 0; i<allStars.length; i++){allStars[i].show();}
  ship.move();
  ship.show();
  for (int i = 0; i<allRocks.length; i++){
    allRocks[i].move();
    allRocks[i].show();
  }


}

class Rock extends Floater
{
  private int myRotSpeed;
  public Rock(){
    int posOrNeg = -1;
    if (Math.random() < 0.5) posOrNeg = 1;
    myRotSpeed = (int)((Math.random()*2+1)*posOrNeg);
    xCorners = new int[] {-12, 12, -12};
    yCorners = new int[] {-8, 0, 8};
    corners = xCorners.length;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = 1;
    myDirectionY = 1;
    myPointDirection = 90;
    setColor(#FFFFFF);
  }
  public void move(){
    rotate(myRotSpeed);
    super.move();
  }
  public void setColor(int c){ myColor = c; }
  public int getColor(){ return myColor; }
  public void setX(int x){ myCenterX = x; }
  public int getX(){ return (int)myCenterX; }
  public void setY(int y){ myCenterY = y; }
  public int getY(){ return (int)myCenterY; }
  public void setDirectionX(double x){ myDirectionX = x; }
  public double getDirectionX(){ return myDirectionX; }
  public void setDirectionY(double y){ myDirectionY = y; }
  public double getDirectionY(){ return myDirectionY; }
  public void setPointDirection(int degrees){ myPointDirection = degrees;}
  public double getPointDirection(){ return myPointDirection; }
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

