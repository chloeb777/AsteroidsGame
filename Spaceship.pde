class Spaceship extends Floater  
{   
    public Spaceship(){ //Initializes variables
      //Makes it a triangle ship:
      corners = 3;
      //Sets corners to the right proportions:
      xCorners = new int[] {-8,-8,16};  
      yCorners = new int[] {8,-8,0};   
      //Sets color to grey
      myColor = 200;
      //Sets starting position to the middle of the canvas:
      myCenterX = width/2;
      myCenterY = height/2;
      //Sets direction/speed to 0:
      myYspeed = myXspeed = myPointDirection = 0;
    }
    
    public void hyperspace() {
      //Sets position to a random place/direction and resets speed:
      myCenterX = (double)(Math.random())*width;
      myCenterY = (double)(Math.random())*height;
      myPointDirection=(double)(Math.random())*361;
      myYspeed = myXspeed = 0;  
    }
    //Getter and setter functions:
    public float getX() {
      return (float)myCenterX;
    }
    public float getY() {
      return (float)myCenterY;
    }
    public float getDir() {
      return (float)myPointDirection;
    }
    public float getXSpeed() {
      return (float)myXspeed;
    }
    public float getYSpeed() {
      return (float)myYspeed;
    }
}
