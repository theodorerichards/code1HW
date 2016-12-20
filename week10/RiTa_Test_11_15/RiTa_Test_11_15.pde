import rita.*;
RiString rs;
IntDict counts;
String[] nouns;

void setup() {

  RiString rs = new RiString("the man denies himself love and unity because he is afraid of his past");
  rs.analyze();
  rs.toLowerCase();

  //getPosTags(rs);
  println(rs.get(RiTa.POS));




  println(rs.get(RiTa.POS));
  println(rs.get(RiTa.STRESSES));
  println(rs.get(RiTa.SYLLABLES));
  println(rs.wordCount());
}

void draw() {
}