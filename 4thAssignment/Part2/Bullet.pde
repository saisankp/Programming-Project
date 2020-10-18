class Bullet {
  int xVal;
  int yVal = 730;
  boolean shootRocket;
  
  Bullet(){ //constructor for our bullet.
    xVal = mouseX;
    yVal = 730;
    shootRocket = false;
  }
  
void draw() {   
  fill(#080000);
  rect(xVal+10, yVal-10, 10,10); //draw the bullet in the shape of a square.
  
}

void move() {
  if (shootRocket == true) {
    yVal -= speed; //make the bullet move up the screen based on the speed of the aliens.
  }
  if(yVal <= -10)
    {
      yVal = 730;
      shootRocket = false;
    }
}
}
