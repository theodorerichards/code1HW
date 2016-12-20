import rita.*;
RiString rs;
IntDict counts;
String[] nouns;

void setup() {

  RiString rs = new RiString("Of Mans First Disobedience, and the Fruit Of that Forbidden Tree, whose mortal tast Brought Death into the World");
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