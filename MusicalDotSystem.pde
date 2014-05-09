

class MusicalDotSystem {
  ArrayList<MusicalDot> dots;
  PVector origin;
  
  MusicalDotSystem(PVector location) {
    origin = location.get();
    //dots = location.get();
    dots = new ArrayList<MusicalDot>();
  }
  
  void addMusicalDot(float x_, float y_) {
    dots.add(new MusicalDot(x_,y_));
  }
   
  void play() {
    
     
    
     for(int i = dots.size()-1;i>=0;i--) {
       
       
       for(int ind = 0; ind < out.bufferSize() - 1; ind++)
       {
         line( ind, 50 + out.left.get(ind)*50, ind+1, 50 + out.left.get(ind+1)*50 );
         line( ind, 150 + out.right.get(ind)*50, ind+1, 150 + out.right.get(ind+1)*50 );
       } 
       out.playNote(i,1,dots.get(i).pitch);
       dots.get(i).hasPlayed = true;
       
     }
  }
  
  // Iterate through each member of the system, no iterator?
  
  void run(Minim minim, boolean play) {
    
    if(play) {
      for(int i = dots.size()-1; i>=0;i--) {
        MusicalDot d = dots.get(i);
        d.run();
      }
    }
  }
}
  
    
