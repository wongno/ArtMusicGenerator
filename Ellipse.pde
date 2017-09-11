class Ellipse extends Shape {
  Ellipse() {
    super();
  }
void setC(color s){c=s;}

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, 2*w, 2*h);
  }
  int getArea(){return (int)3.14*w*h;}
}