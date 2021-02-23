Spaceship shippy;
Star[] starArray;
ArrayList <Asteroid> asteroidList;
int myCount;
ArrayList <Bullet> bulletList;
public void setup() 
{
  size(600, 600);  //Sets size. If this is changed, most things still unless the difference between height and width is too big
  background(0);  //Sets background
  shippy = new Spaceship(); //Creates spaceship
  myCount = 0; //Sets the count of blown up asteroids to 0
  starArray = new Star[(int)sqrt(width*height)/6]; //Creates an array of stars where the number of stars is proportional to the size of the canvas 
  for (int i = 0; i < starArray.length; i++) { //Populates stars into array
    starArray[i] = new Star();
  }
  bulletList = new ArrayList <Bullet>();
  asteroidList = new ArrayList <Asteroid>(); //Creates Array of 14 asteroids
  for (int i = 0; i < 14; i++) {
    asteroidList.add(new Asteroid());
  }
}
public void draw() 
{
  background(0); //Resets background so ship can move without leaving a trail
  showText();
  shippy.show();  //Shows the ship
  shippy.move(); //Moves the ship
  for (int i = 0; i < starArray.length; i++) {  // Shows the stars for each spot in the array
    starArray[i].show();
  }
  for (int i = 0; i < bulletList.size(); i++) {  // Shows bullets
    bulletList.get(i).show();
    bulletList.get(i).move();
  }
  for (int i = 0; i < asteroidList.size(); i++) {  // Shows asteroids
    asteroidList.get(i).show();
    asteroidList.get(i).move();
  }
  checkCollision(); // Check asteroid Collision with Ship
  checkBulletHit(); // Check for bullet hitting asteroid
  //Sometimes adds new asteroids:
  if (((double)(Math.random())*4)<.25) {
    addAsteroids();
  }
}
public void showText() {
  //sets text size to be proportional to size of canvas:
  textSize((int)sqrt(width*height)/30);
  //Shows all of the stats of the ship in the upper left corner, where how far apart they are is proportional to the size of the canvas:
  text("myCenterX: " + nf(shippy.getX(), 0, 2), 5, height/30);
  text("myCenterY: " + nf(shippy.getX(), 0, 2), 5, height/30*2);
  text("myXSpeed: " + nf(shippy.getXSpeed(), 0, 2), 5, height/30*3);
  text("myYSpeed: " + nf(shippy.getYSpeed(), 0, 2), 5, height/30*4);
  text("myPointDirection: " + nf(shippy.getDir(), 0, 2), 5, height/30*5);
  text("myCount: " + myCount, 5, height/30*6);
  text("myHealth: " + shippy.getMyHealth(), 5, height/30*7);
}
public void checkCollision() {
  for (int i = asteroidList.size()-1; i > 0; i--) { //Shows and moves asteroids, also checks to see if asteroids have been blown up
    //If the distance between the center of the asteroid and the center of the triangle is <17, delete the asteroid:
    if (dist(((asteroidList.get(i)).getX()), ((asteroidList.get(i)).getY()), (shippy.getX()), (shippy.getY()))<(asteroidList.get(i)).getRadius()+7) { 
      myCount++;
      shippy.loseHealth();
      //if the asteroid is a big asteroid, when it is hit, creates some smaller asteroids nearby that go in oppisite directions (I did more than two because they tend to get blown up right away if they are hit with the ship)
      if ((asteroidList.get(i)).getRadius()==10) {
        asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()+10, asteroidList.get(i).getY()+10, tan(shippy.getYSpeed()/shippy.getXSpeed())));
        asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()-10, asteroidList.get(i).getY()-10, tan(shippy.getYSpeed()/shippy.getXSpeed())));
        asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()+10, asteroidList.get(i).getY()+10, tan(shippy.getYSpeed()/shippy.getXSpeed())));
        asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()-10, asteroidList.get(i).getY()-10, tan(shippy.getYSpeed()/shippy.getXSpeed())));
      }
      asteroidList.remove(i);
      break;
    }
  }
}
public void checkBulletHit() {
  for (int j = 0; j < bulletList.size(); j++) {   
    for (int i = asteroidList.size()-1; i > 0; i--) { //Checks to see if bullet blows up asteroids
      if (dist(((asteroidList.get(i)).getX()), ((asteroidList.get(i)).getY()), ((bulletList.get(j)).getX()), ((bulletList.get(j).getY())))<(asteroidList.get(i)).getRadius()+2) { 
        myCount++;
        //if the asteroid is a big asteroid, when it is hit, creates some smaller asteroids nearby that go in oppisite directions (I did more than two because they tend to get blown up right away if they are hit with the ship)
        if ((asteroidList.get(i)).getRadius()==10) {
          asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()+10, asteroidList.get(i).getY()+10, tan(bulletList.get(j).getYSpeed()/bulletList.get(j).getXSpeed())));
          asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()-10, asteroidList.get(i).getY()-10, tan(bulletList.get(j).getYSpeed()/bulletList.get(j).getXSpeed())));
          asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()+10, asteroidList.get(i).getY()+10, tan(bulletList.get(j).getYSpeed()/bulletList.get(j).getXSpeed())));
          asteroidList.add(asteroidList.size(), new SmallAsteroid(asteroidList.get(i).getX()-10, asteroidList.get(i).getY()-10, tan(bulletList.get(j).getYSpeed()/bulletList.get(j).getXSpeed())));
        }
        asteroidList.remove(i);
        break;
      }
    }
  }
}
public void addAsteroids() {
  asteroidList.add(new Asteroid(((double)(Math.random())*600), -50));
  asteroidList.add(new Asteroid(((double)(Math.random())*600), 650));
  asteroidList.add(new Asteroid(-50, ((double)(Math.random())*600)));
  asteroidList.add(new Asteroid(650, ((double)(Math.random())*600)));
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
  if (key == ' ') { //Moves bullet
    bulletList.add(new Bullet(shippy));
    (bulletList.get(bulletList.size()-1)).accelerate(6);
  }
}
