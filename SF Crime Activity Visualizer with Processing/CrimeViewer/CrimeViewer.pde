//Available Dates: 01/2003 - 05/2015
String filename = "train.csv";
int Year = 2003;
int Month = 1;
boolean pause = false;
boolean piecharts = false;

DataLoader loader;
CrimeMap SFCrime;
BarChart barChart;
PieChart pieChart;
PieChart pieChart2;
Button[] yearButtons = new Button[13];
Button[] catButtons = new Button[10];
Button[] zone = new Button[7];

void setup(){
  size(1300,700);
  
  loader = new DataLoader(filename);
  SFCrime = new CrimeMap(loader.getCategoryData(),loader.getNormX(),loader.getNormY()); //(Data, X, Y)
  barChart = new BarChart(loader.getCategoryData());
  pieChart = new PieChart(loader.getCategoryData());
  pieChart2 = new PieChart(loader.getCategoryData());
  zone[0] = new Button(490,175,350,150,color(0,0,0,255), color(80, 80, 80, 127));
  zone[1] = new Button(500,325,350,150,color(0,0,0,255), color(80, 80, 80, 127));
  zone[2] = new Button(520,475,350,200,color(0,0,0,255), color(80, 80, 80, 127));
  zone[3] = new Button(840,60,350,200,color(0,0,0,255), color(80, 80, 80, 127));
  zone[4] = new Button(840,260,350,200,color(0,0,0,255), color(80, 80, 80, 127));
  zone[5] = new Button(850,460,420,225,color(0,0,0,255), color(80, 80, 80, 127));
  
  //initializing year selection buttons
  for(int i = 0; i < 13; i++){ //buttons for all years
    yearButtons[i] = new Button(500+22*i, 30, 20, 30, color(50), color(80)); // x, y, sizeX, sizeY, baseColor
  }
  //initializing category selection button
  for(int i = 0; i < 10; i++){ //loops for all CATEGORIES
    catButtons[i] = new Button(190,i*18+110, 50, 14, SFCrime.getColor(i), color(80)); // x, y, sizeX, sizeY, baseColor
  }
  
  frameRate(10);
}

void draw(){
  background(0); //black background refresh
  
  for(int i = 0; i < 6; i++){ //loops for all zones
    zone[i].update();
    zone[i].displayZone(i+1);
  }
  
  for(int i = 0; i < 10; i++){ //loops for all CATEGORIES
    catButtons[i].update();
    catButtons[i].displayCat();
  }
  
  if (piecharts == false){
    for(int i = 0; i < 13; i++){ //loops for all YEARS
      yearButtons[i].update();
      if (Year == 2003+i){ //display year
        yearButtons[i].displayYears(i, true);
      }
      else{ //do not display year
        yearButtons[i].displayYears(i, false);
      }
    }
  }

  loader.setRange(Year, Year);
  SFCrime.drawMap(loader.getStart(),loader.getSamples());
  barChart.drawBars(loader.getStart(),loader.getSamples(),100,650);
  pieChart.drawPie(loader.getStart(),loader.getSamples(),400,200,150,false);
  
  if(pause == false){
    Year += 1;
  }
  if(Year == 2016){ //reset loop
    Year = 2003;
  }
}

/*  if (piecharts == true){ //display 3 pie charts for 3 year ranges //goes in draw
    loader.setRange(2003, 2006);
    pieChart2.drawPie(loader.getStart(),loader.getSamples(),480,150,120,true); //start,samples,x,y,diam,label
    
    loader.setRange(2007, 2011);
    pieChart2.drawPie(loader.getStart(),loader.getSamples(),630,150,120,true);
    
    loader.setRange(2012, 2015);
    pieChart2.drawPie(loader.getStart(),loader.getSamples(),780,150,120,true);
  }*/


  /*if(Year == 2015 && Month == 5){
    Year = 2003;
    Month = 1;
  }*/

  /*if(click == false){
    if (Month != 12){
      Month += 1;
    }
    else{
      Year += 1;
      Month = 1;
    }
  }
  println(Month, Year);*/