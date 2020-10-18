int xPos;
int xPos2;
float yPos;
float yPos2;
int yAdd;
int yAdd2;
int c1, c2;


void setup() {
  size(800,800);
   noStroke();
   xPos = 0;
   xPos2 = 800 - 50;
   yPos = 300;
   yPos2 = 550;
  
}

void draw() {
 background (255);
 rect(xPos,yPos,50,50);
 xPos = xPos +1;
 if(xPos++ >= 800-50) {
   if(xPos < (800+50)) {
     rect(xPos-800,yPos,50,50);
   }
 }
 yPos = yPos + yAdd;
 
 if(yPos < 301) {
   yAdd = 3;
 }
 if (yPos > 500) {
  yAdd = -3;
 }
 
 if(xPos >= 800+48) {
   xPos = 50;
 }
 noStroke();
  fill(random(300), random(300), random(300));
 rect(xPos2,yPos2,50,50);
 fill(random(300), random(300), random(300));
 xPos2 = xPos2 - 1;
 if(xPos2-- <= 0) {
   if(xPos2 > -50) {
     rect(xPos2+800,yPos2,50,50);
   }
 }
 
  yPos2 = yPos2 + yAdd2;
 
 if(yPos2 < 551) {
   yAdd2 = 3;
 }
 if (yPos2 > 750) {
  yAdd2 = -3;
 }
 
 
 if(xPos2 <= (-49)) {
   xPos2 = 800-50;
 }
 
}
