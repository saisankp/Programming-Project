PImage alien, explode;
final int SCREEN_X = 800;
final int SCREEN_Y = 800;

/* Declare an array of Aliens */
Alien myAlien[];

void settings() {
 size(SCREEN_X, SCREEN_Y);
}

void setup() {
  /* create a new alien array */
myAlien = new Alien[10]; 
frameRate(30);

/* load the images */
explode = loadImage ("exploding.gif");
alien = loadImage("spacer.gif");

/* initialise the array */
init_aliens(myAlien, alien);
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
void draw_array(Alien myAlien[]) {
for (int i = 0; i < myAlien.length; i++) {
  if(myAlien[i].y == myAlien[i].explodeY)
  myAlien[i].explode(explode);
  
  myAlien[i].draw();
  }
}

void move_array(Alien myAlien[]) {
for (int i = 0; i < myAlien.length; i++) {
      myAlien[i].move();
    }
}


void draw(){
  /* clear the screen */
  background(255);
  /* for each alien in the array - move the alien, */
  move_array(myAlien);
  /* then draw the alien */
  draw_array(myAlien);
}
