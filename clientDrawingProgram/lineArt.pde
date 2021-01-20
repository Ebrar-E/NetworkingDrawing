void lineArtInfo() {
  String lineArtText="Line Art";
  PFont artFont;
  artFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artFont, 40);
  //
  text(lineArtText, artX, artY, artWidth, artHeight);
  fill(reset);
}//end of lineArtInfo



void artButtons() {
  //1
  if (mouseX>artX && mouseX<artX+artWidth  && mouseY>artY && mouseY<artY+artHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  }
  //2
  if (mouseX>artX && mouseX<artX+artWidth  && mouseY>artY && mouseY<artY+artHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  }
}//end of artButton


void artDownInfo() {
  String artDownText="Art 1";
  PFont artDownFont;
  artDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artDownFont, 20);
  //
  text(artDownText, artDownX, artDownY, artDownWidth, artDownHeight);
  fill(reset);
}//end of caseDownInfo

void artDownInfo2() {
  String artDownText2="Art 2";
  PFont artDownFont;
  artDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artDownFont, 20);
  //
  text(artDownText2, artDownX2, artDownY2, artDownWidth2, artDownHeight2);
  fill(reset);
}//end of caseDownInfo

void artDownInfo3() {
  String artDownText3="Art 3";
  PFont artDownFont;
  artDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artDownFont, 20);
  //
  text(artDownText3, artDownX3, artDownY3, artDownWidth3, artDownHeight3);
  fill(reset);
}//end of caseDownInfo


void artDown() {
  //1
  if  (dropMenu3 == true && mouseX>artX && mouseX<artX+artWidth && mouseY>artY && mouseY<artDownY+artDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(artDownX, artDownY, artDownWidth, artDownHeight);
    stroke (reset);
    fill(reset);
    artDownInfo();
  } else if (dropMenu3 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(artDownX, artDownY, artDownWidth, artDownHeight);
    stroke (reset);
    fill(reset);
    artDownInfo();
  }
  if (art1 == true && art2 == false && art3 == false) image(pic1, picX, picY, picWidth, picHeight);
  art1 = false;
}//end of caseDown 

void artDown2() {
  //2
  if  (dropMenu3 == true && mouseX>artX && mouseX<artX+artWidth && mouseY>artY && mouseY<artDownY2+artDownHeight2) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(artDownX2, artDownY2, artDownWidth2, artDownHeight2);
    stroke (reset);
    fill(reset);
    artDownInfo2();
  } else if (dropMenu3 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(artDownX2, artDownY2, artDownWidth2, artDownHeight2);
    stroke (reset);
    fill(reset);
    artDownInfo2();
  }
  if (art1 == false && art2 == true && art3 == false) image(pic2, picX2, picY2, picWidth2, picHeight2);
  art2 = false;
}//end of caseDown2

void artDown3() {
  //2
  if  (dropMenu3 == true && mouseX>artX && mouseX<artX+artWidth && mouseY>artY && mouseY<artDownY3+artDownHeight3) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(artDownX3, artDownY3, artDownWidth3, artDownHeight3);
    stroke (reset);
    fill(reset);
    artDownInfo3();
    sound[1].play();
sound[1].rewind();
  } else if (dropMenu3 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(artDownX3, artDownY3, artDownWidth3, artDownHeight3);
    stroke (reset);
    fill(reset);
    artDownInfo3();
    sound[1].play();
sound[1].rewind();
  }
  if (art1 == false && art2 == false && art3 == true) image(pic3, picX3, picY3, picWidth3, picHeight3);
  art3 =  false;
}//end of caseDown2


void artPressed() {
  //1
  if (mouseX>artDownX && mouseX<artDownX+artDownWidth && mouseY>artDownY && mouseY<artDownY+artDownHeight) {
    art1 = true;
    art2 = false;
    art3 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    sound[1].play();
sound[1].rewind();
  }
  //2
  if (mouseX>artDownX2 && mouseX<artDownX2+artDownWidth2 && mouseY>artDownY2 && mouseY<artDownY2+artDownHeight2) {
    art1 = false;
    art2 = true;
    art3 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    sound[1].play();
sound[1].rewind();
  }
  //3
  if (mouseX>artDownX3 && mouseX<artDownX3+artDownWidth3 && mouseY>artDownY3 && mouseY<artDownY3+artDownHeight3) {
    art1 = false;
    art2 = false;
    art3 = true;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    sound[1].play();
sound[1].rewind();
  }
}//end of artPressed
