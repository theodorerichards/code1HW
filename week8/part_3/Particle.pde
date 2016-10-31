
class Particle {
  float x; 
  float y;
  float dx;
  float dy;
  color c;
  float s;
  float life;
  
  

  //constructor
  Particle(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-10, 10);
    dy = random(-10, 10);
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


  