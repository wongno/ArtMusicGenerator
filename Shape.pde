class Shape{
  int x,y,w,h;
  String n;
  color c;
Shape(){
  x=-1;
  y=-1;
  w=-1;
  h=-1;
}
int getArea(){return w*h;}
void setX(int n){x=n;}
void setY(int n){y=n;}
void setC(color s){c=s;}
int getX(){return x;}
int getY(){return y;}
int getW(){return w;}
int getH(){return h;}
color getColor(){return c;}
String getN(){return n;}
void setW(int n){w=n;}
void setH(int n){h=n;}
void setN(String s){n=s;}

void display(){
fill(c);
}
}