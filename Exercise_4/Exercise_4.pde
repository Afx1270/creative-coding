PFont calibriBoldItalic;
void setup ()
{
  calibriBoldItalic = createFont("Calibri Italic", 10);
  textFont(calibriBoldItalic);
  size(600, 400);
  background(255);
}

void draw()
{
  stroke(55, 0, 134);
  fill(55, 0, 134, 5);
  circle(300, 200, 250);
  fill(255);
  circle(300, 200, 185);
  stroke(2, 7, 77);
  fill(2, 7, 77);
  rect(130, 180, 350, 50, 20);
  stroke(255);
  strokeWeight(10);
  fill(255);
  String name = "CANARY WHARF";
  println(name);
  text(name, 138, 222);
  textSize(50);
}
