//Drawing the walker letters of a poem 
//Press all the letter keys to see general idea


ArrayList<Walker> walkerList = new ArrayList<Walker>();
char letter;
void setup() {
  size(1000, 700);
  noStroke();
  background(255);
}

void draw() {
  textSize(12);
  for (Walker walker : walkerList) {
    walker.move();
    walker.display();
  }
}

void keyPressed() {
  if (key == 'a' || key =='A') {
    walkerList.add(new Walker(325, 125));
    walkerList.add(new Walker(825, 275));
    walkerList.add(new Walker(575, 375));
  }

  if (key == 'c' || key =='C') walkerList.add(new Walker(775, 575));

  if (key == 'e' || key =='E') {
    walkerList.add(new Walker(475, 125));
    walkerList.add(new Walker(575, 125));
    walkerList.add(new Walker(175, 275));
    walkerList.add(new Walker(475, 275));
    walkerList.add(new Walker(725, 575));
  }

  if (key == 'f' || key =='F') {
    walkerList.add(new Walker(225, 475));
    walkerList.add(new Walker(375, 475));
  }

  if (key == 'h' || key =='H') {
    walkerList.add(new Walker(425, 125));
    walkerList.add(new Walker(425, 275));
    walkerList.add(new Walker(675, 575));
  }

  if (key == 'i' || key =='I') {
    walkerList.add(new Walker(125, 125));
    walkerList.add(new Walker(25, 275));
    walkerList.add(new Walker(875, 275));
    walkerList.add(new Walker(425, 475));
  }

  if (key == 'l' || key =='L') {
    walkerList.add(new Walker(325, 475));
    walkerList.add(new Walker(475, 475));
    walkerList.add(new Walker(525, 475));
  }

  if (key == 'm' || key =='M') walkerList.add(new Walker(575, 275));

  if (key == 'n' || key =='N') {
    walkerList.add(new Walker(75, 275));
    walkerList.add(new Walker(225, 275));
    walkerList.add(new Walker(725, 275));
    walkerList.add(new Walker(925, 275));
  }

  if (key == 'o' || key =='O') {
    walkerList.add(new Walker(725, 125));
    walkerList.add(new Walker(625, 275));
    walkerList.add(new Walker(125, 475));
    walkerList.add(new Walker(575, 575));
  }

  if (key == 'p' || key =='P') {
    walkerList.add(new Walker(475, 575));
    walkerList.add(new Walker(625, 575));
  }

  if (key == 'r' || key =='R') {
    walkerList.add(new Walker(525, 125));
    walkerList.add(new Walker(525, 575));
  }

  if (key == 's' || key =='S') {
    walkerList.add(new Walker(325, 125));
    walkerList.add(new Walker(975, 275));
  }

  if (key == 't' || key =='T') {
    walkerList.add(new Walker(675, 125));
    walkerList.add(new Walker(275, 275));
    walkerList.add(new Walker(375, 275));
    walkerList.add(new Walker(775, 275));
    walkerList.add(new Walker(75, 475));
  }

  if (key == 'u' || key =='U') {
    walkerList.add(new Walker(675, 475));
    walkerList.add(new Walker(275, 275));
  }

  if (key == 'v' || key =='V') walkerList.add(new Walker(125, 275));

  if (key == 'w' || key =='W') walkerList.add(new Walker(225, 125));

  if (key == 'y' || key =='Y') walkerList.add(new Walker(825, 575));
}

class Walker {
  float x, y, xStep, yStep, siz;

  Walker(float x, float y) {
    this.x = x;
    this.y = y;
    this.siz = 1;
    this.xStep = this.siz * 5;
    this.yStep = this.siz * 5;
  }

  void display() {
    fill(0, 50);
    text(key, x,y);
    
    letter = key;

    
    //rect(x, y, random(siz), random(siz));
  }

  void move() {



    int rand = (int)random(4);
    switch (rand) {
    case 0:
      x-=xStep;
      break;
    case 1:
      x+=xStep;
      break;
    case 2:
      y-=yStep;
      break;
    case 3:
      y+=yStep;
      break;
    default:
      break;
    }
  }
}