import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
import processing.sound.*;

SinOscillator osc = new SinOscillator();
ArrayList<SinOscillator> o;
ArrayList<Shape> r;
Button[] butts;
Button pause = new Button();
Button play = new Button();
Button clear = new Button();
Button e = new Button();
Button rect = new Button();
Button t = new Button();
Button l = new Button();
Button red = new Button();
Button orange = new Button();
Button yellow = new Button();
Button green = new Button();
Button blue = new Button();
Button violet = new Button();
Button pink = new Button();
Button wine = new Button();
Button plum = new Button();
Button lblue = new Button();
Button gblue = new Button();
Button ygreen = new Button();
Button yy = new Button();
Button ored = new Button();
Button pred = new Button();
Button black = new Button();
Shape s;
boolean beenClicked;
String toDraw;
color c;


void setup() {
  c = 0;
  osc.setOsc(new SinOsc(this)); // creating SineOscillator
  o = new ArrayList<SinOscillator>();
  size(1000, 800);
  beenClicked = false;
  r=new ArrayList<Shape>();
  butts = new Button[5];
  play.setN("play");
  pause.setN("pause");
  clear.setN("clear");
  e.setN("e");
  e.setX(width-35);
  e.setY(height - 170);
  e.setW(30);
  e.setH(30);
  rect.setN("r");
  rect.setX(width-50);
  rect.setY(height-140);
  rect.setW(30);
  rect.setH(30);
  t.setN("t");
  t.setX(width-50);
  t.setY(height-65);
  t.setW(width-20);
  t.setH(height-65);
  l.setN("l");
  l.setX(width-50);
  l.setY(height-20);
  l.setW(width-20);
  l.setH(height-80);
  red.setN("red");
  orange.setN("orange");
  yellow.setN("yellow");
  green.setN("green");
  blue.setN("blue");
  violet.setN("violet");
  pink.setN("pink");
  wine.setN("wine");
  plum.setN("plum");
  lblue.setN("lblue");
  gblue.setN("gblue");
  ygreen.setN("ygreen");
  yy.setN("yy");
  ored.setN("ored");
  pred.setN("pred");
  black.setN("black");
  butts[0]=e;
  butts[1]=rect;
  butts[2]=t;
  butts[3]=l;
}

void draw() {
  background(255);
  // fill(0);

  if (r.size()!=0) {
    for (int i = 0; i < r.size(); i++) {
      if (r.get(i).getX()!=-1&&r.get(i).getY()!=-1&&r.get(i).getH()!=-1&&r.get(i).getW()!=-1) {
        r.get(i).display();
      }
         o.get(i).setFreq( r.get(i));
          o.get(i).setAmp( r.get(i));
          o.get(i).setAdd(0);
          o.get(i).setPan(0);// when I set the oscillator
        }
      }
  play.display();
  pause.display();
  clear.display();
  l.display();
  e.display();
  rect.display();
  t.display();
  red.display();
  orange.display();
  yellow.display();
  green.display();
  blue.display();
  violet.display();
  pink.display();
  wine.display();
  plum.display();
  lblue.display();
  gblue.display();
  ygreen.display();
  yy.display();
  ored.display();
  pred.display();
  black.display();
}

void beenClicked() {
  beenClicked = true;
}

void mousePressed() {
  if (toDraw!=null) {
    if (toDraw.equals("e")) {
      beenClicked();
      SinOscillator os = new SinOscillator();
      os.setOsc(new SinOsc(this));
      o.add(os);
      Shape rec = new Ellipse();
      rec.setC(c);
      rec.setX(mouseX);
      rec.setY(mouseY);
      r.add(rec);
    }
    if (toDraw.equals("r")) {
      beenClicked();
      SinOscillator os = new SinOscillator();
      os.setOsc(new SinOsc(this));
      o.add(os);
      Shape rec = new Rectangle();
      rec.setX(mouseX);
      rec.setC(c);
      rec.setY(mouseY);
      r.add(rec);
    }
    if (toDraw.equals("t")) {
      beenClicked();
      SinOscillator os = new SinOscillator();
      os.setOsc(new SinOsc(this));
      o.add(os);
      Shape rec = new Triangle();
      rec.setC(c);
      rec.setX(mouseX);
      rec.setY(mouseY);
      r.add(rec);
    }
    if (toDraw.equals("l")) {
      beenClicked();
      SinOscillator os = new SinOscillator();
      os.setOsc(new SinOsc(this));
      o.add(os);
      Shape rec = new Line();
      rec.setC(c);
      rec.setX(mouseX);
      rec.setY(mouseY);
      r.add(rec);
    }
  }
}



void mouseReleased() {
  if (clear.isIn()) {
    for (SinOscillator s : o) {
      s.stopOsc();
    }
    o = new ArrayList<SinOscillator>();
    r = new ArrayList<Shape>();
  }
  if (e.isIn()) {
    toDraw = "e";
  }
  if (rect.isIn()) {
    toDraw = "r";
  }
  if (t.isIn()) {
    toDraw = "t";
  }
  if (l.isIn()) {
    toDraw = "l";
  }
  if (red.isIn()) {
    c = #FF0000;
  }
  if (orange.isIn()) {
    c= #FF8A00;
  }
  if (yellow.isIn()) {
    c= #FFE300;
  }
  if (green.isIn()) {
    c=#09BD00;
  }
  if (blue.isIn()) {
    c=#0000FF;
  }
  if (violet.isIn()) {
    c=#4F00E8;
  }
  if (pink.isIn()) {
    c=#FD7AFF;
  }
  if (wine.isIn()) {
      c=#7E0C85;
  }
  if (plum.isIn()) {
    c=#520085;
  }
  if (lblue.isIn()) {
    c=#0C97F8;
  }
  if (gblue.isIn()) {
    c=#0C8584;
  }
  if (ygreen.isIn()) {
    c=#9CD90B;
  }
  if (yy.isIn()) {
    c=#F0B100;
  }
  if (ored.isIn()) {
    c=#D94B0B;
  }
  if (pred.isIn()) {
    c=#F80C6C;
  }
  if (black.isIn()) {
    c=0;
  }
  if (play.isIn()) {
    if (r.size()!=0) {
      for (SinOscillator s : o) {
        s.stopOsc();
      }
      for (SinOscillator s : o) {
        s.playOsc();
        println("here");
      }
    }
  }
  if (pause.isIn()) {
    for (SinOscillator s : o) {
      s.stopOsc();
    }
  }
}

void mouseDragged() {
  if (r.size()!=0) {
    if (toDraw.equals("l")) {
      Shape rec = r.get(r.size()-1);
      rec.setW(mouseX); 
      rec.setH(mouseY);
    } else {
      Shape rec = r.get(r.size()-1);
      rec.setW(abs(rec.getX()- mouseX));
      rec.setH(abs(rec.getY() - mouseY));
    }
  }
}