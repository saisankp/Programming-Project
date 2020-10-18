class Player {
  
void draw(int LrectY) {
  //code to make the paddles stay between the playing area.
  if(LrectY >= 600) {
    LrectY = 600;
  }
  
  if (LrectY <= 110) {
    LrectY = 110;
  }
  textSize(25);
  fill (#FF0320);
  text("Player One", 40,40);
  text(playerLives, 80, 80);
  rect (20, LrectY, 30,100);
  
  fill(#0311FF);
  text("CPU", 600,40);
  text(computersLives, 610, 80);
  rect (650, RrectY, 30, 100);
  
  //code to make the paddles stay between the playing area.
  if (RrectY >= 600) {
    RrectY = 600;
  }
  
  if (RrectY <= 110) {
    RrectY = 110;
  }
  //if the ball is in the region of where the paddle is, it must bounce off it.
  if (ellX >= 615 && ellY > RrectY && ellY < (RrectY +100) ){
    //Extra credit 2 -ball speeds up and computer gets better as game progresses.
    speedSide = speedSide + 0.5;
    speedVertical = speedVertical + 0.5;
    speedOfComputer = speedOfComputer + 0.4;
    moveRight = false;
   
    }
  
  //if the ball is in the region of where the paddle is, it must bounce off it.
  if (ellX <= 75 && ellY > LrectY && ellY < (LrectY +100)){
      //Extra credit 2 -ball speeds up and computer gets better as game progresses.
    println(speedOfBat);
    speedVertical = speedVertical + speedOfBat;
    speedSide= speedSide + speedOfBat;
    speedSide = speedSide +0.5;
    speedVertical = speedVertical + 0.5;
    speedOfComputer = speedOfComputer + 0.4;
    moveRight = true;
       if(speedOfBat >0 ) {
      moveDown = true;
       }
       if(speedOfBat <0) {
         moveDown = false;
       }
  }

}

void computerPlayer() {
  //Computer goes towards ball to hit it based on it's set speed.
    if ( ellY < 370) {
    RrectY = RrectY - speedOfComputer;
    }
  //Computer goes towards ball to hit it based on it's set speed.
    if(ellY > 370) {
      RrectY = RrectY + speedOfComputer;
    }
    if (RrectY >= 600) {
    RrectY = 600;
  }
  
  if (RrectY <= 110) {
    RrectY = 110;
  }
  }
  
void reset() {
  // if the ball goes past the computer player's paddle, do these things:
   if (ellX >= 690) {
    playerLives++;
    speedSide = 0;
    speedVertical = 0;
    ellX = 340;
    ellY = 380;
    showTextForWinning = true;
    speedOfComputer = 8;
  }
  if (showTextForWinning == true) {
    thePlayer.showTextForWinning();
  }
  // if the ball goes past the player's paddle, do these things:
  if (ellX <= 10) {
    computersLives++;
    speedSide = 0;
    speedVertical = 0;
    ellX = 340;
    ellY = 380;
    showTextForLosing =true;
    speedOfComputer = 8;
  }
  if(showTextForLosing == true) {
    thePlayer.showTextForLosing();
  }
 
}
void mousePressed() {
  //If the mouse is pressed, do these things. (i.e reset the variables)
if(mousePressed == true) {
  showTextForWinning = false;
  showTextForLosing = false;
  speedSide = 4;
  speedVertical = 4;
}
}

void lives() {
  if (playerLives >= 3) {
    //If enter is pressed, it resets the whole game.
    if(keyCode ==ENTER && (computersLives >= 3 || playerLives  >= 3)) {
    computersLives = 0;
    playerLives = 0;
    keyCode = DELETE;
  }
    showTextForWinning = false;
    fill(#050000);
    textSize(25);
    text("GAME OVER! You have won, congrats!", 160, 350);
    text("Press Enter to restart, then press the mouse to play!", 90, 450);
    speedSide = 0;
    speedVertical=0;
    
  }
  if (computersLives >= 3) {
     if(keyCode ==ENTER && (computersLives >= 3 || playerLives  >= 3)) {
    computersLives = 0;
    playerLives = 0;
    keyCode = DELETE;
  }
    showTextForLosing = false;
    fill(#050000);
    textSize(25);
    text("GAME OVER! Sorry, you have lost!", 180, 330);
    text("Press Enter to restart, then press the mouse to play!", 90, 450);
    speedSide = 0;
    speedVertical=0;
  }
 
}

  void showTextForWinning() {
    fill(#050000);
   text("One point to you soldier!, press the mouse to continue", 70, 330); 
  }
  
  void showTextForLosing() {
    fill(#050000);
   text("The enemy gets a point!, press the mouse to continue", 70, 330); 
  }
  
  void getSpeedOfBat() {
    //Extra credit 1 - speed of and direction of bat affects the trajectory of the ball
    println(speedOfBat);
    speedOfBat = (mouseY - previousMouseY)/500;
    previousMouseY = mouseY;

    
  }
 
}
  
