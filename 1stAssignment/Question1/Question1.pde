int xPos;
int xPos2;
int yPos;

void setup() {
 size(200,200);
 noStroke();
 fill (255,204,0);
 xPos =0;
 xPos2 =200;
 yPos = -30;
 }
 
 void draw() {
   background (255);
   fill (#4FC7F5);
   rect (130, yPos, 50,50);
   yPos++;
   fill (255, 204, 0);
   rect (xPos2,50,50,50);
   xPos2--;
   fill (#4CDE74);
   rect (xPos,70,50,50);
   xPos++;
   
    }
