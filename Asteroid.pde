class Asteroid extends Floater  
{   
  private double myRspeed;
    public Asteroid(){ //Initializes variables
      //Makes it a triangle ship:
      corners = 10;
      //Sets corners to the right proportions:
      xCorners = new int[] {3,-3,-8,-10,-8,-3,3,8,10,8};  
      yCorners = new int[] {-10,-10,-6,0,6,10,10,6,0,-6};   
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
      //Makes it a triangle ship:
      corners = 10;
      //Sets corners to the right proportions:
      xCorners = new int[] {3,-3,-8,-10,-8,-3,3,8,10,8};  
      yCorners = new int[] {-10,-10,-6,0,6,10,10,6,0,-6};   
      //Sets color to grey
      myColor = 200;
      //Sets starting position to the middle of the canvas:
      myCenterX = n_;
      myCenterY = m_;
      //Sets direction/speed to 0:t
      myYspeed = ((double)(Math.random())*3)-1.5;
      myXspeed = ((double)(Math.random())*3)-1.5;
      myRspeed = ((double)(Math.random())*3)-1.5;
      myPointDirection = 0;
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
    }}
    
