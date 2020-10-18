
class Player {
  
void setup() {
  thePlayer = new Player();
}
void draw(int xPos) {
  if(xPos <= 0) {
    xPos = 0;
  }
  if(xPos >= 770 ) {
    xPos = 770;
  }
  fill (#FF0320);
  rect(xPos,yPos,30,50);
  
  
}
}
