class SinOscillator{
SinOsc osc;
float freq,amp,add,pan;
//ArrayList<Shape> shapes;
SinOscillator(){
  
}

void setOsc(SinOsc o){osc = o;}
void setFreq(Shape a){
if(a.getColor()==#0000FF){ //blue
freq=261.62;}
if(a.getColor()==#FFE300){ //yellow good
freq=293.66;}
if(a.getColor()==#FF0000){ //red
freq=220;}
if(a.getColor()==#09BD00){ //green
freq=391;}
if(a.getColor()==#FF8A00){ //orange
freq=164.81;}
if(a.getColor()==#4F00E8){ //violet
freq=329.628;}
if(a.getColor()==#FD7AFF){ //pink
freq=440;}
if (a.getColor()==#7E0C85){
  freq=311.13;
  }
  if (a.getColor()==#520085){
    freq=349;
  }
  if (a.getColor()==#0C97F8){
    freq=293;
  }
  if (a.getColor()==#0C8584){
  freq=349;
  }
  if (a.getColor()==#9CD90B){
  freq=331.11;
  }
  if (a.getColor()==#F0B100){
  freq=138;
  }
  if (a.getColor()==#D94B0B){
  freq=103;
  }
  if (a.getColor()==#F80C6C){
  freq=195;
  }
  if (a.getColor()==0){
  freq=65;
  }
}
void setAmp(Shape a){
  int maxArea = width*height;
if(a.getArea()>= maxArea){
amp = .999;
}else{
  amp = (float)a.getArea()/maxArea;
  
}
}
void setAdd(float a){add=a;}
void setPan(float a){pan=a;}
void playOsc(){
  println(amp);
osc.play(freq,amp,10,pan);}
void stopOsc(){
osc.stop();
}
}