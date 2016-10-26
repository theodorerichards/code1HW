PImage img;


void setup() {
  size(600, 372);
  img = loadImage("bust.jpg");
  println(img.width + ", " + img.height);
  noStroke();
  
  rectMode(CENTER);
}

void draw() {
  background(255);

  //image(img, 0, 0);

  //rotateY(radians(mouseX));
  
  for (int i = 0; i < width; i += 1) {
    for (int j = 0; j < height; j += 1) {
      color c = img.get(i, j);
      fill(c);
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      float total = r + g + b;
      
      //float s = map(total, 400, 800, 0, 100);
      
      //fill(map(total,0,800,0,800));
      
      pushMatrix();
      translate(i, j);
      float d = dist(mouseX, mouseY, i, j);
      
      rotate(radians(i+j));
      //box(10);
      
      ellipse(mouseX,mouseY,1,1);
      //rect(0, 0, s, 10);
      popMatrix();
    }
  }
}