void intro () { 
intro.play();

  //gif
  background(255);
  PImage frame= gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n>49) n=0;

  textFont (font); 
  textSize (100);
  text ("Breakout Game!", 90, 230); 


  textFont (font); 
  textSize (50);
  text ("Click to Start!", 265, 500);
} //end intro


void introClicks () { 
  if (dist(470, 530, 470, 540) <=100) {
    mode=GAME;
    intro.pause();
    intro.rewind();
  }
} //end introClicks
