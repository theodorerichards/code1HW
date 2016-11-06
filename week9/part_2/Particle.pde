
class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;
  float x2[] = new float[20];
  float amplitudeX;
  

  //constructor
  Particle(float _x, float _y) {
     amplitudeX = 200;
    x = _x;
    y = _y;
    for (int i = 0; i < x2.length; i++) {
    dx = sin(frameCount*0.1-i*amplitudeX);
    dy = cos(frameCount*0.1+i);
    }
    c = color(#FFE93E);
    s = 10;
    println("created a ball!");
    life = 60;
    
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
    
  }

  void update() {
    life++;
    
    zoom();
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < s/2 || x > width-s/2) {
     
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < s/2 || y > height-s/2) {
      
      y += dy;
    } else { 
      y += dy;
    }
  }
  
  void setSize(float siz) {
    
    s = siz;
  }
  
  void zoom() {
    s = map(life, 500/counter, 0, 1, 0);
    
   
  }
}