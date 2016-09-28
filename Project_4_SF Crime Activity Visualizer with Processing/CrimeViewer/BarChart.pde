class BarChart extends Chart{
  
  int x,y;
  
  BarChart(){
  }
  
  BarChart(String[] Category){
    super(Category);
  }
  
  void drawBars(int start, int samples, int x, int y){
    this.start = start;
    this.samples = samples;
    this.x = x;
    this.y = y;
    
    setFreq(start, samples);
    
    for (int i = 0; i < categoryTag.length; i++){
      fill(colarray[i]);
      stroke(0);
      rect(x+i*28,y,26,-round(freq[i]/getTotalCount()*100)*10); //x,y,w,h
    }
    
    stroke(255);
    strokeWeight(2);
    line(x-10, y-350, x-10,y);
    strokeWeight(1);
    fill(255);
    textSize(14);
    line(x-15, y-350, x-5,y-350);
    text("35%",x-50,y-340);
    line(x-15, y-300, x-5,y-300);
    text("30%",x-50,y-290);
    line(x-15, y-250, x-5,y-250);
    text("25%",x-50,y-240);
    line(x-15, y-200, x-5,y-200);
    text("20%",x-50,y-190);
    line(x-15, y-150, x-5,y-150);
    text("15%",x-50,y-140);
    line(x-15, y-100, x-5,y-100);
    text("10%",x-50,y-90);
    line(x-15, y-50, x-5,y-50);
    text("5%",x-50,y-40);
    line(x-15, y-00, x+300,y-00);
  }//close drawBars
}