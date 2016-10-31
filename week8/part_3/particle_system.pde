Particle p;
ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();
int counter;
void setup() {
  size(1400, 900);
   p = new Particle(mouseX,mouseY);
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
  systems.add(new ParticleSystem(mouseX,mouseY));
  } else {
  p.zoom();
  }
}