class Player {
  
void setup() {
  thePlayer = new Player(); //instantiate the player object.
}

void draw(int xPos) {
  if(xPos <= 0) { //make sure the player doesnt go off the screen.
    xPos = 0;
  }
  if(xPos >= 770 ) { //make sure the player doesnt go off the screen.
    xPos = 770;
  }
  fill (#FF0320);
  rect(xPos,yPos,30,50); //The 'gun' that shoots the bullets.
}
}
