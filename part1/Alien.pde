class Alien {
int x, y, direction;
int status;
int bombIndex;
PImage normalImg, explodeImg, bombPic;
boolean hasBomb;
Bomb myBomb;

  Alien (int xpos, int ypos, PImage okImg, PImage exImg, PImage bombImg){
    x = xpos;
    y = ypos;
    status = ALIEN_ALIVE;
    normalImg = okImg;
    explodeImg = exImg;
    direction = FORWARD;
    bombPic = bombImg;
    hasBomb = true;
  }
  
  void move(){
    if(direction==FORWARD){
      if(x+50 < SCREENX-1)
        x++;
      else{
        direction=BACKWARD;
        y+=50+GAP;
      }
    }
    else if(x>0) x--;
    else {
      direction=FORWARD;
      y+=50+GAP;
    }
    
    if(x == (100) && status == ALIEN_ALIVE && hasBomb){
      myBomb = new Bomb(x + 10, y + 50, bombPic);
      hasBomb = false;
    }
    
    if(myBomb != null)
      myBomb.move();
    
  }
  
  int width(){
      return 50;
  }
  
  int height(){
    return 50;
  }
  
  Bomb getBomb(){
    return  myBomb;
  }
  
  void draw(){
    if(status==ALIEN_ALIVE)
      image(normalImg, x, y, 50, 50);
    else if(status!=ALIEN_DEAD){
      image(explodeImg, x, y, 50, 50);
      status++;
    }
  // otherwise dead, don't draw anything
  }
  
  void die(){
    if(status==ALIEN_ALIVE)
      status++;
  }

}
