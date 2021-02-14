class SmallAsteroid extends Asteroid {
  public SmallAsteroid(double n_, double m_, float d_) {
      corners = 10;
      radius = 5;
      //Makes it a random shape:
      xCorners = new int[] {2+((int)(Math.random()*2)-1),-2+((int)(Math.random()*2)-1),-4+((int)(Math.random()*2)-1),-5+((int)(Math.random()*2)-1),-4+((int)(Math.random()*2)-1),-2+((int)(Math.random()*2)-1),2+((int)(Math.random()*2)-1),4+((int)(Math.random()*2)-1),5+((int)(Math.random()*2)-1),4+((int)(Math.random()*2)-1)};
      yCorners = new int[] {-5+((int)(Math.random()*2)-1),-5+((int)(Math.random()*2)-1),-3+((int)(Math.random()*2)-1),0+((int)(Math.random()*2)-1),3+((int)(Math.random()*2)-1),5+((int)(Math.random()*2)-1),5+((int)(Math.random()*2)-1),3+((int)(Math.random()*2)-1),0+((int)(Math.random()*2)-1),-3+((int)(Math.random()*2)-1)};
      //Sets color to grey
      myColor = 200;
      //Sets starting position to the middle of the canvas:
      myCenterX = n_;
      myCenterY = m_;
      //Sets direction/speed to 0:t
      myYspeed = ((double)(Math.random())*3)-1.5;
      myXspeed = (d_)*((double)(Math.random()))*4;
      myRspeed = (d_)*((double)(Math.random()))*4;
    }
  }
