PImage mask;
PImage potato;

void setup(){
  mask = loadImage("mask.png");
  potato = loadImage("potato.jpg");
  size(1000,1000);
  potato.mask(mask);
}

void draw(){
  background(0);
  
  image(potato, mouseX, mouseY);
}