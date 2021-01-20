void caseButtonInfo() {
  String caseButText="Pencil Case";
  PFont caseFont;
  caseFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(caseFont, 40);
  //
  text(caseButText, caseX, caseY, caseWidth, caseHeight);
  fill(reset);
}//end of caseButtonInfo





void caseButton() {
  if  (mouseX>caseX && mouseX<caseX+caseWidth  && mouseY>caseY && mouseY<caseY+caseHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  }
}//end of caseButton




void caseDownInfo() {
  String caseDownText="Pencil";
  PFont caseDownFont;
  caseDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(caseDownFont, 20);
  //
  text(caseDownText, caseDownX, caseDownY, caseDownWidth, caseDownHeight);
  fill(reset);
}//end of caseDownInfo


void caseDownInfo2() {
  String caseDownText2="Eraser";
  PFont caseDownFont;
  caseDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(caseDownFont, 20);
  //
  text(caseDownText2, caseDownX2, caseDownY2, caseDownWidth2, caseDownHeight2);
  fill(reset);
}//end of caseDownInfo



void caseDown() {
  if  (dropMenu1 == true && mouseX>caseX && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseDownY+caseDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(caseDownX, caseDownY, caseDownWidth, caseDownHeight);
    stroke (reset);
    fill(reset);
    caseDownInfo();
    sound[1].play();
sound[1].rewind();
  } else if (dropMenu1 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(caseDownX, caseDownY, caseDownWidth, caseDownHeight);
    stroke (reset);
    fill(reset);
    caseDownInfo();
    sound[1].play();
sound[1].rewind();
  }
  //if (dropMenu1==true && dropMenu4==false);
}//end of caseDown 


void caseDown2() {
  if  (dropMenu1 == true && mouseX>caseX && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseDownY2+caseDownHeight2) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(caseDownX2, caseDownY2, caseDownWidth2, caseDownHeight2);
    stroke (reset);
    fill(reset);
    caseDownInfo2();
  } else if (dropMenu1 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(caseDownX2, caseDownY2, caseDownWidth2, caseDownHeight2);
    stroke (reset);
    fill(reset);
    caseDownInfo2();
  }
  //if (dropMenu1==false && dropMenu4==true);
}//end of caseDown 
