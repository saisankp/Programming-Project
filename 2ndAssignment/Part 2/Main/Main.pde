Player thePlayer;
Ball theBall;

//initialize all the variables we need.
int playerLives = 0;
int computersLives = 0;
float ellX = 340;
float ellY = 380;
float speedOfComputer = 10;
float RrectY = 350;
float previousMouseY = 0;
float speedOfBat = 0;
float speedSide = 4;
float speedVertical =4;
float speedOfBall = 0;
boolean showTextForWinning = false;
boolean showTextForLosing = false;
boolean moveDown = true;
boolean moveRight = false;

void setup() {
  size (700,700);
  thePlayer = new Player ();
  theBall = new Ball();
  PFont myFont = loadFont("SegoeUI-SemilightItalic-18.vlw");
  textFont(myFont); //font used
  fill (#030303);
  noStroke();
  noSmooth();
  frameRate(30);
  background(#A7A7A7);
 
}

void draw() {
  background(#A7A7A7);
  textSize(30);
  fill(#080000);
  text("ULTIMATE PING PONG", 210, 40);
  text("Let the best survive!", 230, 80);
  textSize(20);
  fill(#0A0A0A);
  rect(0,100,700,10);
  
  //instantiate the classes we use.
  thePlayer.draw(mouseY);
  thePlayer.computerPlayer();
  thePlayer.reset();
  thePlayer.mousePressed();
  thePlayer.lives();
  thePlayer.getSpeedOfBat();
  theBall.draw();  
  theBall.move();
  theBall.getSpeed();
  
}
