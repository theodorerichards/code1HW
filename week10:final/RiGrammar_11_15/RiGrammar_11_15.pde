import rita.*;
RiGrammar rg;
String result; 
void setup() {
  size(500, 500);
  textMode(CENTER);
  textAlign(CENTER);
  rg = new RiGrammar();
  rg.addRule("<start>", "The <N> <ADJ> <V> first.");
  rg.addRule("<ADJ>", "always | never");
  rg.addRule("<N>", "man | woman");
  rg.addRule("<V>", "disobeys | begs");
  result = rg.expand();
  rg.print();
}
void draw() {
  fill(0);
  textSize(30);
  text(result, width/2, height/2);
}