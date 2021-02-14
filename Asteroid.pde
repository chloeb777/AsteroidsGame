class Asteroid extends Floater  
{   
  protected double myRspeed;
  protected int radius;
    public Asteroid(){ //Initializes variables
      radius = 10; //Big asteroid
      corners = 10;  //Ten sided shape
      //Sets corners to the right proportions:
      xCorners = new int[] {3+((int)(Math.random()*4)-2),-3+((int)(Math.random()*4)-2),-8+((int)(Math.random()*4)-2),-10+((int)(Math.random()*4)-2),-8+((int)(Math.random()*4)-2),-3+((int)(Math.random()*4)-2),3+((int)(Math.random()*4)-2),8+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),8+((int)(Math.random()*4)-2)};
      yCorners = new int[] {-10+((int)(Math.random()*4)-2),-10+((int)(Math.random()*4)-2),-6+((int)(Math.random()*4)-2),0+((int)(Math.random()*4)-2),6+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),6+((int)(Math.random()*4)-2),0+((int)(Math.random()*4)-2),-6+((int)(Math.random()*4)-2)};   
      //Sets color to grey
      myColor = 200;
      //Sets starting position to the middle of the canvas:
      myCenterX = ((double)(Math.random())*600);
      myCenterY = ((double)(Math.random())*600);
      //Sets direction/speed to 0:t
      myYspeed = ((double)(Math.random())*3)-1.5;
      myXspeed = ((double)(Math.random())*3)-1.5;
      myRspeed = ((double)(Math.random())*3)-1.5;
      myPointDirection = 0;
    }
  
    public Asteroid(double n_,double m_){ //Second function to create asteroids outside of the box
      radius = 10; //Big asteroid
      corners = 10;  //Ten sided shape
      //Sets corners to the right proportions:
      xCorners = new int[] {3+((int)(Math.random()*4)-2),-3+((int)(Math.random()*4)-2),-8+((int)(Math.random()*4)-2),-10+((int)(Math.random()*4)-2),-8+((int)(Math.random()*4)-2),-3+((int)(Math.random()*4)-2),3+((int)(Math.random()*4)-2),8+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),8+((int)(Math.random()*4)-2)};
      yCorners = new int[] {-10+((int)(Math.random()*4)-2),-10+((int)(Math.random()*4)-2),-6+((int)(Math.random()*4)-2),0+((int)(Math.random()*4)-2),6+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),10+((int)(Math.random()*4)-2),6+((int)(Math.random()*4)-2),0+((int)(Math.random()*4)-2),-6+((int)(Math.random()*4)-2)};
      //Sets color to grey
      myColor = 200;
      //Sets starting position to n_ and m_:
      myCenterX = n_;
      myCenterY = m_;
      //Sets direction/speed to 0:t
      myYspeed = ((double)(Math.random())*3)-1.5;
      myXspeed = ((double)(Math.random())*3)-1.5;
      myRspeed = ((double)(Math.random())*3)-1.5;
    }
    
    
    //Getter and setter functions:    
    public float getRSpeed() {
      return (float)myRspeed;
    }
    
    public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
    myPointDirection += myRspeed;
    }
    public float getX() {
      return (float)myCenterX;
    }
    public float getY() {
      return (float)myCenterY;
    }
    public int getRadius() {
      return radius;
    }
}
    
