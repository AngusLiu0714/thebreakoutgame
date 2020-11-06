void keyPressed () {
  if (keyCode ==   RIGHT) dkey=true;
  if (keyCode == LEFT) akey=true;
} //end keyPressed

void keyReleased () {
  if (keyCode ==   RIGHT) dkey=false;
  if (keyCode == LEFT)  akey=false;
} //end keyReleased


 void mouseReleased () {
  if (mode == INTRO) {
    introClicks ();
  } else if ( mode == GAME) { 
    gameClicks ();
  } else if (mode== PAUSE) {
    pauseClicks();
  } else if ( mode== GAMEOVERWIN) { 
    gameoverwinClicks ();
  }else if (mode== GAMEOVERLOSE) { 
    gameoverloseClicks ();
  } else { 
    println ("Error: Mode= " + mode);
  }
} ///////////////////////////end of void mouseReleased

void reset () {
  bx= width/2;
  by= height -200; 
  bd= 10; 
  px= width/2; 
  py= height; 
  pd= 100; 
  vx= 0; 
  vy= 1;
  score= 0; 
  lives= 3;
alive[0] = true;
alive[1] = true;
alive[2] = true;
alive[3] = true;
alive[4] = true;
alive[5] = true;
alive[6] = true;
alive[7] = true;
alive[8] = true;
alive[9] = true;
alive[10] = true;
alive[11] = true;
alive[12] = true;
alive[13] = true;
alive[14] = true;



}
