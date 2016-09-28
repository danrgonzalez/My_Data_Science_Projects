class PieChart extends Chart{
  
  int x,y, diameter;
  boolean label;
  
  PieChart(){
  }
  
  PieChart(String[] Category){
    super(Category);
  }
  
  void drawPie(int start, int samples,int x, int y, int diameter, boolean label){
    this.start = start;
    this.samples = samples;
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.label = label;
    
    setFreq(start, samples);
    
    float lastAngle = -PI/2;
    for (int i = 0; i < categoryTag.length; i++){
      fill(colarray[i]);
      stroke(0);
      arc(x,y,diameter,diameter,lastAngle,lastAngle+freq[i]/getTotalCount()*2*PI);
      lastAngle += freq[i]/getTotalCount()*2*PI;
    }
    
    if (label == true){
      textSize(16);
      fill(255);
      text(loader.getBeginYear()+" - "+loader.getEndYear(),x-50,y-70); //text,x,y
    }
  }//close drawPie
}