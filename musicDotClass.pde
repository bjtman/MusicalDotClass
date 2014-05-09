//4-28-2012

// Class to house musicalDot code

// Eventually use SoundCipher, but for now just use Minim and sequential sequencing

boolean playRequest = false;

import ddf.minim.*;
import ddf.minim.ugens.*;
import controlP5.*;

ControlP5 cp5;
Minim minim;
AudioOutput out;
Slider abc;


MusicalDotSystem ds;

void setup() {
  size(800,600);
  minim = new Minim(this);        // Change this to the Musical Dot System?
  out = minim.getLineOut();

  ds = new MusicalDotSystem(new PVector(mouseX,mouseY));
  
   cp5 = new ControlP5(this);
  
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("sliderValue")
     .setPosition(100,50)
     .setRange(0,255)
     ;
}

void draw() {
  
 smooth();
 
 // background(127);
 // ds.addMusicalDot();
  ds.run(minim,playRequest);
 // ds.addMusicalDot(random(0,width),random(0,height));
}

void mousePressed() {
  ds.addMusicalDot(mouseX,mouseY);
}

void keyPressed() {
  
  if(key == 'a') {
   if(playRequest == false) {
     playRequest = true;
   }
   else {
     playRequest = false;
   }
  }
  else if(key == 'p') {
    background(99);
    ds.play();
  }
}
