void quitButInfo() {
  String quitButText="X";
  PFont quitFont;
  quitFont = createFont ("Gabriola", 95);
  //
  fill(textColor);
  textAlign(CENTER, TOP);
  textFont(quitFont, 30);
  //
  text(quitButText, quitButX, quitButY, quitButWidth, quitButHeight);
  fill(reset);
}//end of quitButInfo



void quitButton() {
  if (mouseX>quitButX && mouseX<quitButX+quitButWidth  && mouseY>quitButY && mouseY<quitButY+quitButHeight) {
    stroke (quitButColor);
    fill (quitButColor);
    rect(quitButX, quitButY, quitButWidth, quitButHeight);
    stroke (reset);
    fill(reset);
    quitButInfo();
  } else {
    strokeWeight(4);
    stroke (quitButHoverOver);
    fill (quitButHoverOver);
    rect(quitButX, quitButY, quitButWidth, quitButHeight);
    stroke (reset);
    fill(reset);
    quitButInfo();
  }
}//end of quitButton
