class Bomb{
  int xPos, yPos;
  PImage bomb;
  
  Bomb(int x, int y, PImage bombImg){
    xPos = 100;
    yPos = 100;
    bomb = bombImg;
  }
  

  boolean offScreen(){
    if(yPos >= SCREENY)
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
