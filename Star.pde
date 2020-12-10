class Star //note that this class does NOT extend Floater
{
  //Declares variables
  int myX, myY;
  float mySize;
  int myColor;
  Star() { //Initializes variables
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
    mySize = (float)(Math.random()*3)+1;;
    myColor = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void show() { //Creates circles that are random color, location, size
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, mySize,mySize);
  }
}
