

class MusicalDot {
  
  PVector location;     // Vector describing location on the screen
  float pitch;          // Frequency of the musicalDot
  float duration;       // how long the note should play
  float lifespan;
  color myColor;
  boolean hasPlayed;
  
  MusicalDot(float x_, float y_) {
    location = new PVector(x_,y_);
    pitch = location.y / 2;
    duration = 2.0;
    lifespan = 100;
    hasPlayed = false;
    out.playNote(0.0,0.9,pitch);
    
    for(int i = 0; i < out.bufferSize() - 1; i++)
    {
      line( i, 50 + out.left.get(i)*50, i+1, 50 + out.left.get(i+1)*50 );
      line( i, 150 + out.right.get(i)*50, i+1, 150 + out.right.get(i+1)*50 );
    } 
  }  
  
  void run() {
    update();
    display();
    //play();
  }
  
  void update() {
    lifespan--;
    
      
  }
  
  void display() {
    
    
    if(hasPlayed) {
      fill(25,90,25);
      ellipse(location.x,location.y,16,16);
    }
    else {
      fill(map(location.y,0,600,0,255),map(location.x,0,800,0,255),127);
      ellipse(location.x,location.y,16,16);
    }
  }
  
  void play() {
    
   
  }
  
  
}
