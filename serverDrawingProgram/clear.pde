void clearButInfo() {
  String clearButText="Clear";
  PFont clearFont;
  clearFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(clearFont, 40);
  //
  text(clearButText, clearX, clearY, clearWidth, clearHeight);
  fill(reset);
}//end of clearButInfo



void clearButton() {
  if (mouseX>clearX && mouseX<clearX+clearWidth  && mouseY>clearY && mouseY<clearY+clearHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(clearX, clearY, clearWidth, clearHeight);
    stroke (reset);
    fill(reset);
    clearButInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(clearX, clearY, clearWidth, clearHeight);
    stroke (reset);
    fill(reset);
    clearButInfo();
  }
}//end of clearButton


void clearPressed() {
  if (mouseX>clearX && mouseX<clearX+clearWidth  && mouseY>clearY && mouseY<clearY+clearHeight) {
    art1 = false;
    art2 = false;
    art3 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    ciz = false;
    sound[1].play();
sound[1].rewind();
  }
}//end of clearPressed
