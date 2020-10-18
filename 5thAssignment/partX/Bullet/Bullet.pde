class Bullet {
int width, height, x, y;
color bulletColor = color (200, 0, 200);

  Bullet(int xpos, int ypos){
    x=xpos; y=ypos;
    width=3; height=6;
  }
  int x(){
    return x;
  }
  int y(){
    return y;
  }
  void move()
    {
    y-=2;
  }
  void draw(){
    fill(bulletColor);
    rect(x, y, width, height);
  }

  void collide(Alien theAliens[]){
    for(int i=0; i<theAliens.length; i++){
      if(x > theAliens[i].x && 
         x < theAliens[i].x + theAliens[i].width() && 
         y > theAliens[i].y && 
         y <theAliens[i].y + theAliens[i].height()){
        theAliens[i].die();
        return;
      }
    }
  }
}
