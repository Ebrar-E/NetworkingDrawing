import processing.net.*;
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//server
Client c; 
String input;
int data[]; 

//Global Variables
Minim minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
int numberOfSounds = 4;
AudioPlayer[] sound = new AudioPlayer[numberOfSounds];
int currentSound = numberOfSongs - numberOfSongs;
//
//
boolean play;
boolean playButton;
//
//images
PImage pic1, pic2, pic3;
//
//color set
color ink;
color backgroundColor=#0B032D, textColor=#FFFFFF, reset=#FFFFFF, quitButColor=#F2161D;
color quitButHoverOver=#D30F15, buttonColor=#843B62, buttonHoverOver=#621940, strokeColor=#F67E7D, buttonColor2=#FFB997, buttonHoverOver2=#F67E7D;
//
//color palette
color cadBlue=#7DB1B5, sage=#A8AE84, vegasG=#D0C176, yelCrayola=#E7C373;
color dgreen=#636940, fgreen=#59A96A, celandon=#9BDEAC, mMint=#B4E7CE;
color jet=#353745, lgray=#7C90A0, grullo=#B5AA9D, ashG=#B9B7A7;
//canvas
float canvasX, canvasY, canvasWidth, canvasHeight;
//quit button
float quitButX, quitButY, quitButWidth, quitButHeight;
//color Palette
float paletteX, paletteY, paletteWidth, paletteHeight;
//pencil case
float caseX, caseY, caseWidth, caseHeight;
//line art
float artX, artY, artWidth, artHeight;
//music
float musicX, musicY, musicWidth, musicHeight;
//clear
float clearX, clearY, clearWidth, clearHeight;
//case down
float caseDownX, caseDownY, caseDownWidth, caseDownHeight;
float caseDownX2, caseDownY2, caseDownWidth2, caseDownHeight2;
//color down
float colorDownX, colorDownY, colorDownWidth, colorDownHeight;
//art down
float artDownX, artDownY, artDownWidth, artDownHeight;
float artDownX2, artDownY2, artDownWidth2, artDownHeight2;
float artDownX3, artDownY3, artDownWidth3, artDownHeight3;
//color palettes
float colorB1X, colorB1Y, colorB2X, colorB2Y, colorB3X, colorB3Y, colorB4X, colorB4Y;
float colorB5X, colorB5Y, colorB6X, colorB6Y, colorB7X, colorB7Y, colorB8X, colorB8Y;
float colorB9X, colorB9Y, colorB10X, colorB10Y, colorB11X, colorB11Y, colorB12X, colorB12Y;
float colorBWidth, colorBHeight;
float colorBWidth2, colorBHeight2;
//pic
float picX, picY, picWidth, picHeight, picWidthRatio, picHeightRatio;
float picX2, picY2, picWidth2, picHeight2, picWidthRatio2, picHeightRatio2;
float picX3, picY3, picWidth3, picHeight3, picWidthRatio3, picHeightRatio3;
//play button
float playX, playY, playDiameter;
//next button
float nextX, nextY, nextDiameter;
//previous button
float previousX, previousY, previousDiameter;



//
float strokeThicess, drawingDiameter;
float strokeW = 20;
//


//
//the booleans
boolean controlDown = false;
boolean shiftDown = false;
//
boolean ciz=false, cizca=false, sil=false, caseDown=false, dropMenu1=false, dropMenu2=false, dropMenu3=false, art1=false, art2=false, art3=false;
//color set
boolean cadBlueInk, sageInk, vegasGInk, yelCrayolaInk;
boolean dgreenInk, fgreenInk, celandonInk, mMintInk;
boolean jetInk, lgrayInk, grulloInk, ashGlInk;
boolean pencilInk, resetInk;


Undo undo;


void setup() {
  fullScreen();
  background(backgroundColor);
  population();
  //
  minim = new Minim(this);
  song[0] = minim.loadFile("../Music/Large Smile Mood - Nico Staf.mp3");
  song[1] = minim.loadFile("../Music/Lights - Patrick Patrikios.mp3");
  song[2] = minim.loadFile("../Music/Simple - Patrick Patrikios.mp3");
  song[3] = minim.loadFile("../Music/Two Moons - Bobby Richards.mp3");
  //
  minim = new Minim(this);
  sound[1] = minim.loadFile("../Music/Wood Bat Falling in Grass.mp3");
  //
  //canvas
  

  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  //quit button
  rect(quitButX, quitButY, quitButWidth, quitButHeight);
  //color palette
  rect(paletteX, paletteY, paletteWidth, paletteHeight);
  //pencil case
  rect(caseX, caseY, caseWidth, caseHeight);
  //line art
  rect(artX, artY, artWidth, artHeight);
  //clear
  rect(clearX, clearY, clearWidth, clearHeight);
  //
   fill(buttonHoverOver);
  stroke(buttonHoverOver);
  rect(musicX, musicY, musicWidth, musicHeight);
  //
  //
  //
  undo = new Undo(10);
  //
  //server
  // Connect to the server’s IP address and port­
  c = new Client(this, "192.168.0.21", 12345);
}//end of setup



