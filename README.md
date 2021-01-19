# Programming-Project
All the courswork that was undertaken by me during the module CSU11013 (Programming Project) where we learned to work in a team enviroment and build an application using the Processing Java library.

## 1st Assignment (Questions)
1. Write a program using processing to
produce three overlapping squares, like the
following, and have them move in
different directions. <br>
2. Write a program to animate a square
moving from left to right across the
screen. The square should start again when
it reaches the right hand side of the
window. <br>
3. Modify your program to make the
square "wrap" smoothly over the edge of
the window as it moves. <br>
4. Write a program to make two squares
move across the screen (and wrap
smoothly) in opposite directions. <br>
5. (Extra Credit) Modify your program so that the squares
move in a smooth sinusoidal pattern across
the screen and change colour continuously
and smoothly as they do so <br>

## 2nd Assignment (Questions)
1. Get the code presented in class working. i.e. setup and draw methods, human player
(bat), and ball. The integer variables mouseX and mouseY provide the x and y coordinates of the mouse pointer. <br>
2. Use the player class to create a computer player. You will need to create a new
method to control the computer's movement. A simple algorithm to use would be to
have the computer player move 1 pixel towards the ball position every frame. The
draw method for your new program will: <br>
 move the ball <br>
 move the computer player <br>
 move the human player <br>
 check for collision with human player <br>
 check for collision with computer player <br>
 draw the ball <br>
 draw the computer player <br>
 draw the human player <br>
 3. Implement a reset() method which is called when the ball falls off the screen
(either the human or the computer has lost the game). The method should put the ball
back onto the screen and restart the game once the mouse button is pressed. If you
define a method called mousePressed(), Processing will call it when the mouse
is pressed. <br>
4. Count the number of lives (hint: create an attribute and method in player). If the
computer wins three times, a game over message is displayed. If the player wins three
times, a different message is displayed.
5. (Extra Credit) Modify your program so that the speed and direction of movement of the bat affects
the trajectory of the ball when struck.
6. (Extra Credit) Modify your program so that the ball speeds up and the computer player gets better
over time. Show the current speed on the screen.

## 3rd Assignment (Questions)
1. Create an “Alien” class that has x, y position on the screen, a constructor, a draw method (drawing an
image – “invader.gif”), and a move method. Construct a program which creates an instance of this class,
and moves it across the screen using the move and draw methods. When it reaches the edge of the screen
it should move down smoothly a distance equal to its own height and continue in the opposite direction <br>

2. Using the array code presented in class as a template, write a program that creates an array of Alien
objects (10 Aliens in total), initializes the array with new alien objects, and uses the move and draw
methods to move all of the objects across and down the screen <br>

3. Create an explode method which changes the appearance of the alien (each alien should be able to
change independently). Demonstrate the method by having the aliens explode at random. You can use a
second PImage loaded with exploding.gif <br>

4. (Extra credit) change the appearance of some of the aliens, and give them a different movement
pattern (e.g. sinusoidal). Have the aliens speed up their rate of movement over time. A subclass is one
way of having objects that add additional or different behavior. <br>

## 4th Assignment (Questions)
1. Building on the Alien class from last week (or the sample code given in the
lecture), and the Player class from week 2, add a Player object to your program so
that the Player can be moved around at the bottom of the screen while the Aliens
move across and down the screen. <br>
2. Add a Bullet class with a move method which moves the Bullet up the screen, and
a draw method which draws the bullet. An instance of the Bullet class should be
created at the Player’s position when the mouse button is pressed. <br>
3. Implement a collide method in the Bullet class to check whether the bullet has
collided with an Alien. The array of Aliens should be passed as an argument to this
method. Demonstrate your code by being able to fire at aliens and have them explode
(e.g. using the image from last week) when hit. Note - a single bullet can hit multiple
aliens, these are futuristic bullets. <br>
4. (Extra Credit) (The player will need to be able to fire multiple bullets). Have some
of the aliens drop “power ups” that affect the firing rate and pattern of the player’s
bullets (e.g. double bullets). Implement three different power ups. They should each
have a different appearance <br>

## 5th Assignment (Questions)
1. Building on the Alien, Player and Bullet classes from previous weeks, add a Bomb class: <br>
• the constructor Bomb() will create a bomb at a particular x, y position given as arguments. <br>
• the move() method will move the bomb one pixel down the screen. <br>
• the draw() method will draw the bomb at its current position <br>
• an offScreen() function which will return a boolean value - true if the bomb has
gone past the bottom of the screen, false if it is still onscreen. <br>

2. Add a collide() method to Bomb which will check whether the bomb has collided with
the player (it takes the player as an argument). The method should return a boolean value -
true if there has been a collision, false if there has not been a collision. Alter the main
draw() method so that if the bomb has collided with the player, a "game over" message should
be displayed (all messages should be drawn to the screen using PFont methods). <br>

3. Extend your program so that the aliens that are alive drop bombs. Each Alien will drop at
most one bomb at a time. Once a bomb has gone off the bottom of the screen, the alien can
drop another bomb (if it is alive, exploding or dead aliens cannot drop bombs).
One approach is to give each Alien a variable of type Bomb. As part of the move method, the
Alien can decide to drop a bomb (ie. create a new Bomb), or if it has already got a bomb, it
can move() the bomb. A getBomb() method returns the bomb if the Alien has one (ie. it is not
null). This getBomb() method in Alien is used in the main draw() method to check whether
any of the bombs have collided with the player. <br>

4. (Extra Credit) Add shields that the player can hide behind. Alien bullets can damage the shield, but
so can the player bullets. <br>
5. (Extra Credit) (Harder: don’t worry if you can’t do this) Use the processing sound library or minim
library to add sounds, using a combination of recordings, oscillators and effects (you
must use all three). You’ll need some headphones or small speakers to demonstrate <br>

## 6th Assignment (Questions)
1. Using the widgetList program and Widget class covered at the lecture, write a
program containing three widgets/buttons labelled "red", "green" and "blue". Alter the
mousePressed method so that a square displayed on the screen changes colour (to
the named colour) as each button is pressed.  <br>
2. Alter your program so that the border colour of a widget changes (to white) when
the mouse pointer is over it but reverts to normal (black) when the mouse pointer is
not over it. This must work independently for each of your widgets (i.e. only the
widget the mouse over is highlighted like this). Processing will call the mouseMoved
method (if you define it) whenever the mouse is moved. The stroke() method
allows you to define the border color. <br>
3. Define a Screen class which contains an ArrayList of Widgets. Each screen
should have it’s own background colour. Give Screen a getEvent method which
returns an event (the Widget pressed), and define a draw method in Screen which
draws the screen's widgets. Each screen has it’s own background color. <br>
Create an addWidget method to add a widget to the ArrayList of the screen. Use
your Screen class to write a program where there are two screens, and two buttons
on each screen, one of the buttons on each screen should move you forward and back
through the different screens as illustrated below. You can do this by creating two
instances of Screen. Pressing the other button should result in some text output from
println to report which button has been pressed. Hint: you can create an extra
Screen variable currentScreen which keeps track of the current screen – i.e. one of the
existing instances. <br>
Your mousePressed method in the main program will no longer require a loop, but
should still deal with the different events <br>
4. (Extra Credit) Implement checkbox and “radio button” widgets as subclasses of Widget <br>
5. (Extra Credit) Implement a slider that allows the user to select a number between 1 and
100 by sliding a rectangle along a bar. <br>
