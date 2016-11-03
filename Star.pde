class Star
{
  int myX, myY, myEndX, myEndY;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    myEndX = (int)(Math.random()*5);
    myEndY = (int)(Math.random()*5);
  }
  public void show(){
  	stroke(127, 150);
  	strokeWeight(2);
    line(myX, myY, myX+myEndX, myY+myEndY);
    strokeWeight(1);
  }
}