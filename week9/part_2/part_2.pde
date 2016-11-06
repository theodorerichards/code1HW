Particle p;
PVector v1;
ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();
int counter;
void setup() {
  size(1400, 900);
  v1 = new PVector(width/2, height/2);
   p = new Particle(v1.x,v1.y);
}

void draw() {
  background(0);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
} 

void mousePressed() {
  counter++;
  if (counter <= 1) {
  systems.add(new ParticleSystem(v1.x,v1.y));
  } else {
  p.zoom();
  }
}