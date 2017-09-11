class Line extends Shape{
Line(){
super();
}
void setC(color s){c=s;}
void display(){
  fill(0);
  stroke(c);
  strokeWeight(2);
line(x,y,w,h);

}
}