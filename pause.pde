void pause () {
    background (25, 150,255);
     image (image, 0, 0, 800, 630);
     fill (255);
    textFont (font); 
    textSize (150);
    text ("PAUSE!", 100, 300); 
  

    textSize (50);
    text ("Press to Continue", 200, 450); 
  
  

  
} //end pause



void pauseClicks () {
    if (dist(470, 530, 470, 540) <=100) {
    mode=GAME;
  }
}//end pauseClicks
