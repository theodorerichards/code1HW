class Bungalow {
  float x;  //x position of Bungalow
  float y;  //y position of Bungalow
  float roofRain;  //measurement of rain
  float roofSun;  //measurement of sun
  float roofSnow;  //measurement of snow
  boolean raining;  //true if rain is hitting Bungalow roof
  boolean sunny;  //true if Bungalow roof detects excessive sun
  boolean snowing;  //true if snow is hitting Bungalow roof
  PImage stages;  //store all the stages of Bungalow
  int insideTemp;  //temperature inside Bungalow in F
  int outsideTemp;  //temperature outside Bungalow in F
  
  Bungalow() {
    //Bungalow constructor
  }
  
  void updateTemp() {
    //update ints insideTemp and outsideTemp
  }
  
  void updateWeather() {
    //update floats roofRain, roofSun, and roofSnow
  }
  
  void updateBungalow() {
    //update booleans raining, sunny, and snowing
  }
  
  void display() {
    //display Bungalow on screen
    //change Bungalow to correct stage based on ints(Temp), floats(Weather), and booleans(Bungalow)
  }
  
  void lock() {
    //lock all doors and windows
  }
  
  void unlock() {
    //unlock all doors and windows
  }
  
  void customDisplay() {
    //override display stage to custom stage
  }
  
  void alarm() {
    //set off alarm when lock is attempted to be broken
  }
  
  void lightsOn() {
    //turn designated lights on
  }
  
  void lightsOff() {
    //turn designated lights off
  }
}