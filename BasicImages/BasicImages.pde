PImage darude;
float scale = 2;
void setup() {
  darude = loadImage("darude.jpg");
  size(1024, 512);
  imageMode(CENTER);
  
}

void draw() {
  noStroke();
  fill(darude.get(mouseX, mouseY));
  ellipse(mouseX, mouseY, 10, 10);
}