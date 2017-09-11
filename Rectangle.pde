class Rectangle extends Shape{
Rectangle(){
  super();
}
void setC(color s){c=s;}
void display(){
  noStroke();
  fill(c);
rect(x,y,w,h);
}
int getArea(){
  if(abs(w)>=1000 && abs(h)>=100){
    return abs(w/1000 * h/100);
  }
return abs(w*h);}
}