void mouseReleased() {
  // Save each line we draw to our stack of UNDOs
  undo.takeSnap();
}

void draw() {
  //
  //
  //
  quitButton();
  paletteButton();
  caseButton();
  artButtons();
  inkPopulation();
  clearButton();
  caseDown();
  caseDown2();
  playButton();
  nextButton();
  previousButton();
  //
  //
  //server
  if (mousePressed == true) {
    if (ciz == true && mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    fill(ink);
    stroke(ink);
    strokeWeight(strokeW);
    line(mouseX, mouseY, pmouseX, pmouseY);
  } 
    // Send mouse coords to other person
    c.write(pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + " " + int(strokeW) + "\n");
  int(strokeW);
  }
  //receiving from server
  if (c.available() > 0) { 
    input = c.readString(); 
    input = input.substring(0,input.indexOf("\n"));  // Only up to the newline
    data = int(split(input, ' '));  // Split values into an array
    // Draw line using received coords
    stroke(ink);
     strokeWeight(data[4]);
     line(data[0], data[1], data[2], data[3]); 
  } 
}//end of draw



void keyPressed() {
  //to remind if you clicked CTRL or SHIFT 
  if (key == CODED) {
    if (keyCode == CONTROL) 
      controlDown = true;
    if (keyCode == SHIFT)
      shiftDown = true;
    return;
  } 
  //to know if it was a redo(control shift Z) or an undo(control Z)
  if (controlDown) {
    if (keyCode == 'Z') {
      if (shiftDown)
        undo.redo();
      else
        undo.undo();
    }
    return;
  }
    if (key=='s') {
      saveFrame("image####.png");
    }
  }//end of keyPressed


void keyreleased() {
  if (key == CODED) {
    if (keyCode == CONTROL) 
      controlDown = false;
    if (keyCode == SHIFT)
      shiftDown = false;
  }
}//end of keyReleased 



void mousePressed() {
  if ( mouseX>quitButX  && mouseX<quitButX+quitButWidth  && mouseY>quitButY && mouseY<quitButY+quitButHeight ) {
    {
      exit();
    }
  }
  //
  if (mouseX>caseX && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseY+caseHeight) {
    dropMenu1 = true;
  } else {
    dropMenu1 = false;
  }
  //
  //
  if (mouseX>paletteX && mouseX<paletteX+paletteWidth && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    dropMenu2 = true;
  } else {
    dropMenu2 = false;
  }
  //
  if (mouseX>artX && mouseX<artX+artWidth && mouseY>artY && mouseY<artY+artHeight) {
    dropMenu3 = true;
  } else {
    dropMenu3 = false;
  }
  //
  //
  //
  playPressed();
  nextPressed();
  previousPressed();
  //
  colorBPressed();
  artPressed();
  clearPressed();
  //
  //
  artDown();
  artDown2();
  artDown3();
  //
}//end of mousePressed



void mouseWheel(MouseEvent e) {
  float amt = e.getCount();
  float newWid = strokeW+=amt;
  strokeW = max(newWid, 0); // to make sure its always  >0
}


//the confusing part 
  class Undo {
  // Number ss taken
  int undoSteps=0, redoSteps=0;  
  CircImgCollection images;
  //
  Undo(int levels) {
    images = new CircImgCollection(levels);
  }

  public void takeSnap() {
    undoSteps = min(undoSteps+1, images.amount-1);
    // each time we draw we disable redo
    redoSteps = 0;
    images.next();
    images.capture();
  }
  public void undo() {
    if(undoSteps > 0) {
      undoSteps--;
      redoSteps++;
      images.prev();
      images.show();
    }
  }
  public void redo() {
    if(redoSteps > 0) {
      undoSteps++;
      redoSteps--;
      images.next();
      images.show();
    }
  }
}


class CircImgCollection {
  int amount, current;
  PImage[] img;
  CircImgCollection(int amountOfImages) {
    amount = amountOfImages;

    // Initialize all images as copies of the current display
    img = new PImage[amount];
    for (int i=0; i<amount; i++) {
      img[i] = createImage(width, height, RGB);
      img[i] = get();
    }
  }
  void next() {
    current = (current + 1) % amount;
  }
  void prev() {
    current = (current - 1 + amount) % amount;
  }
  void capture() {
    img[current] = get();
  }
  void show() {
    image(img[current], 0, 0);
  }
}
