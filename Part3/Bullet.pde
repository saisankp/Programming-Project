class Bullet {
  int xVal;
  int yVal = 730;
  boolean shootRocket;
  
  Bullet(){
    xVal = mouseX;
    yVal = 730;
    shootRocket = false;
  }
void draw() {   
  fill(#080000);
  rect(xVal, yVal-10, 10,10);
  
}

void move() {
  
  if (shootRocket == true) {
    yVal -= 3;
  }
}


void collide(Alien[] myAlien) {
  
  for (int i = 0; i < myAlien.length; i++) {
    if(xVal >= myAlien[i].x && xVal <= (myAlien[i].x + 50) && 
       yVal <= (myAlien[i].y + 50) && yVal >= myAlien[i].y) {
      myAlien[i].explode(explode);
    }
    
    if(yVal <= -10)
    {
      yVal = 730;
      shootRocket = false;
    }
  }
}
}
