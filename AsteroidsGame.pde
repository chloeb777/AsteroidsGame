Spaceship shippy;
Star[] starArray;
  
public void setup() 
{
  size(600,600);  //Sets size. If this is changed, most things still unless the difference between height and width is too big
  background(0);  //Sets background
  shippy = new Spaceship(); 
  starArray = new Star[(int)sqrt(width*height)/6]; //Creates an array of stars where the number of stars is proportional to the size of the canvas 
  for (int i = 0; i < starArray.length; i++) { //Populates stars into array
    starArray[i] = new Star();
  }
  }

public void draw() 
{
  background(0); //Resets background so ship can move without leaving a trail
  for (int i = 0; i < starArray.length; i++) { //Shows the stars for each spot in the array
    starArray[i].show();
  }
  shippy.show();  //Shows the ship
  //sets text size to be proportional to size of canvas:
  textSize((int)sqrt(width*height)/30);
  //Shows all of the stats of the ship in the upper left corner, where how far apart they are is proportional to the size of the canvas:
  text("myCenterX: " + nf(shippy.getX(),0,2),5,height/30);
  text("myCenterY: " + nf(shippy.getY(),0,2),5,height/30*2);
  text("myXSpeed: " + nf(shippy.getXSpeed(),0,2),5,height/30*3);
  text("myYSpeed: " + nf(shippy.getYSpeed(),0,2),5,height/30*4);
  text("myPointDirection: " + nf(shippy.getDir(),0,2),5,height/30*5);
  
  shippy.move();
}

public void keyPressed() 
{ 
  if (keyCode == UP) { //Accelerates
      shippy.accelerate(.2);
    } 
  if (keyCode == DOWN) { //Decelerates
    shippy.accelerate(-.2);
    }
  if (keyCode == LEFT) { //Rotates left
    shippy.turn(-5);
    }
  if (keyCode == RIGHT) { //Rotates right
    shippy.turn(5);
    }
  if (key == 'h') { //Moves to random space
    shippy.hyperspace();
    }
}
