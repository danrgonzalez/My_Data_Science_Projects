class Button{

  int rectX, rectY;  // Position of square button
  int rectSizeX, rectSizeY; // dimensions of rect
  color baseColor;
  color rectHighlight;
  boolean rectOver = false;
  int sizeX, sizeY;
  
  Button(){
  }
  
  Button(int rectX, int rectY, int rectSizeX, int rectSizeY, color baseColor, color rectHighligt){
    this.baseColor = baseColor; //black
    this.rectHighlight = rectHighligt; //shade
    this.rectX = rectX;
    this.rectY = rectY;
    this.rectSizeX = rectSizeX;
    this.rectSizeY = rectSizeY;
  }
  
  void displayZone(int i){
    if (rectOver) {
      fill(255);
      textSize(16);
      text("Zone "+i, rectX+(rectSizeX/4), rectY+(rectSizeY/2));
      fill(rectHighlight);
    } else {
      fill(baseColor);
    }
    //stroke(80, 80, 80);
    //strokeWeight(2);
    noStroke();
    rect(rectX, rectY, rectSizeX, rectSizeY); //square rect
  }
  
  void displayCat(){
    stroke(80, 80, 80);
    strokeWeight(2);
    noFill();
    rect(rectX, rectY, rectSizeX, rectSizeY); //square rect
  }
  
  void displayYears(int i, boolean match){
    if (rectOver) {
      fill(rectHighlight);
      textSize(12);
      text(2003+i,495+22*i,80);
    } else {
      fill(baseColor);
    }
    noStroke();
    rect(rectX, rectY, rectSizeX, rectSizeY); //square rect
    
    if (match){
      fill(color(255));
      textSize(12);
      text(2003+i,495+22*i,80);
    }
  }

  void update() {
    if (overRect(rectX, rectY, rectSizeX, rectSizeY)) {
      rectOver = true;
    } else {
      rectOver = false;
    }
  }
  
  boolean overRect(int x, int y, int sizeX, int sizeY)  {
    if (mouseX >= x && mouseX <= x+sizeX && 
        mouseY >= y && mouseY <= y+sizeY) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean getrectOver(){
    return rectOver;
  }
  
  void setbaseColor(){
    this.baseColor = color(120);
  }
  
  void setDefaultColor(){
    this.baseColor = color(50);
  }
  
  int getrectX(){
    return rectX;
  }
  
  int getrectY(){
    return rectY;
  }
  
  int getrectSizeX(){
    return rectSizeX;
  }
  
  int getrectSizeY(){
    return rectSizeY;
  }
}