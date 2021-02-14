class Bullet extends Floater {
  public Bullet(Spaceship theShip_){
    myCenterX = theShip_.getX();
    myCenterY = theShip_.getY();
    myXspeed = theShip_.getXSpeed();
    myYspeed = theShip_.getYSpeed();
    myPointDirection = theShip_.getDir();
  }
  
  public void show(){
    fill(color(255,0,0));
    stroke(color(255,0,0));
    ellipse((float)myCenterX,(float)myCenterY,4,4);
  }
  
    public void move ()   //I wanted to overide the wrapping part of the function
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }
    public float getX() {
      return (float)myCenterX;
    }
    public float getY() {
      return (float)myCenterY;
    }
    public float getXSpeed() {
      return (float)myXspeed;
    }
    public float getYSpeed() {
      return (float)myYspeed;
    }
}
