PImage nick;
PImage nick2;

void setup() {
  size(714,536);
  imageMode(CENTER);
  nick = loadImage("nick.jpg");
  nick2 = loadImage("nick2.jpg");
}

void draw() {
  noStroke();
  background(nick);
  image(nick2, mouseX, mouseY);
}