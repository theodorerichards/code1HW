PImage bungalow;
int s = 250;

class Bungalow {
  float x;   //x position
  float y;   //y position

  Bungalow() {
    x = width/2;
    y = height/2-50;
    println("created a bungalow!");
  }

  void display() {
    noStroke();
    fill(100);
    image(bungalow, x, y, s, s);
  }

  void zoom() {
    s = s+50;
  }
}