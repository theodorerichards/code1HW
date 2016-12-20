import rita.*;


IntDict counts;


void setup() {
  fullScreen();
  background(0);
  counts = new IntDict();
  String[] lines = loadStrings("her.txt");
  String allwords = join(lines, "\n");
  String[] tokens = splitTokens(allwords, "\n ,;.?!\"");
  //printArray(tokens);
  for (int i = 0; i<tokens.length; i++) {
    String word = tokens[i];
    if (counts.hasKey(word)) {
      counts.increment(word);
    } else {
      counts.set(word, 1);
    }
  }
  println(counts);
}

void draw() {
  String[] keys = counts.keyArray();
  for (String k : keys) {
    int count = counts.get(k);
    textSize(count/3);
    float x = random(width);
    float y = random(height);
    text(k, x, y);
    noLoop();
  }
}