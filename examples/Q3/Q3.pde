int xPos;
boolean wrap;

void setup(){
size(200, 200);
noStroke(); 
fill(255, 204, 0);
xPos=0;
}
void draw(){
background(255);
rect(xPos, 20, 50, 50);
if (wrap) rect(xPos-200, 20, 50, 50);
move();

}

void move() {
  xPos++;
  if (xPos > 200-50) wrap = true;
  if (xPos > 200+50) {xPos = 50; wrap = false;}
}
