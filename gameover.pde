void gameoverwin () { 
 win.play ();
   background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>49) n=0;
    
   textFont (font); 
    textSize (100);
    text ("YOU WIN!", 150, 230); 

  
    textFont (font); 
    textSize (50);
    text ("Click to Return Home!", 185, 500); 
    reset ();
}


void gameoverwinClicks () { 
    if (dist(100, 300, 600, 600) < 600) {
    mode=INTRO;
    win.pause();
    win.rewind ();
  }
}




void gameoverlose () { 
  failure.play();

 fill (255);
  background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>49) n=0;
  
   textFont (font); 
    textSize (100);
    text ("YOU LOST!", 150, 230); 

  
    textFont (font); 
    textSize (50);
    text ("Click to Return Home!", 185, 500); 
    reset();
  
} //end gameoverlose


void gameoverloseClicks () {
    if (dist(100, 300, 600, 600) < 600) {
    mode=INTRO;
    failure.pause();
    failure.rewind();
  }
  
  
} //end gameoverClicks
