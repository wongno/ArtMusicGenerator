class Button {
  int x, y, w, h;
  String name;
  Button() {
  }
  void setX(int n) {
    x=n;
  }
  void setY(int n) {
    y=n;
  }
  int getX() {
    return x;
  }
  int getY() {
    return y;
  }
  int getW() {
    return w;
  }
  int getH() {
    return h;
  }
  String getN() {
    return name;
  }
  void setW(int n) {
    w=n;
  }
  void setH(int n) {
    h=n;
  }
  void setN(String s) {
    name =s;
  }

  boolean isIn() {
    boolean ans = false;
    if (getN().equals("play")) {
      ans = mouseX >= 10 && mouseX<=50 && mouseY>=10 && mouseY<=50;
    }
    if (getN().equals("pause")) {
      ans = mouseX >= 10 && mouseX<=50 && mouseY>=60 && mouseY<=100;
    }
    if (getN().equals("clear")) {
      ans = mouseX >= 10 && mouseX<=50 && mouseY>=110 && mouseY<=150;
    }
    if (getN().equals("e")) {
      ans = mouseX >= x-w/2 && mouseX<=x+w/2 && mouseY>=y-w/2 && mouseY<=y+w/2;
    }
    if (getN().equals("r")) {
      ans = mouseX >= x && mouseX<= x+w && mouseY>= y && mouseY<=y+h;
    }
    if (getN().equals("t")) {
      ans = mouseX >=x && mouseX<= w && mouseY>= h-25 && mouseY<=y;
    }
    if (getN().equals("l")) {
      ans = mouseX >= x-5 && mouseX<= x+35 && mouseY>= y-30 && mouseY<=y+10;
    }
    if (getN().equals("red")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 10 && mouseY<=40;
    }
    if (getN().equals("orange")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 45 && mouseY<=75;
    }
    if (getN().equals("yellow")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 80 && mouseY<=110;
    }
    if (getN().equals("green")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 115 && mouseY<=145;
    }
    if (getN().equals("blue")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 150 && mouseY<=180;
    }
    if (getN().equals("violet")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 185 && mouseY<=215;
    }
    if (getN().equals("pink")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 220 && mouseY<=250;
    }
    if (getN().equals("wine")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 255 && mouseY<=285;
    }
    if (getN().equals("plum")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 290 && mouseY<=320;
    }
    if (getN().equals("lblue")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 325 && mouseY<=355;
    }
    if (getN().equals("gblue")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 360 && mouseY<=390;
    }
    if (getN().equals("ygreen")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 395 && mouseY<=425;
    }
    if (getN().equals("yy")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 430 && mouseY<=460;
    }
    if (getN().equals("ored")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 465 && mouseY<=495;
    }
    if (getN().equals("pred")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 500 && mouseY<=530;
    }
    if (getN().equals("black")) {
      ans = mouseX >= width-50 && mouseX<= width-20 && mouseY>= 535 && mouseY<=565;
    }
    return ans;
  }

  void display() {
    if (name != null) {
      if (name.equals("play")) {
        if (isIn()) {
          stroke(0);
          fill(255);
          rect(10, 10, 40, 40);
          fill(0);
          triangle(20, 15, 45, 30, 20, 45);
        } else {
          stroke(0);
          fill(0);
          rect(10, 10, 40, 40);
          fill(255);
          triangle(20, 15, 45, 30, 20, 45);
        }
      }
      if (name.equals("pause")) {
        if (isIn()) {
          stroke(0);
          fill(255);
          rect(10, 60, 40, 40);
          fill(0);
          line(25, 67, 25, 93);
          line(35, 67, 35, 93);
        } else {
          stroke(0);
          fill(0);
          rect(10, 60, 40, 40);
          fill(255);
          stroke(255);
        line(25, 67, 25, 93);
          line(35, 67, 35, 93);
        }
      }
      if (name.equals("clear")) {
        if (isIn()) {
          stroke(0);
          fill(255);
          rect(10, 110, 40, 40);
          stroke(0);
          line(11, 150, 50, 111);
          line(11, 111, 50, 150);
        } else {
          stroke(0);
          fill(0);
          rect(10, 110, 40, 40);
          stroke(255);
          line(11, 150, 50, 111);
          line(11, 111, 50, 150);
        }
      }
      if (name.equals("e")) {
        if (isIn()) {
          stroke(0);
          fill(255);
          ellipse(x, y, w, h);
        } else {
          stroke(0);
          fill(0);
          ellipse(x, y, w, h);
        }
      } else if (name.equals("r")) {
        if (isIn()) {
          stroke(0);
          strokeWeight(1);
          fill(255);
          rect(x, y, w, h);
        } else {
          stroke(0);
          strokeWeight(1);
          fill(0);
          rect(x, y, w, h);
        }
      } else if (name.equals("t")) {
        if (isIn()) {
          stroke(0);
          strokeWeight(1);
          fill(255);
          triangle(x, y, width-35, height-95, w, h);
        } else {
          stroke(0);
          strokeWeight(1);
          strokeWeight(1);
          fill(0);
          triangle(x, y, width-35, height-95, w, h);
        }
      } else if (name.equals("l")) {
        if (isIn()) {
          stroke(0);
          fill(255);
          strokeWeight(1);
          rect(x-5, y-30, 40, 40);
          fill(0);
          rect(x+14, y-25, 2, 30);
        } else {
          stroke(0);
          strokeWeight(1);
          fill(0);
          rect(x+14, y-25, 2, 30);
        }
      }
      else if (name.equals("red")){
      noStroke();
      fill(#FF0000);
      rect(width-50,10,30,30);
      }
      else if (name.equals("orange")){
      noStroke();
      fill(#FF8A00);
      rect(width-50,45,30,30);
      }
      else if (name.equals("yellow")){
      noStroke();
      fill(#FFE300);
      rect(width-50,80,30,30);
      }
      else if (name.equals("green")){
      noStroke();
      fill(#09BD00);
      rect(width-50,115,30,30);
      }
      else if (name.equals("blue")){
      noStroke();
      fill(#0000FF);
      rect(width-50,150,30,30);
      }
      else if (name.equals("violet")){
      noStroke();
      fill(#4F00E8);   
      rect(width-50,185,30,30);
      }
      else if (name.equals("pink")){
      noStroke();
      fill(#FD7AFF);
      rect(width-50,220,30,30);
      }
      else if (name.equals("wine")){
      noStroke();
      fill(#7E0C85);
      rect(width-50,255,30,30);
      }
      else if (name.equals("plum")){
      noStroke();
      fill(#520085);
      rect(width-50,290,30,30);
      }
      else if (name.equals("lblue")){
      noStroke();
      fill(#0C97F8);
      rect(width-50,325,30,30);
      }
      else if (name.equals("gblue")){
      noStroke();
      fill(#0C8584);
      rect(width-50,360,30,30);
      }
       else if (name.equals("ygreen")){
      noStroke();
      fill(#9CD908);
      rect(width-50,395,30,30);
      }
       else if (name.equals("yy")){
      noStroke();
      fill(#F0B100);
      rect(width-50,430,30,30);
      }
        else if (name.equals("ored")){
      noStroke();
      fill(#D94B0B);
      rect(width-50,465,30,30);
      }
         else if (name.equals("pred")){
      noStroke();
      fill(#F80C6C);
      rect(width-50,500,30,30);
      }
          else if (name.equals("black")){
      noStroke();
      fill(0);
      rect(width-50,535,30,30);
      }
    }
  }
}