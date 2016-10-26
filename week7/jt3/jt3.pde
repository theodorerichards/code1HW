PImage img;

void setup() {
  size(600,372);
  img = loadImage("bust.jpg");
}

void draw() {
  background(#ED8D94);
  for (int i = 0; i < width; i += 10) {
    for (int j = 0; j < height; j += 10) {
      color c = img.get(i, j);
      stroke(c);
      
      line(i,j,width/2,height/2);
      fill(c);
      ellipse(i+20,j+20, 5,5);
    }
}
}