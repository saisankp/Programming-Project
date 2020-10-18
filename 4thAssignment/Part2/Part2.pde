final int SCREEN_X = 800;
final int SCREEN_Y = 800;
final int A_FORWARD = 0; // 0 represents FORWARD
final int A_BACKWARD = 1; // 1 represents BACKWARD
final int A_DOWN = 2;  // 2 represents DOWN.
final int yPos = 730;
PImage alien, explode;
int x, y, direction, imageHeight, imageWidth, explodeY,count;
int i; //counter for how many pixels alien should move down
float speed = 4;

//initialize arrays and objects
Alien myAlien[];
Bullet theBullet[];
Player thePlayer;  

void settings() {
 size(SCREEN_X, SCREEN_Y);
}

void setup() {
 /* create a new alien and bullet array  aswell as a player object (instantiate it) */
myAlien = new Alien[10]; 
thePlayer = new Player();
theBullet = new Bullet[100];
frameRate(30);
/* load the images */
explode = loadImage ("exploding.gif");
alien = loadImage("spacer.gif");


/* initialise the arrays of bullets and aliens */
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
   /* for each position in the array,  create a new bullet at an appropriate
 starting point on the screen */
 for (int i = 0; i < myBullet.length; i++) {
  myBullet[i] = new Bullet();
  }
}

void draw_array(Alien myAlien[]) { //draw the aliens onto the screen.
  for (int i = 0; i < myAlien.length; i++) {
     myAlien[i].draw();
   }
}

void move_array(Alien myAlien[]) { //move the aliens across the screen.
for (int i = 0; i < myAlien.length; i++) {
      myAlien[i].move();
    }
}

void mousePressed(){ //this function happens if the mouse is pressed.
  if(mousePressed)
  {
    if(count >= 100) //if the 100 bullets in the 100 spaced array are used up, they are replaced.
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
  
  //for loop to draw the bullets one after another with an array of bullets.
  for(int i = 0; i < theBullet.length; i++)
  {
    if(theBullet[i].shootRocket == true)
    {
      theBullet[i].draw();
      theBullet[i].move();
    }
  }
}
