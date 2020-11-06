//Breakout Game 
//Angus Liu 

// ASK Mr. Pelletier; 


//GAMEOVER
// music
//reset


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Music
Minim minim;
AudioPlayer beep, boop, breaks, failure, intro, win ;

//MODE Variables
int mode; 
final int INTRO =1;
final int GAME =2; 
final int PAUSE =3; 
final int GAMEOVERWIN =4;
final int GAMEOVERLOSE=5;

//INTRO gui 
float a; 

//Game entities
float bx, by, bd, vx, vy, px, py, pd;

//keyboard variables
boolean akey, dkey; 

//gif
ArrayList<PImage> gif;



//Brick Variables, and game
int [] x; 
int [] y; 
int brickd;
boolean [] alive; 
int n; 
int tempx, tempy;
int b;
int score, lives, highscore; //also a target variable
int n1;

//Font 
PFont font;

//Image
PImage  image;
void setup () { 
  size (800, 630);
  noStroke (); 
  mode= INTRO; 
  //setup paddle and ball 
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
  font= createFont ("Wash Your Hand.ttf", 45); 
  image= loadImage ("b1ae707222c7840df56a0fdf6c5c686c.jpg");
 

  //loading sound files
  minim= new Minim(this);
  beep= minim.loadFile("beep.wav" );
  boop= minim.loadFile("boop.wav" );
  intro= minim.loadFile("introO2.wav" );
  breaks= minim.loadFile("break.wav" );
  failure= minim.loadFile("failure.wav" );
  win= minim.loadFile("win.wav" );



  brickd= 80; 
  n=0;

  //gif
  gif=new ArrayList<PImage>();
  int i=0;
  while (i<50) {
    String zero="";
    if (i<10) zero= "0"; 
    gif.add(loadImage("frame_" + zero + i +"_delay-0.03s.gif"));
    i++;
  }
  frameRate(50);



  // alive new boolean [n] =true;
  n1= 15;
  alive = new boolean [n1] ;
  x= new int [n1];
  y= new int [n1];

  tempx= 100;
  tempy= 100;

  i = 0;
  while ( i < n1) { 
    x [i] = tempx; 
    y[i] = tempy;
    alive [i] = true;
    i= i+1;
    tempx= tempx +140; 
    if (tempx ==width ) { 
      tempx= 100;
      tempy= tempy+ 110;
    }
  }
   reset ();
} //END OF SETUP


void draw () { 
  if (mode ==INTRO) { 
    intro ();
  } else if (mode==GAME) { 
    game ();
  } else if ( mode==PAUSE) { 
    pause ();
  } else if (mode ==GAMEOVERWIN) {
    gameoverwin ();
  } else if (mode== GAMEOVERLOSE) { 
    gameoverlose ();
  } else { 
    println ( "MODE ERROR in draw: " +mode );
  }
  //println (mouseX, mouseY);
} //END DRAW
