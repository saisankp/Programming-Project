class Ball {
  
void draw() {
fill (#EDFF03);
ellipse (ellX,ellY, 50,50);
}

void move() {
  //the ball moves in accordance to it's set speed.
  if (moveRight == true) {
    ellX = ellX + speedSide;
  }
  else {
    ellX = ellX - speedSide;
  }
  
  if (moveDown == true) {
    ellY = ellY + speedVertical;
  }
  else {
    ellY = ellY - speedVertical;
  }
  // code to make the ball bounce back if it hits the top or bottom.
  if (ellY <= 125) {
    moveDown = true;
  }
  
  if (ellY >= 690) {
    moveDown = false;
  }
  

}

void getSpeed() {
  //Speed of ball changes as the speed and direction of movement of the paddle changes. 
  speedOfBall = sqrt((speedSide * speedSide) + (speedVertical * speedVertical));
  fill(#170404);
  textSize(20);
  text("Speed of ball: " + speedOfBall + " pixels per frame (p/f)", 170, 680);
}
}
