Bungalow b;

void setup() {
  size(600, 600);
  bungalow = loadImage("bungalow.png");
  imageMode(CENTER);
  b = new Bungalow();
}

void draw() {
  background(255);
  b.display();
}

void mousePressed() {
  b.zoom();
}