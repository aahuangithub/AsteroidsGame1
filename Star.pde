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
  	stroke(255);
  	strokeWeight(2);
    point(myX, myY);
    strokeWeight(1);
  }
}