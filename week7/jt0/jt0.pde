PImage img;

void setup() {
  size(600,372);
  img = loadImage("bust.jpg");
  noSmooth();
  stroke(0);
   
}

void draw() {
  background(0);
  
  
  int widthStep = 3;
  int heightStep = 3;
  
  for (int i = 0; i <= height; i += heightStep) {
    for (int j = 0; j <= width; j += widthStep) {
      
      //color c = img.get(j, i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*5)), i);
      color c = img.get(int(j + (sin(radians(frameCount*random(.5)+j+i))*100)), int(i + (sin(radians(frameCount*20+j+i))*50)));
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/4;

      float offset = map(brightness, #ED8D94, #ED8D93, 0, 0);
      

      stroke(map(brightness,0,#ED8D94,0, #ED8D94));
      rect(j, i+offset, 100, 100);
     
    }
  }
}