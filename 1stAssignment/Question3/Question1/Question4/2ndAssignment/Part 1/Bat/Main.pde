final int SCREENX = 320;
final int SCREENY = 240;
final int PADDLEHEIGHT = 15;
final int PADDLEWIDTH = 50;
final int MARGIN = 10;

Player thePlayer;
Ball theBall;
void settings(){
size(SCREENX, SCREENY);
}
void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
theBall = new Ball();
ellipseMode(RADIUS);
}
void draw() {
background(0);
thePlayer.move(mouseX);
theBall.move();
theBall.collide(thePlayer);
thePlayer.draw();
theBall.draw();
}
