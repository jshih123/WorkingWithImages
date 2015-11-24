PImage canada;
PImage snoop;

void setup(){
  canada = loadImage("canada.jpg");
  snoop = loadImage("snoop.jpg");
  size(500,500);
  canada.blend(snoop,0,0,canada.width, canada.height, 0, 0, snoop.width, snoop.height, SCREEN);
}

void draw() {
  image(canada, 0, 0);
}