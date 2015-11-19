PImage darude;
float scale = 2;
float sz;

void setup() {
  darude = loadImage("darude.jpg");
  size(1024, 512);
  imageMode(CENTER);
  
}

void draw() {
  noStroke();
  sz = map(mouseY, 0, height, 1, 20); //size dependant on Y coordinate
  for (int i = 0; i < 30; i++){
  int x = int(random(width));
  int y = int(random(height));
  fill(darude.get(x,y));
  ellipse(x, y, sz, sz);
  }
}