
final int A_FORWARD = 0; // 0 represents FORWARD
final int A_BACKWARD = 1; // 1 represents BACKWARD
final int A_DOWN = 2;  // 2 represents DOWN.

class Alien {
  //Initialize our variables.
int x, y, direction, imageHeight, imageWidth, explodeY;
int i; //counter for how many pixels alien should move down
float speed = 4;
boolean moveRight = true;
PImage myImage;


void settings() {
  //load images
explode = loadImage ("exploding.GIF");
alien = loadImage("spacer.GIF");
}

Alien(int xPos, int yPos, PImage alien) { //Our constructor for our object.
x = xPos;
y = yPos;
explodeY = int(random(0, SCREEN_Y - 50 )); //random Y point when the spacer explodes.
imageHeight = 50;
imageWidth = 50;
direction = int(random(0,1)); //all spacers start at a random direction (i.e left or right)
myImage = alien; //load alien as myImage.
}

void draw() {
image(myImage, x, y, imageWidth, imageHeight); // format as x,y coordinates followed by width and height.
}

void move() {
  if ( x  <= 0 && y == 50) {
  direction = A_FORWARD;
  }
  
else if (x <= 0 || x >= SCREEN_X - imageWidth) { //if the spacer hits either side, it goes down. 
  direction = A_DOWN; // direction = 2 = Move downwards.
}

if ( i >= 50) {
  direction = (x <= 0) ? A_FORWARD: A_BACKWARD; //once the spacer hits a wall, it should go a particular direction
 i = 0;
}


if(direction == A_FORWARD) //if we need to go forward, increment x position.
  x = x + (int) speed;
else if(direction == A_BACKWARD) //if we need to go backward, decrement x position.
  x = x - (int) speed;
else if(direction == A_DOWN) {  //if we need to go down, increment y position.
   i = i + int(speed);
   y = y + int(speed);
   speed = speed + 0.015;
  
}

if (y > SCREEN_Y - 50) { //wrap the spacer to wrap around to the top if it reaches the bottom.
  image(myImage, x, y-SCREEN_Y, imageWidth, imageHeight);
  y = (y > SCREEN_Y)? 0: y; // conditional operator to determine if to make it spawn at the top or bottom
  }
}

void explode(PImage exploding) { //function to let the spacer explode.
  myImage = exploding;
}
}
