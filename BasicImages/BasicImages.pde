PImage darude;

void setup() {
  darude = loadImage("darude.jpg");
  size(2048, 1024);
  imageMode(CENTER);
}

void draw() {
  background(0);
  image(darude, mouseX, mouseY, darude.width/2, darude.height/2); //center mouse
}