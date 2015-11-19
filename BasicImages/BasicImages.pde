PImage darude;

void setup() {
  darude = loadImage("darude.jpg");
  size(1024,512);
}

void draw() {
  image(darude, 0, 0);
}