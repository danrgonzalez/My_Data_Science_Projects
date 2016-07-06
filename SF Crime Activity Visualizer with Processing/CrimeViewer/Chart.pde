abstract class Chart{

  String[] categoryTag = {"LARCENY/THEFT", "OTHER OFFENSES", "NON-CRIMINAL", "ASSAULT","VEHICLE THEFT",
                          "DRUG/NARCOTIC", "WARRANTS", "BURGLARY", "VANDALISM", "ROBBERY"};
  String[] Category;
  color[] colarray;
  color[] colarrayOriginal;
  int start;
  int samples;
  int[] freq;
  
  Chart(){
  }
  
  Chart(String[] Category){
    this.Category = Category;
    this.colarray = new color[categoryTag.length];
    this.colarrayOriginal = new color[categoryTag.length];
    colorInit();
    colorInit2();
  }
  
  void setFreq(int start, int samples){
    this.start = start;
    this.samples = samples;
    this.freq = new int[categoryTag.length];
    
    for(int i = start; i < start+samples; i++){
      for(int j = 0; j < categoryTag.length; j++){
        if (Category[i].equals(categoryTag[j])){
          freq[j] += 1;
        }
        else{//do nothing
        }//close else
      }//close for j
    }//close for i
  }
  
  void colorInit(){
    this.colarray[0] = color(255,0,0);
    this.colarray[1] = color(0,255,0);
    this.colarray[2] = color(0,0,255);
    this.colarray[3] = color(255,0,255);
    this.colarray[4] = color(0,255,255);
    this.colarray[5] = color(255,255,0);
    this.colarray[6] = color(255,127,0);
    this.colarray[7] = color(127,0,127);
    this.colarray[8] = color(255,0,127);
    this.colarray[9] = color(230);
  }
  
  void colorInit2(){
    this.colarrayOriginal[0] = color(255,0,0);
    this.colarrayOriginal[1] = color(0,255,0);
    this.colarrayOriginal[2] = color(0,0,255);
    this.colarrayOriginal[3] = color(255,0,255);
    this.colarrayOriginal[4] = color(0,255,255);
    this.colarrayOriginal[5] = color(255,255,0);
    this.colarrayOriginal[6] = color(255,127,0);
    this.colarrayOriginal[7] = color(127,0,127);
    this.colarrayOriginal[8] = color(255,0,127);
    this.colarrayOriginal[9] = color(230);
  }
  
  float getTotalCount(){
    float sum = 0;
    for(int i = 0; i < categoryTag.length; i++){
      sum += freq[i];
    }
    return sum;
  }
}