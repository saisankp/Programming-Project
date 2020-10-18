class Bomb{
  int xPos, yPos;
  PImage bomb;
  
  Bomb(int x, int y, PImage bombImg){
    xPos = 100;
    yPos = 100;
    bomb = bombImg;
  }
  
  boolean collided(Player myPlayer){
    if(xPos + 30 > myPlayer.xpos && 
       xPos < myPlayer.xpos + PLAYERWIDTH && 
       yPos + 30 > myPlayer.ypos &&
       yPos < myPlayer.ypos + PLAYERHEIGHT){
         return true;
       }
       return false;
  }
  
  boolean offScreen(){
    if(yPos >= SCREENY-10)
      return true;
    return false;
    
  }
  
  void move(){
    yPos++;
  }
  
  void draw(){
    yPos += 0.8;
      image(bomb, xPos, yPos, 30, 30);
      
  }
}
