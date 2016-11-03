class SpaceShip extends Floater  
{ 
  //constructors
  public SpaceShip(int xPos, int yPos){
    xCorners = new int[] {-15, 0, 12, 0, -15};
    yCorners = new int[] {-8, -8, 0, 8, 8};
    corners = xCorners.length;
    myColor = color(0, 0, 0);
    myCenterX = xPos;
    myCenterY = yPos;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 90;
    setColor(#663333);
  }
  public void move(){
    super.move();
    myDirectionX = myDirectionX*0.98;
    myDirectionY = myDirectionY*0.98;
  }

  public void hyperspace(){
    setX((int)(Math.random()*800));
    setY((int)(Math.random()*800));
    setPointDirection((int)(Math.random()*360));
    setDirectionX(0);
    setDirectionY(0);
  };

  //setters and getters
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