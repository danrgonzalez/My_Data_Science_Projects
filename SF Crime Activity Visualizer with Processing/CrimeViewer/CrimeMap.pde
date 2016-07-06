class CrimeMap extends Chart{

  float[] normX;
  float[] normY;
  boolean zoneSelected = false;
  int Xcoor = 0;
  int Ycoor = 0;
  int Xsize = 1300;
  int Ysize = 700;
  int zoneID;
  
  CrimeMap(){
  }
  
  CrimeMap(String[] Category, float[] normX, float[] normY){
    super(Category);
    this.normX = normX;
    this.normY = normY;
  }
  
  void drawMap(int start, int samples){
    this.start = start;
    this.samples = samples;
    
    setFreq(start, samples);
    
    if (zoneSelected == true){
      color fillcol = color(0); //black
      for(int i = start; i < start+samples; i++){
        for(int j = 0; j < categoryTag.length; j++){
          if (Category[i].equals(categoryTag[j])){
            fillcol = colarray[j];
          }
          else{//do nothing
          }//close else
        }//close for j
        pushMatrix();
        translate(zoneIDX(zoneID),zoneIDY(zoneID)); //a greater x goes right, a greater y pushes down
        fill(fillcol,127); //rgb, alpha
        noStroke();
        if( (3200-normX[i]*2700 > Xcoor) && (3200-normX[i]*2700 < Xcoor+Xsize) && 
            (4900-normY[i]*4900 > Ycoor) && (4900-normY[i]*4900 < Ycoor+Ysize)){
          rect(-normX[i]*5400,-normY[i]*12000,2,2); //x,y,width,height //greater x pushes left, greater y pushes up
        }
        popMatrix();
      }//close for i
    }
    else{
      color fillcol = color(0); //black
      for(int i = start; i < start+samples; i++){
        for(int j = 0; j < categoryTag.length; j++){
          if (Category[i].equals(categoryTag[j])){
            fillcol = colarray[j];
          }
          else{//do nothing
          }//close else
        }//close for j
        pushMatrix();
        translate(3200,4900);
        fill(fillcol,127); //rgb, alpha
        noStroke();
          if( (3200-normX[i]*2700 > Xcoor) && (3200-normX[i]*2700 < Xcoor+Xsize) && 
              (4900-normY[i]*4900 > Ycoor) && (4900-normY[i]*4900 < Ycoor+Ysize)){
            rect(-normX[i]*2700,-normY[i]*4900,1,1); //x,y,width,height
          }
        popMatrix();
        }//close for i
    }
      
    //legend
    for(int i = 0; i < categoryTag.length; i++){
      textSize(14);
      fill(255);
      textAlign(RIGHT);
      text(categoryTag[i],180,i*18+120); //text,x,y
      textSize(16);
      textAlign(LEFT);
      text(round(freq[i]/getTotalCount()*100)+" %",255,i*18+125); //percentages
      fill(colarray[i]);
      rect(190,i*18+110, 50, 14); //x,y,width, height
    }
    
    //display Year
    textSize(48);
    fill(255); //white letters
    text(loader.getBeginYear(),60,70);
    textSize(14);
    text("Total number of cases: " + samples, 60, 90);
    
    if(zoneSelected != true){
      //labels
      fill(255);
      textSize(14);
      text("Golden Gate Park",560,315);
      text("Fisherman's Wharf",920,55);
      text("Presidio",700,175);
      text("The World Famous",1130,125);
      text("'Tenderloin'",1150,140);
      stroke(230);
      strokeWeight(2);
      line(1130,130,1050,210);//xy,xy, second pair is tenderloin
    }
  }
  
  void setColor(int i){
    if (colarray[i] == color(0)){
      colarray[i] = colarrayOriginal[i]; 
    }
    else{
      colarray[i] = color(0);
    }
  }
  
  color getColor(int i){
    return colarray[i];
  }
  
  void zoneSelect(boolean zoneSelected, int zoneID){
    this.zoneSelected = zoneSelected;
    this.zoneID = zoneID;
  }
  
  void setSelect(boolean zoneSelected){
    this.zoneSelected = zoneSelected;
  }
  
  void zoneOnly(int Xcoor, int Ycoor, int Xsize, int Ysize){
    this.Xcoor = Xcoor;
    this.Ycoor = Ycoor;
    this.Xsize = Xsize;
    this.Ysize = Ysize;
  }
  
  int zoneIDX(int zoneID){
    int zoneX;
    switch(zoneID+1){
      case 1: zoneX = 5900;
              break;
      case 2: zoneX = 5900;
              break;
      case 3: zoneX = 5850;
              break;
      case 4: zoneX = 5250;
              break;
      case 5: zoneX = 5250;
              break;
      case 6: zoneX = 5200;
              break;
      default: zoneX = 3200;
              break;
    }
    return zoneX;
  }
  
  int zoneIDY(int zoneID){
    int zoneY;
    switch(zoneID+1){
      case 1: zoneY = 11800;
              break;
      case 2: zoneY = 11400;
              break;
      case 3: zoneY = 11000;
              break;
      case 4: zoneY = 11950;
              break;
      case 5: zoneY = 11500;
              break;
      case 6: zoneY = 11000;
              break;
      default: zoneY = 4900;
              break;
    }
    return zoneY;
  }
}