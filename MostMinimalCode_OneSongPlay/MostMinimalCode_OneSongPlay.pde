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
  //song1.play();//Parameter is milli-seconds form start of audio file to start playing 
  song1.loop(); //Parameter is number of repeats
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program 
