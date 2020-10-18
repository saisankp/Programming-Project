class Screen{
ArrayList widgetList;
color backgroundColor;

Screen(color backgroundColor) {
  this.backgroundColor = backgroundColor;
  widgetList = new ArrayList();
}

void draw() {
  background(backgroundColor);
  for(int i = 0; i < widgetList.size() ; i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    aWidget.draw(); 
  }
}

void addWidget(Widget widget) {
  widgetList.add(widget);
}

int getEvent() {
  int event = 0;
  for(int i = 0; i < widgetList.size() ; i++) {
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX, mouseY);
    if(event != EVENT_NULL)
    break;
  }
  return event;
}

}
