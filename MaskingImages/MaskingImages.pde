PImage mask, potato, bg;

void setup(){
  mask = loadImage("mask.png");
  potato = loadImage("potato.jpg");
  bg = loadImage("bg.jpg");
  size(1000,1000);
  potato.mask(mask);
}

void draw(){
  background(bg);
  
  image(potato, mouseX, mouseY);
}