
PShape square;
PFont stdFont;
Screen screen, screen2, currentScreen;
int screenNumber;
color screenColour;
color red = color(255,0,0);
color green = color(0,255,0);
color blue = color(0,0,255);
color orange = color(255,158,0);
color purple = color(185,0,133);


final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3 = 3;
final int EVENT_NULL=0;

void setup() {
background(100,100,100);
size(600, 600);
stdFont=loadFont("Candara-Bold-32.vlw"); textFont(stdFont);
screen = new Screen(orange);
screen2 = new Screen(purple);
currentScreen = screen;

Widget widget1, widget2, widget3, widget4;
widget1=new Widget(200,150,150,40, "Button 1", color(red), stdFont, EVENT_BUTTON1);
widget2=new Widget(200,350,150,40, "Forward", color(green), stdFont, EVENT_BUTTON2);
widget3=new Widget(200,150,150,40, "Button 2", color(red), stdFont, EVENT_BUTTON1);
widget4=new Widget(200,350,150,40, "Backward", color(green), stdFont, EVENT_BUTTON2);


screen.addWidget(widget1); 
screen.addWidget(widget2);
screen2.addWidget(widget3);
screen2.addWidget(widget4);


}
void draw(){
  strokeWeight(5);
  currentScreen.draw();
}

void mouseMoved(){

int event;
for(int i = 0; i < currentScreen.widgetList.size(); i++) {
  Widget aWidget = (Widget) currentScreen.widgetList.get(i);
  event = aWidget.getEvent(mouseX, mouseY);
  switch(event) {
    case EVENT_BUTTON1:
    case EVENT_BUTTON2:
    case EVENT_BUTTON3:
    aWidget.button.setStroke(color(255));
    break;
    case EVENT_NULL:
    aWidget.button.setStroke(color(0));
   }
  }
}

void mousePressed() {
  int event;
  event = currentScreen.getEvent();
  switch(event) {
    case EVENT_BUTTON1:
    println((currentScreen == screen)? "button 1" : "button 2");
    break;
    case EVENT_BUTTON2:
    currentScreen = (currentScreen == screen)? screen2: screen;
    break;
  }
}
