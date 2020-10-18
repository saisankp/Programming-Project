final int SCREEN_X = 800;
final int SCREEN_Y = 800;
PImage alien, explode;
int x, y, direction, imageHeight, imageWidth, explodeY,count;
int i; //counter for how many pixels alien should move down

float speed = 4;



Alien myAlien[];
Player thePlayer;  
Bullet theBullet[];

void settings() {
 size(SCREEN_X, SCREEN_Y);
}

void setup() {
  /* create a new alien array */
myAlien = new Alien[10]; 
thePlayer = new Player();
theBullet = new Bullet[100];
frameRate(30);
/* load the images */
explode = loadImage ("exploding.gif");
alien = loadImage("spacer.gif");


/* initialise the array */
init_aliens(myAlien, alien);
init_bullets(theBullet);
}

void init_aliens (Alien myAlien[], PImage alien){
 /* for each position in the array,  create a new alien at an appropriate
 starting point on the screen */
 int spaceBetweenAliens = 0;
 for (int i = 0; i < myAlien.length; i++) {
  myAlien[i] = new Alien(50 - spaceBetweenAliens, 50, alien);
  spaceBetweenAliens = spaceBetweenAliens +75;
  }
}

void init_bullets (Bullet myBullet[]){
 for (int i = 0; i < myBullet.length; i++) {
  myBullet[i] = new Bullet();
  }
}

void draw_array(Alien myAlien[]) {
  for (int i = 0; i < myAlien.length; i++) {
     myAlien[i].draw();
   }
}

void move_array(Alien myAlien[]) {
for (int i = 0; i < myAlien.length; i++) {
      myAlien[i].move();
    }
}

void mousePressed(){
  if(mousePressed)
  {
    if(count >= 100)
      count = 0;
      
    theBullet[count].shootRocket = true;
    theBullet[count].xVal = mouseX;
    count++;
  }
}


void draw(){
  background(255);
  
  move_array(myAlien);
  draw_array(myAlien);
  
  thePlayer.draw(mouseX);
  
  for(int i = 0; i < theBullet.length; i++)
  {
    if(theBullet[i].shootRocket == true)
    {
      theBullet[i].draw();
      theBullet[i].move();
      theBullet[i].collide(myAlien);
    }
  }
}
