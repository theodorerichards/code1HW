PImage img;

void setup() {
  size(600, 372);
  img = loadImage("bust.jpg");
  noStroke();
}

void draw() {

  background(255);

  int widthStep = 4;
  int heightStep = 4;

  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      stroke(c);
      noFill();
      ellipse(i, j, 15, 15);
    }
  }
}