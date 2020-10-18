int xPos;

void setup(){
size(200, 200);
noStroke(); 
fill(255, 204, 0);
xPos=0;
}
void draw(){
background(255);
rect(xPos, 20, 50, 50);
if(xPos++>=199) 
xPos=0;
}
