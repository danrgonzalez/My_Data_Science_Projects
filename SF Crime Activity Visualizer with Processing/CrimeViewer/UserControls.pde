void keyPressed() {
  if (keyCode == LEFT) {
    if(Year == 2003){
    }
    else{
      Year -= 1;
    }
    redraw();
  }
  else if(keyCode == RIGHT){
    Year += 1;
    redraw();
  }
  else if(keyCode == UP){
    pause = false;
    loop();
  }
}

void mousePressed() {
  if (pause == false){
    redraw();
    pause = true;
  }
  else if(pause == true){
    redraw();
  }
  
  for(int i = 0; i < 13; i++){
    yearButtons[i].setDefaultColor();
    if (yearButtons[i].getrectOver()) {
      println((2003+i)+" Button");
      Year = 2003+i;
      yearButtons[i].setbaseColor();
    }
  }
  
  for(int i = 0; i < 10; i++){
    if (catButtons[i].getrectOver()) {
      SFCrime.setColor(i);
    }
  }
  
  if (zone[0].getrectOver()) {
    SFCrime.zoneOnly(zone[0].getrectX(), zone[0].getrectY(), zone[0].getrectSizeX(), zone[0].getrectSizeY());
    SFCrime.zoneSelect(true, 0);
  }
  else if (zone[1].getrectOver()) {
    SFCrime.zoneOnly(zone[1].getrectX(), zone[1].getrectY(), zone[1].getrectSizeX(), zone[1].getrectSizeY());
    SFCrime.zoneSelect(true, 1);
  }
  else if (zone[2].getrectOver()) {
    SFCrime.zoneOnly(zone[2].getrectX(), zone[2].getrectY(), zone[2].getrectSizeX(), zone[2].getrectSizeY());
    SFCrime.zoneSelect(true, 2);
  }
  else if (zone[3].getrectOver()) {
    SFCrime.zoneOnly(zone[3].getrectX(), zone[3].getrectY(), zone[3].getrectSizeX(), zone[3].getrectSizeY());
    SFCrime.zoneSelect(true, 3);
  }
  else if (zone[4].getrectOver()) {
    SFCrime.zoneOnly(zone[4].getrectX(), zone[4].getrectY(), zone[4].getrectSizeX(), zone[4].getrectSizeY());
    SFCrime.zoneSelect(true, 4);
  }
  else if (zone[5].getrectOver()) {
    SFCrime.zoneOnly(zone[5].getrectX(), zone[5].getrectY(), zone[5].getrectSizeX(), zone[5].getrectSizeY());
    SFCrime.zoneSelect(true, 5);
  }
  else{
    SFCrime.zoneOnly(0, 0, 1300, 700);
    SFCrime.zoneSelect(false, 7);
  }
}