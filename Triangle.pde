class Triangle extends Shape{
Triangle(){
super();
}
void setC(color s){c=s;}
void display(){
  noStroke();
  fill(c);
triangle(x-w,y+h,x,y,x+w,y+h);
}
int getArea(){return w*h/2;}
}