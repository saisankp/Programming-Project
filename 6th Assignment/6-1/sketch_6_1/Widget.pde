class Widget {
int x, y, width, height;
String label; int event;
color widgetColor, labelColor;
PFont widgetFont;
PShape button;



Widget(int x,int y, int width, int height, String label,
color widgetColor, PFont widgetFont, int event){
this.x=x; this.y=y; this.width = width; this.height= height;
this.label=label; this.event=event;
this.widgetColor=widgetColor; this.widgetFont=widgetFont;
labelColor= color(0);
button = createShape(RECT, x,y,width,height);
button.setFill(widgetColor);
}

void draw(){
fill(widgetColor);
shape(button);
fill(labelColor);
text(label, x+60, y+height-7);
}
int getEvent(int mX, int mY){
if(mX>x && mX < x+width && mY >y && mY <y+height){
return event;
}
return EVENT_NULL;
}
}
