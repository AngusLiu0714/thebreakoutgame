void game () {
  beep.play();
  background (25, 150, 255);

  //font
  fill (255);
  textFont (font); 
  text ("Score: " +score, 70, 530);
  text ("Lives: " + lives, 600, 530);

  //Paddle 
  fill (255); 

  //keys

  if (akey==true)  px=px-10;
  if (dkey ==true)  px=px+10;





  //ball 
  fill (255); 
  circle (bx, by, bd); 
  bx= bx+vx;
  by= by+vy;


  //paddle
  noStroke();
  fill (255); //left paddle
  circle (px, py, pd);
  if (px<60) {
    px=60;
  }

  if (px>740) {
    px=740;
  }



  //bouncing 
  if (dist (bx, by, px, py) < bd/2 + pd/2) {
    vx= (bx-px) /16;
    vy= (by-py) /16;
  }

  if ( by < bd/2+5 || by > height-bd/2-5) { 
    vy= vy * -1;
  }

  if (bx < bd/2 || bx > width-bd/2-5) { 
    vx = vx *-1;
  }
  //brick 
  //circle ( x [0], y [0], brickd);
  //circle ( x [1], y [1], brickd);
  //circle ( x [2], y [2], brickd);
  //circle ( x [3], y [3], brickd);
  //circle ( x [4], y [4], brickd);

  fill ( 255);
  int i=0;
  while ( i < n1) { 
     println(i, alive[i]);
    if (alive[i] == true ) {
     
      manageBrick (i);
    }
    i++;
  }


  //SCORE

  if (score==15) {
    mode=GAMEOVERWIN;
  }

  if (by> 577) {
    lives= 2;
  } else if (by> 585) {
    lives= 1;
  } 

  if (by > 585) {
    lives=1;
  } else if (by> 600) {
    lives=0;
  }

  if ( by >600) { 
    lives= 0;
  }

  if (lives ==0) {
    mode= GAMEOVERLOSE;
  }
}//end draw 

void gameClicks() {
  if (dist(100, 300, 600, 600) < 600) {
    mode=PAUSE;
    beep.pause();
    beep.rewind();
    breaks.pause();
    breaks.rewind();
  }
} //END GameClicks


void manageBrick ( int i) {
  breaks.play();
  
  if (y[i] ==100) fill (0, 209, 196);
  if (y[i] ==210) fill (18, 250, 244);
  if (y[i] ==320) fill (32, 18, 250);

  circle ( x [i], y [i], brickd);
  if (dist (bx, by, x [i], y[i]) < bd/2 + brickd/2) {
    vx= (bx-x[i]) /10;    
    vy= (by-y[i]) /10 ;
    alive [i] = false;
    score= score+1;
  }
} //END Managebrick
