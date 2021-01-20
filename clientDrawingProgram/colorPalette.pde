void paletteButtonInfo() {
  String paletteButText="Color Palette";
  PFont paletteFont;
  paletteFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(paletteFont, 40);
  //
  text(paletteButText, paletteX, paletteY, paletteWidth, paletteHeight);
  fill(reset);
}//end of paletteButtonInfo



void paletteButton() {
  if (mouseX>paletteX && mouseX<paletteX+paletteWidth  && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
    colorDown();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
    colorDown();
  }
}//end of paletteButton




void colorDown() {
  if  (dropMenu2 == true && mouseX>paletteX && mouseX<paletteX+paletteWidth && mouseY>paletteY && mouseY<colorDownY+colorDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
    colorBoxes();
  } else if (dropMenu2 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
    colorBoxes();
  }
}//end of colorDown


void colorBoxes() {
  //1
  fill(yelCrayola);
  rect(colorB1X, colorB1Y, colorBWidth, colorBHeight);
  //2
  fill(vegasG);
  rect(colorB2X, colorB2Y, colorBWidth, colorBHeight);
  //3
  fill(sage);
  rect(colorB3X, colorB3Y, colorBWidth, colorBHeight);
  //4
  fill(cadBlue);
  rect(colorB4X, colorB4Y, colorBWidth, colorBHeight);
  //
  //5
  fill(mMint);
  rect(colorB5X, colorB5Y, colorBWidth, colorBHeight);
  //6
  fill(celandon);
  rect(colorB6X, colorB6Y, colorBWidth, colorBHeight);
  //7
  fill(fgreen);
  rect(colorB7X, colorB7Y, colorBWidth, colorBHeight);
  //8
  fill(dgreen);
  rect(colorB8X, colorB8Y, colorBWidth, colorBHeight);
  //
  //9
  fill(ashG);
  rect(colorB9X, colorB9Y, colorBWidth, colorBHeight);
  //10
  fill(grullo);
  rect(colorB10X, colorB10Y, colorBWidth, colorBHeight);
  //11
  fill(lgray);
  rect(colorB11X, colorB11Y, colorBWidth, colorBHeight);
  //12
  fill(jet);
  rect(colorB12X, colorB12Y, colorBWidth, colorBHeight);
  fill(reset);
  //
  //
}//end of colorBDraw


void inkPopulation() {
  //1
  if (yelCrayolaInk == true) {
    ink = yelCrayola;
  }
  //2
  if (vegasGInk == true) {
    ink = vegasG;
  }
  //3
  if (sageInk == true) {
    ink = sage;
  }
  //4
  if (cadBlueInk == true) {
    ink = cadBlue;
  }
  //5
  if (mMintInk == true) {
    ink = mMint;
  }
  //6
  if (celandonInk == true) {
    ink = celandon;
  }
  //7
  if (fgreenInk == true) {
    ink = fgreen;
  }
  //8
  if (dgreenInk == true) {
    ink = dgreen;
  }
  //9
  if (ashGlInk == true) {
    ink = ashG;
  }
  //10
  if (grulloInk == true) {
    ink = grullo;
  }
  //11
  if (lgrayInk == true) {
    ink = lgray;
  }
  //12
  if (jetInk == true) {
    ink = jet;
  }
  //pencil
  if (pencilInk == true) {
    ink = jet;
  }
  //eraser
  if (resetInk == true) {
    ink = reset;
  }
}//end of inkPopulation


void colorBPressed() {
  if ( mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    println("drawing surface");
    if (ciz == false) {
      ciz = true;
    } else {
      ciz = false;
    }
  }
  //
  //1
  if ( mouseX>colorB1X  && mouseX<colorB1X+colorBWidth  && mouseY>colorB1Y && mouseY<colorB1Y+colorBHeight) {
    yelCrayolaInk=true;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //2
  if ( mouseX>colorB2X  && mouseX<colorB2X+colorBWidth  && mouseY>colorB2Y && mouseY<colorB2Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=true;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //3
  if ( mouseX>colorB3X  && mouseX<colorB3X+colorBWidth  && mouseY>colorB3Y && mouseY<colorB3Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=true;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //4
  if ( mouseX>colorB4X  && mouseX<colorB4X+colorBWidth  && mouseY>colorB4Y && mouseY<colorB4Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=true;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //5
  if ( mouseX>colorB5X  && mouseX<colorB5X+colorBWidth  && mouseY>colorB5Y && mouseY<colorB5Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=true;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //6
  if ( mouseX>colorB6X  && mouseX<colorB6X+colorBWidth  && mouseY>colorB6Y && mouseY<colorB6Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=true;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //7
  if ( mouseX>colorB7X  && mouseX<colorB7X+colorBWidth  && mouseY>colorB7Y && mouseY<colorB7Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=true;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //8
  if ( mouseX>colorB8X  && mouseX<colorB8X+colorBWidth  && mouseY>colorB8Y && mouseY<colorB8Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=true;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //9
  if ( mouseX>colorB9X  && mouseX<colorB9X+colorBWidth  && mouseY>colorB9Y && mouseY<colorB9Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=true;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //10
  if ( mouseX>colorB10X  && mouseX<colorB10X+colorBWidth  && mouseY>colorB10Y && mouseY<colorB10Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=true;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //11
  if ( mouseX>colorB11X  && mouseX<colorB11X+colorBWidth  && mouseY>colorB11Y && mouseY<colorB11Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=true;
    jetInk=false;
    pencilInk=false;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //12
  if ( mouseX>colorB12X  && mouseX<colorB12X+colorBWidth  && mouseY>colorB12Y && mouseY<colorB12Y+colorBHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=true;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //pencil
  if ( mouseX>caseDownX  && mouseX<caseDownX+caseDownWidth  && mouseY>caseDownY && mouseY<caseDownY+caseDownHeight) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=true;
    resetInk=false;
    sound[1].play();
sound[1].rewind();
  }
  //eraser
  if ( mouseX>caseDownX2  && mouseX<caseDownX2+caseDownWidth2  && mouseY>caseDownY2 && mouseY<caseDownY2+caseDownHeight2) {
    yelCrayolaInk=false;
    vegasGInk=false;
    sageInk=false;
    cadBlueInk=false;
    mMintInk=false;
    celandonInk=false;
    fgreenInk=false;
    dgreenInk=false;
    ashGlInk=false;
    grulloInk=false;
    lgrayInk=false;
    jetInk=false;
    pencilInk=false;
    resetInk=true;
    sound[1].play();
sound[1].rewind();
  }
  //
}//end of colorBPressed
