ArrayList widgetList;
PShape square;
PFont stdFont;
color red = color(255,0,0);
color green = color(0,255,0);
color blue = color(0,0,255);


final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3 = 3;
final int EVENT_NULL=0;

void setup() {
  background(100,100,100);
Widget widget1, widget2, widget3;
size(600, 600);
stdFont=loadFont("Candara-Bold-36.vlw"); textFont(stdFont);
widget1=new Widget(50,50,150,40,
"R", color(255, 0, 0), stdFont,
EVENT_BUTTON1);

widget2=new Widget(230, 50, 150, 40,
"G", color(0,255,0), stdFont, EVENT_BUTTON2);
widget3=new Widget(400,50,150,40,
"B", color(0,0,255), stdFont, EVENT_BUTTON3);
widgetList = new ArrayList();
square = createShape(RECT, 250, 250, 100,100);
widgetList.add(widget1); widgetList.add(widget2); widgetList.add(widget3);

}
void draw(){
  strokeWeight(5);
  
for(int i = 0; i<widgetList.size(); i++){
Widget aWidget = (Widget) widgetList.get(i);
aWidget.draw();
}

shape(square);
}

void mousePressed() {
  int event;
  
  for(int i = 0; i < widgetList.size(); i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX, mouseY);
    switch(event) {
      case EVENT_BUTTON1:
      square.setFill(color(red));
      break;
      case EVENT_BUTTON2:
       square.setFill(color(green));
       break;
      case EVENT_BUTTON3:
      square.setFill(color(blue));
      break;
    }
  }

 
}
