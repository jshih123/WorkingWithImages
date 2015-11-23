PImage nick;
PImage nick2;

void setup() {
  size(714,536);
  imageMode(CENTER);
  nick = loadImage("nick.jpg");
  nick2 = loadImage("nick2.png");
}

void draw() {
  noStroke();
  background(nick);
  image(nick2, mouseX, mouseY);
  filter(INVERT);
  filter(POSTERIZE, 5);
  filter(DILATE);
}