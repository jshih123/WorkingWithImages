PImage darude;
float scale = 2;
int sz = 10;

void setup() {
  darude = loadImage("darude.jpg");
  size(1024, 512);
  imageMode(CENTER);
  
}

void draw() {
  noStroke();
  for (int i = 0; i < 30; i++){
  int x = int(random(width));
  int y = int(random(height));
  fill(darude.get(x,y));
  ellipse(x, y, sz, sz);
  }
}