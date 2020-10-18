class PowerUp {
  int xVal2;
  int yVal2;
  boolean shootPowerUp;

  PowerUp(Alien myAlien[]) {
    
    xVal2 = 400;
    yVal2 = 400;
    shootPowerUp = false;
 
}
  
  void draw() {
    fill(#080000);
 rect(xVal2,yVal2,20,20);
}

void move() {
   if (shootPowerUp == true) {
    yVal2 += speed;
  }
}
}
