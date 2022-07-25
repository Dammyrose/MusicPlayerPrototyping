import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates a playlist
//
void setup() 
{
  minim = new Minim(this); // Important to have an work//load from data directorry, loadFile should also load from project folder, like loadImage 
  song1 = minim.loadFile("in-the-forest-2-21402.mp3"); //Important to have an work//able to pass absolute path, file name & extension, and URL 
}//End setup
//
void draw() {
  if(song1.isLooping() && song1.loopCount()!=-1) println("There are", song1.loopCount(), "loops left.");
  if(song1.isLooping() && song1.loopCount()==-1) println("Looping Infinty");
  if(song1.isPlaying() && !song1.isLooping()) println("Play Once");
}//End draw
//
void keyPressed() 
{
  //First Play Button
  if(key==' ' || key==' ')song1.play();//Parameter is milli-seconds form start of audio file to start playing 
  //
  //Alternate Play Button, as a finite loop() && infinte loop()
  //Only press a number for this code below
  println(key);
  if (key=='1') {//LOOP Function Once
    if(key=='1') println("Looping Once");
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum); //Parameter is number of repeats
    //if (key=='l' || key== 'L')song1.loop(loopNum); 
  }//End LOOP Functions
  if(key=='i' || key== 'I' ) song1.loop();//Infinte Loop, no parameter OR -1
  if( key>= '2' || key=='0') println("I do not loop that much, press i for infinite loop");
  //
}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program 
