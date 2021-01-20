void playButton() {
  //
  if  (mouseX>playX && mouseX<playX+playDiameter  && mouseY>playY && mouseY<playY+playDiameter) {
    stroke (buttonColor2);
    fill (buttonColor2);
    ellipse(playX, playY, playDiameter, playDiameter);
    //rect(915, 65, 85, 65);
    fill(jet);
    stroke(jet);
    triangle(950, 72, 950, 122, 980, 98);
    stroke (reset);
    fill(reset);
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    ellipse(playX, playY, playDiameter, playDiameter);
    //rect(915, 65, 85, 65);
    fill(jet);
    stroke(jet);
    triangle(950, 72, 950, 122, 980, 98);
    stroke (reset);
    fill(reset);
  }
  if (play)
    song[currentSong].play();
  else
    song[currentSong].pause();

  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++) {
  }
}//end of playButton

void playPressed() {
  //play
  if (mouseX>207 && mouseX<296 &&   mouseY>267 && mouseY<329 ) {
    if (playButton == true) {
      playButton = false;
    } else {
      playButton = true;
    }
    println(playButton);
  }
  //
  //
  if ( mouseX > 915 && mouseX < 915 + 85 &&
    mouseY > 65 && mouseY < 265 + 85) {
    play = !play;
  }
}//end of playPressed


void nextButton() {
  if  (mouseX>nextX && mouseX<nextX+nextDiameter  && mouseY>nextY && mouseY<nextY+nextDiameter) {
    stroke (buttonColor2);
    fill (buttonColor2);
    ellipse(nextX, nextY, nextDiameter, nextDiameter);
    //rect(875, 80, 35, 35);
    fill(jet);
    stroke(jet);
    triangle(900, 80, 900, 120, 883, 103);
    stroke (reset);
    fill(reset);
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    ellipse(nextX, nextY, nextDiameter, nextDiameter);
    //rect(875, 80, 35, 35);
    fill(jet);
    stroke(jet);
    triangle(900, 80, 900, 120, 883, 103);
    stroke (reset);
    fill(reset);
  }
}//end of nextButton

void nextPressed() {
  if ( mouseX > 875 && mouseX < 875 + 35 &&
    mouseY > 80 && mouseY < 275 + 35) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong +
      }
    }
    //
    if ( mouseX > 900 && mouseX < 900 + 35 &&
    mouseY > 80 && mouseY < 275 + 35) {
      if ( song[currentSong].isPlaying() ) {
        song[currentSong].pause();
      } else if ( song[currentSong].position() == song[currentSong].length() ) {
        song[currentSong].rewind();
        song[currentSong].play();
      } else {
        song[currentSong].play();
      }
    }
  }
}//end of nextpressed

void previousButton() {
  if  (mouseX>previousX && mouseX<previousX+previousDiameter  && mouseY>previousY && mouseY<previousY+previousDiameter) {
    stroke (buttonColor2);
    fill (buttonColor2);
    ellipse(previousX, previousY, previousDiameter, previousDiameter);
    rect(1005, 80, 35, 35);
    fill(jet);
    stroke(jet);
    triangle(1020, 80, 1020, 120, 1037, 103);
    stroke (reset);
    fill(reset);
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    ellipse(previousX, previousY, previousDiameter, previousDiameter);
    rect(1005, 80, 35, 35);
    fill(jet);
    stroke(jet);
    triangle(1020, 80, 1020, 120, 1037, 103);
    stroke (reset);
    fill(reset);
  }
}//end of previousButton


void previousPressed() {
  if ( mouseX > 1005 && mouseX < 1005 + 35 &&
    mouseY > 80 && mouseY < 80 + 35) {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong = currentSong + 1;
      }
    }
  }
}//end of previousPressed
