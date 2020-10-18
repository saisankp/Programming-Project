

Alien theAliens[];
Alien theAliens2[];
Player thePlayer;
Bomb theBomb;
ArrayList theBullets;
PImage normalImg, explodeImg, bombImg;
int numberOfDeadAliens, numberOfDeadAliens2;
boolean loss, win;

void settings(){
  size(SCREENX, SCREENY);
}
void setup(){
  numberOfDeadAliens = 0;
  numberOfDeadAliens2 = 0;
  win = false;
  loss = false;
  PFont myFont = loadFont("Calibri-LightItalic-48.vlw");
  textFont(myFont);
  bombImg = loadImage("bomb.png");
  normalImg = loadImage("spacer.gif");
  explodeImg = loadImage("exploding.gif");
  theAliens = new Alien[10];
  theAliens2 = new Alien[10];
  thePlayer = new Player(SCREENX/2, SCREENY-PLAYERHEIGHT-MARGIN, PLAYERWIDTH,PLAYERHEIGHT);
  theBullets = new ArrayList();
  init_aliens(theAliens, theAliens2, normalImg, explodeImg);
}

void init_aliens(Alien baddies[], Alien[] baddies2, PImage okImg, PImage exImg){
  for(int i=0; i<baddies.length; i++){
      baddies[i] = new Alien(i*(50+GAP), 0, okImg, exImg, bombImg);
  }
  
  for(int i= 0; i < baddies2.length; i++){
    baddies2[i] = new Alien((SCREENY - 50) - i*(50+GAP), 50+GAP, okImg, exImg, bombImg);
    baddies2[i].direction = BACKWARD;
  }
  
}

void draw(){
  background(#FFFCFC);  
  thePlayer.move(mouseX);
  thePlayer.draw();
  
  for(int i = 0; i < theBullets.size(); i++)
  {
    Bullet myBullet = (Bullet) theBullets.get(i);
    
    if(myBullet != null){
      if(myBullet.x <= 0)
        theBullets.remove(i);
      myBullet.move();
      myBullet.collide(theAliens);
      myBullet.collide(theAliens2);
      myBullet.draw();
    }
  }
  
  for(int i=0; i<theAliens.length; i++){
    
    theAliens[i].move();
    theAliens[i].draw();
    
    if(theAliens[i].status == ALIEN_DEAD)
      numberOfDeadAliens++;
      
      Bomb aBomb = theAliens[9].getBomb();
    if (aBomb!= null){
       
       if(aBomb.offScreen()){
         theAliens[9].myBomb = null;
         theAliens[9].hasBomb = true;
       }
       aBomb.draw();
    }
    
  }
  for(int i= 0; i < theAliens2.length; i++){
    theAliens2[i].move();
    theAliens2[i].draw();
    
    if(theAliens2[i].status == ALIEN_DEAD)
      numberOfDeadAliens2++;
      
       Bomb aBomb = theAliens2[9].getBomb();
    if (aBomb!= null){
        if(aBomb.offScreen()){
         theAliens2[9].myBomb = null;
         theAliens2[9].hasBomb = true;
       }
       aBomb.draw();
    }
    
  }
  
  if((numberOfDeadAliens + numberOfDeadAliens2) == 20)
    win = true;
  else numberOfDeadAliens = 0; numberOfDeadAliens2 = 0;
  
    
  if(win)
    gameWon();
  
  if(loss)
    gameOver();
}

void gameWon(){
  background(0);
  fill(0, 255, 0);
  text("YOU WON", 275, 400);
}

void gameOver(){
  background(0);
  fill(255, 0, 0);
  text("GAME OVER", 275, 400);
}

void mousePressed(){
  theBullets.add(new Bullet(thePlayer.x()+thePlayer.width/2, thePlayer.y()));
}
