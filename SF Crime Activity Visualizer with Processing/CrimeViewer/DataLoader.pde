class DataLoader{
  
  String filename;
  Table table;
  String[] X, Y, Category, Dates;
  
  float[] floatX, floatY;
  float maxX, maxY;
  float[] normX, normY;
  
  int beginYear, endYear;
  
  IntList validIndexes;
  int start;
  int stop;
  int samples;
  int[] years;
  
  DataLoader(){
  }
  
  DataLoader(String filename){
    this.table = loadTable(filename,"header");
    init();
  }
  
  void init(){
    this.X = table.getStringColumn("X");
    this.Y = table.getStringColumn("Y");
    this.Category = table.getStringColumn("Category");
    this.Dates = table.getStringColumn("Dates");
    
    this.floatX = new float[X.length];
    this.floatY = new float[Y.length];
    
    //Converts GPS coordinates in Strings to numerical float values
    for(int i = 0; i < X.length; i++){
      floatX[i] = float(X[i].substring(4));
      floatY[i] = float(Y[i].substring(2));
    }
    
    this.maxX = max(floatX);
    this.maxY = max(floatY);
    this.normX = new float[X.length];
    this.normY = new float[Y.length];
    
    //normalization of GPS coordinates in float type
    for(int i = 0; i < X.length; i++){
      normX[i] = floatX[i]/maxX;
      normY[i] = floatY[i]/maxY;
    }
  }
  
  float[] getNormX(){
    return normX;
  }
  
  float[] getNormY(){
    return normY;
  }
  
  String[] getCategoryData(){
    return Category;
  }
  
  String[] getDatesData(){
    return Dates;
  }
  
  void setRange(int beginYear, int endYear){
    this.beginYear = beginYear;
    this.endYear = endYear;
    
    this.validIndexes = new IntList();
    this.years = new int[endYear - beginYear + 1];
    
    for(int i = 0; i < years.length; i++){
      years[i] = beginYear+i;
    }
    
    for(int i = 0; i < Dates.length; i++){
      for(int j = 0; j < years.length; j++){
        if(Dates[i].substring(0,4).equals(str(years[j]))){
          validIndexes.append(i);
        }//close if
      }// close j for loop
    } //close i for loop
    
    this.start = validIndexes.min(); //the latest, the smaller the index
    this.stop = validIndexes.max(); //the farthest, the larger the index
    this.samples = validIndexes.size(); //number of cases in this range
  }
  
  int getStart(){
    return start;
  }
  
  int getSamples(){
    return samples;
  }
  
  int getBeginYear(){
    return beginYear;
  }
  
  int getEndYear(){
    return endYear;
  }
}